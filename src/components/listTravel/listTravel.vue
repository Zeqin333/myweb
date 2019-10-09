<template>
  <div id="label">
    <ul  class="list clearfix">
      <li  class="item" v-for="(item,index) in travelNodes" :key="index">
        <div @click="goto(index,item)" class="bigbox">
          <div class="img">
            <img class="travelImg" v-lazy="'http://139.196.72.67'+item.article_img" alt="">
          </div>
          <div class="title clearfix box-sizing">
            <span class="address">{{item.area}}</span>
            <div class="at">
              <div class="author">旅友：{{item.author || '旅游爱好者'}}</div>
              <div class="time">{{item.time}}</div>
            </div>
          </div>
          <p class="money">{{item.money}}元</p>
          <p class="desc no-wrap6" v-html="item.article"></p>
          <p class="more">more > ></p>
        </div>
        <ul ref="listR" class="iconList">
          <li ref="icon" class="iconItem" v-for="(icon,iconindex) in labels" :key ="iconindex">
            <i @click="addNum(index,item,iconindex,$event)" :class="[icon.icon]"></i>
            <span class="num">{{iconindex ===0? item.look : (iconindex === 1 ? item.praise : item.flower)}}</span>
          </li>
        </ul>
      </li>
    </ul>
  </div>
</template>

<script type="text/ecmascript-6">
  import {check,addLook} from 'common/js/dom'
  import {mapMutations} from 'vuex'
  export default {
    name: 'label',
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
    props: {
      travelNodes: {
        type: Array,
        default: ()=>{}
      },
      path: {
        type: String,
        default: ''
      }
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
          className: 'active'
        }
        check(params)
      },
      ...mapMutations({
        setId: 'SET_ID'
      })
    },
  }
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
@import '../../common/stylus/mixin'
.list
  min-width $min-width
  .item
    width 310px
    background $color-text
    margin 30px
    padding-bottom 30px
    display inline-block
    animate(.3s,-20px,1.1)
    overflow hidden
    .bigbox
      .img
        width 100%
        height 200px
        overflow hidden
        .travelImg
          width 100%
          height 100%
          cursor pointer
          transition-duration .7s
      .title
        color $color-text-d
        padding 20px
        .address
          font-size $font-size-large-x
          text-align left
          float left
          cursor pointer
        .at 
          float right
          .author,.time
            font-size $font-size-small
            text-align left
          .author
            margin-bottom 5px
      .money 
        text-align left 
        color $color-theme-d
        padding-left 20px
        font-size $font-size-large-x
        margin-bottom 20px
      .desc
        font-size $font-size-medium
        color $color-text-d
        padding 0 20px
        text-align justify
        letter-spacing 2px
        line-height 20px
        text-indent 2em
        cursor pointer
        height 120px
        overflow hidden
      .more
        text-align right
        font-size $font-size-medium
        color $color-text-d
        margin-right 20px
        cursor pointer
    .iconList
      padding 30px 0 10px 0
      .iconItem
        margin-right 30px
        color yellow
        display inline-block
        cursor pointer
        simpleScale()
        i
          font-size $font-size-large-xl
          color $color-theme-d
          margin-right 6px
        .num
          font-size $font-size-large
          color $color-text-l
</style>
