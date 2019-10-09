<template>
  <div id="travellers">
    <ul class="list">
      <li @click="goto(one.datas[0].user_id)" class="item" v-for="(one,index) in datas[activeIndex]" :key="index">
        <div class="top">
          <div class="img">
            <img v-lazy="one.datas[0].authorImg?('http://139.196.72.67'+one.datas[0].authorImg) :'http://139.196.72.67/api/public/static/image/defaultAuthorImg.jpg'" alt="" class="left">
          </div>
          <div class="right">
            <p class="name">{{one.datas[0].author ||'旅游爱好者'}}</p>
            <p class="address">现居地：{{one.datas[0].city || '武汉'}}</p>
            <p class="concern">我关注<span class="concern1">{{one.concern}}</span>关注我<span class="concern2">{{one.beconcern}}</span></p>
            <p class="num">发表<span class="count">{{one.datas[0].num}}</span>篇攻略</p>
          </div>
        </div>
        <div class="bottom" :class="{'content':one.datas[0].resume.length>0}">{{one.datas[0].resume}}</div>
      </li>
    </ul>
  </div>
</template>

<script type="text/ecmascript-6">
import {findTravellers,findT} from 'api/traveller'
import {mapMutations} from 'vuex'
export default {
  name: 'travellers',
  props: {
    activeIndex: {
      type: Number,
      default: 0
    }
  },
  data() {
    return {
      datas: [],
      order : ''
    }
  },
  created() {
    this.init()
  },
  methods: {
    init(){
      this._getTravellers()
    },
    _getTravellers(){
        findTravellers().then((res)=>{
          if(res.data.code === 0){
            this.datas.push(res.data.datas)
            findT().then((res)=>{
              if(res.data.code === 0){
                this.datas.push(res.data.datas2)
              }
            })
          }
        })
    },
    goto(id) {
      this.$router.push({
        path: `/center/${id}`  
      })
      this.setAuthorId(id)
      window.localStorage.setItem('author_id',id)
    },
    ...mapMutations({
      setAuthorId: 'SET_AUTHOR_ID'
    })
  },
  watch:{
    '$route' (to, from) {
      // 对路由变化作出响应...
      this.init()
    }
  }
}
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
@import '../../common/stylus/mixin'
#travellers
  margin-bottom 100px 
  margin-top -40px
  .list
    font-size $font-size-medium-x
    color $color-text-d
    width 1240px 
    margin 0 auto
    letter-spacing 2px
    .item 
      display inline-block
      width 580px 
      padding 20px 
      margin 20px
      background $color-text
      border-radius 8px
      box-sizing border-box
      line-height 20px
      transition-duration .3s
      vertical-align top 
      &:hover
        transform translateY(-10px) scale(1.1)
        .top
          .img
            img
              transform scale(1.3)
      .top
        width 600px
        .img,.right 
          display inline-block 
          vertical-align top
        .img 
          width 230px
          height 160px
          border-radius 8px 
          overflow hidden
          img 
            width 100% 
            height 100% 
            transition-duration .3s
        .right 
          padding-left 20px
          width 300px
          .name
            font-size $font-size-large
            color $color-theme-d
            letter-spacing 3px
            margin-bottom 10px
          .address 
            font-size $font-size-small
            margin-bottom 10px
          .concern
            margin-bottom 10px
            .concern1,.concern2
              margin-right 20px
              margin-left 5px
              color $color-theme-d 
              font-size $font-size-large
          .num
            .count 
              color $color-theme-d 
              font-size $font-size-large
              padding 0 5px
      .bottom 
        margin-top 20px
        text-indent 2em
        line-height 20px
        // background $color-highlight-background
        &.content
          padding 10px
</style> 
