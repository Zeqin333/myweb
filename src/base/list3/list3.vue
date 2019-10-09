<template>
  <div id="list3">
    <ul class="list">
      <li  class="item box-sizing" v-for="(item,index) in travelNode" :key="index">
        <div class="left">
          <img @click="goto(index,item)" class="travelImg" v-lazy="'http://139.196.72.67'+item.article_img" alt="">
        </div>
        <div class="right box-sizing">
          <h2 @click="goto(index,item)" class="title">{{item.title}}
            <p class="author">{{item.author || '旅游爱好者'}}</p>
            <p class="time">{{item.time}}</p>
          </h2>
          <p @click="goto(index,item)" class="desc no-wrap5" v-html="item.article"></p>
          <div id="iconList">
            <ul ref="listR" class="icon-list">
              <li ref="icon" class="icon-item" v-for="(mlabel,iconindex) in labels">
                <i @click="addNum(index,item,iconindex,$event)" class="icon" :class="mlabel.icon"></i>
                <span class="desc">{{iconindex === 0? item.look:iconindex ===1 ? item.praise : item.flower}}</span>
              </li>
            </ul>
          </div>
        </div>
      </li>
    </ul>
  </div>
</template>

<script type="text/ecmascript-6">
  import {check,addLook} from 'common/js/dom'
  import {mapMutations,mapGetters} from 'vuex'
  export default {
    name: 'list3',
    props: {
      travelNode: {
        type: Array,
        default:()=>[]
      }
    },
    data() {
      return {
        labels: [{
            icon: 'icon-liulan'
          },
          {
            icon: 'icon-dianzan'
          },
          {
            icon: 'icon-hua1'
          }
        ]
      }
    },
    computed: {
      ...mapGetters([
        'user_id'
      ])
    },
    methods: {
      goto(index,item) {
        //增加浏览量
        var params = {
          target: this.$refs.listR[index],
          id:item.id
        }
        addLook(params)
        //跳转
        this.$router.push({
          path: `/${item.id}`
        })
        this.setId(item.id)
        window.localStorage.setItem('id',item.id)
      },
      addNum(index,item,iconindex,$event) {
        var params = {
          $event: $event,
          id: item.id,
          i_index: iconindex,
          className: 'active',
          userId: this.user_id
        }
        check(params)
      },
      ...mapMutations({
        setId: 'SET_ID'
      })
    }
  }
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
@import '../../common/stylus/mixin'
#list3
  .list
    .item
      width 1000px
      margin 0 auto 40px auto
      height 290px
      padding 20px
      background #fff
      animate(.3s,-10px,1.1)
      .left,.right 
        vertical-align top
      .left
        width 350px
        height 250px
        display inline-block
        border-radius 8px
        overflow hidden
        .travelImg
          width 100%
          height 100%
          cursor pointer
          transition-duration .3s
      .right 
        display inline-block
        width 600px
        height 250px
        overflow hidden
        padding 0 30px 
        letter-spacing 2px
        .title
          font-size $font-size-large-x
          color $color-text-d
          position relative
          cursor pointer
          .author
            font-size $font-size-medium
            color $color-theme-d
            margin-top 15px
            cursor default
          .time
            position absolute
            right 30px
            top 20px
            color $color-text-ddd
            font-size $font-size-small
        .desc
          color $color-text-ddd
          font-size $font-size-medium!important
          text-align justify
          line-height 22px
          text-indent 2em
          height 106px
          margin-top 20px
          letter-spacing 2px
          cursor pointer
          p
            font-size $font-size-medium!important
            span 
              font-size $font-size-medium!important
        #iconList 
          text-align right
          margin-top 30px
          .icon-list
            .icon-item
              font-family 'Microsoft Yahei'
              cursor pointer
              display inline-block
              margin-left 34px
              .icon,.desc
                color $color-theme-d
                font-size $font-size-large-xl!important
              .icon
                margin-right 10px

</style>
