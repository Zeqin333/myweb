<template>
  <div id="active">
    <s-title :whiteColor="true" class="title" :titleName="titleName"></s-title>
    <div class="slider-wrapper" ref="sliderWrapper">
      <slider v-if="kk.length>0" :showDot="false" ref="sliderContent" class="slider">
        <div @click="goto(item)" class="slide-item" v-for="(item,index) in kk" :key="index">
          <h1 class="title">{{item.title}}</h1>
          <p class="desc no-wrap2">{{item.resume}}</p>
          <input class="join" type="button" value="参加活动">
        </div>
      </slider>
      <i @click="preSlider" class="icon-zuo"></i>
      <i @click="nextSlider" class="icon-you"></i>
    </div>
  </div>
</template>

<script type="text/ecmascript-6">
  import Slider from 'base/slider/slider'
  import sTitle from 'base/s-title/s-title'
  import {getSlider} from 'api/active'
  export default {
    name: 'active',
    data() {
      return {
        titleName: '最新活动',
        kk: []
      }
    },
    props: {
      path: {
        type: String,
        default: ''
      }
    },
    created(){
      this.init()
    },
    methods: {
      goto(item) {
        this.$router.push({
          path: `/findCompanion/${item.id}`
        })
      },
      preSlider() {
        this.$refs.sliderContent.prev()
      },
      nextSlider() {
        this.$refs.sliderContent.next()
      },
      _getSlider(){
        getSlider().then((res)=>{
          if(res.data.code === 0){
            this.kk = res.data.datas
          }
        })
      },
      init(){
        this.kk =[]
        this._getSlider()
      }
    },
    watch: {
    '$route' (to, from) {
      // 对路由变化作出响应...
        this.init()
      }
    },
    components: {
      Slider,
      sTitle
    }
  }
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
#active
  background $color-theme-d
  height 430px
  .title
    color $color-text
  .slider-wrapper
    position relative 
    left 0
    top 0
    margin-top 30px
    text-align center
    .icon-zuo,.icon-you
      font-size 100px
      color $color-text
      position absolute
      top 50%
      margin-top -50px
      cursor pointer
    .icon-zuo
      left 130px
    .icon-you
      right 130px
    .slider
      width 800px
      margin 0 auto
      overflow hidden
      .slide-item
        color $color-text
        white-space nowrap
        .title
          font-size $font-size-large-xl
          line-height 80px
          cursor pointer
        .desc
          font-size $font-size-medium-x
          text-align center
          line-height 40px
          cursor pointer
          width 700px
          height 80px 
          margin 0 auto
          white-space normal
          word-wrap break-word
          word-break break-all
          position relative 
          left 0 
          top 0
          &::after 
            content '……'
            width 50px 
            height 40px 
            background $color-theme-d
            position absolute 
            bottom 0 
            right 0
        .join
          padding 7px 15px
          background $color-theme
          color $color-text-d
          font-family $font-theme
          font-size $font-size-large
          border-radius 5px
          letter-spacing 2px
          margin-top 50px
          outline none
          cursor pointer
</style>
