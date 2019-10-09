<template>
  <div id="destination">
    <div>
      <div class="slider-wrapper" ref="sliderWrapper">
        <div class="search">
          <div class="content">
            <div class="searchBox">
              <input placeholder="搜索热门目的地……" class="input" type="text" name="" id="">
              <i class="icon-icon-test"></i>
            </div>
            <p class="hotLabel">
              <span class="hot">热门搜索:</span>
              <ul class="list">
                <li @click="goto(item)" class="item" v-for="(item,index) in hotLabels" :key="index">{{item.area}}</li>
              </ul>
            </p>
          </div>
        </div>
        <div v-if="sliders.length" class="sliders" ref="sliderWrapper">
          <slider class="sliderContent" :dotShow="true">
            <div @click="goto(slide)" class="slider-item"  v-for="(slide,index) in sliders" :key="index">
              <a href="javascript:;">
                <img class="needsclick" v-lazy="'http://139.196.72.67'+slide.article_img">
              </a>
            </div>
          </slider>
        </div>
      </div>
      <div id="hotDesc">
        <m-title :titleName="title[0]" :iconType="2" class="title"></m-title>
        <div v-if="hotDest.length" class="hot-slider">
          <d-slider :hotDest="hotDest"></d-slider>
        </div>
      </div>
      <select-theme></select-theme>
      <season-recommend :datas="seasonRecommend" :title="title[1]"></season-recommend>
      <areas :address="address" :areas="areas" :title="title[2]"></areas>
    </div>
    <keep-alive>
      <router-view></router-view>
    </keep-alive>
  </div>
</template>

<script type="text/ecmascript-6">
  import Slider from 'base/slider/slider'
  import mTitle from 'base/title/title'
  import selectTheme from 'base/selectTheme/selectTheme'
  import seasonRecommend from 'base/seasonRecommend/seasonRecommend'
  import Areas from 'components/areas/areas'
  import DSlider from 'base/dslider/dslider'
  import {getSliders,getHotLabels,getRecommends,getAddress,getAreas,getHotDest} from 'api/destination'
  import {ERR_OK} from 'api/config'
  import {mapMutations} from 'vuex'
  export default {
    name: 'destination',
    data() {
      return {
        path: 'destination',
        title: ['热门目的地', '当季推荐', '全国'],
        sliders: [],
        hotLabels: [],
        hotDest: [],
        seasonRecommend: [],
        address: [],
        areas: []
      }
    },
    created() {
      this.$nextTick(function(){
        this._getSliders()
        this._getHotLabels()
        this._getHotDest()
        this._getRecommends()
        this._getAddress()
        this._getAreas()
      })
    },
    methods: {
      goto(item) {
        this.$router.push({
          path: `/destination/${item.id}`
        })
        this.setDestInfo(item.id)
        window.localStorage.setItem('address_id',item.id)
      },
      _getSliders() {
        getSliders().then((res) =>{
          if(res.status === ERR_OK) {
            this.sliders = res.data
          }
        })
      },
      _getHotLabels(){
        getHotLabels().then((res) =>{
          if(res.status === ERR_OK) {
            this.hotLabels = res.data
          }
        })
      },
      _getHotDest() {
        getHotDest().then((res) =>{
          if(res.status === ERR_OK) {
            this.hotDest = res.data
            //必须用this.hotDest的数据来进行删选，不能直接使用datas进行筛选之后给前端this.hotDesc
          }
        })
      },
      _getRecommends() {
        getRecommends().then((res) =>{
          if(res.status === ERR_OK) {
            this.seasonRecommend = res.data
          }
        })
      },
      _getAddress() {
        getAddress().then((res) =>{
          if(res.status === ERR_OK) {
            this.address = res.data
          }
        })
      },
      _getAreas() {
        getAreas().then((res) =>{
          if(res.status === ERR_OK) {
            this.areas = res.data
          }
        })
      },
      ...mapMutations({
        setDestInfo: 'SET_DEST_INFO'
      })
    },
    components: {
      Slider,
      mTitle,
      selectTheme,
      seasonRecommend,
      Areas,
      DSlider,
      scroll
    }
  }
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
@import '../../common/stylus/mixin'

#destination
  min-widht $min-width
  position: relative
  width: 100%
  top 0
  bottom: 0
  .slider-wrapper
    position relative
    left 0
    top 0
    min-height 500px
    .search
      position absolute
      left 50%
      margin-left -400px
      top 50%
      margin-top -60px
      width 800px
      height 120px
      background $color-background-l
      z-index 2
      border-radius 7px
      .content
        margin 0 auto
        text-align center
        overflow hidden
        .searchBox
          width 600px
          height 40px
          position relative
          left 0
          top 0
          margin 30px auto 0 auto
          .input
            width 100%
            height 100%
            border-radius 6px
            background transparent
            border 1px solid $color-text
            outline none
            padding 0 60px 0 20px
            color $color-text
            font-size $font-size-large
            box-sizing border-box
          changeColor($color-text-ll)
          .icon-icon-test
            position absolute
            right 20px
            font-size $font-size-large-x
            top 9px
            color $color-text
            cursor pointer
        .hotLabel
          width 600px
          font-size $font-size-medium-x
          color $color-text
          margin-top 10px
          letter-spacing 3px
          .list
            display inline-block
            .item
              display inline-block
              margin-right 8px
              cursor pointer
              &::after
                content '|'
                margin-left 8px
              &:last-child::after
                content ''
              a
                color $color-text
    .sliders
      .sliderContent
        width 100%
        height 550px
        overflow hidden
        .needsclick
          height 500px
  #hotDesc 
    .hot-slider
      width 1100px
      height 500px
      overflow hidden
      margin 0 auto
</style>
