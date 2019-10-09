<template>
  <div id="home">
    <div class="slider-wrapper" ref="sliderWrapper">
      <p class="desc">
        START YOUR DREAMING AND EXPLORING NOW
      </p>
      <div class="begin">
        <p class="start">开始你的旅程</p>
        <i @click="scrollTo" class="icon-xia"></i>
        <i @click="scrollTo" class="icon-xia"></i>
      </div>
      <div v-if="sliders.length" class="sliders" ref="sliderWrapper">
        <slider class="slide" :height="slideheight" :dotShow="true">
          <div @click="goto(slide)" class="slider-item"  v-for="(slide,index) in sliders" :key="index">
            <a href="javascript:;">
              <img class="needsclick" v-lazy="'http://139.196.72.67'+slide.article_img">
            </a>
          </div>
        </slider>
      </div>
    </div>
    <div ref="aboutWrapper" class="aboutUs">
      <m-title :titleName="title[0]" :iconType="2" class="title"></m-title>
      <ul class="list">
        <li class="item" v-for="item in aboutUsContent">
          <div class="icon">
            <i class="left" :class="item.icon"></i>
            <span class="name">{{item.name}}</span>
          </div>
          <p class="desc">{{item.desc}}</p>
        </li>
      </ul>
    </div>
    <div class="tarvelRecommend">
      <m-title :titleName="title[1]" :iconType="2" class="title"></m-title>
      <p class="title">旅友们常常去哪里？远在天边近在眼前啦，快快看看还有哪些地方没有去吧!</p>
      <recommend :recommendAddress="hotDest"></recommend>
    </div>
    <div class="welcome">
      <h1 class="title">欢迎来到小小默默的旅游网站</h1>
      <p class="desc">无论是什么原因让我们相遇，在这里我们成为有缘人。希望我的网站能够帮助你拥有一个快乐的旅程。</p>
    </div>
    <div class="newTravel">
      <m-title :titleName="title[2]" :iconType="2"></m-title>
      <new-travel :path="path" :newTravels="newTravels" :hotMore="false"></new-travel>
    </div>
    <div class="hotTravel">
      <s-title :titleName="title[3]"></s-title>
      <hot-travel :path="path" :newTravels="hotTravels"></hot-travel>
    </div>
    <div class="active">
      <active></active>
    </div>
    <div class="traveller">
      <traveller></traveller>
    </div>
    <keep-alive>
      <router-view></router-view>
    </keep-alive>
  </div>
</template>

<script type="text/ecmascript-6">
  import Slider from 'base/slider/slider'
  import mTitle from 'base/title/title'
  import sTitle from 'base/s-title/s-title'
  import Recommend from 'components/recommend/recommend'
  import NewTravel from 'components/newTravel/newTravel'
  import HotTravel from 'components/hotTravel/hotTravel'
  import Active from 'components/active/active'
  import Traveller from 'components/traveller/traveller'
  import {getSliders,getNew,getHot,hotDest} from 'api/home'
  import {ERR_OK} from 'api/config'
  import {mapMutations} from 'vuex'
  export default {
    name: 'home',
    data() {
      return {
        path: '/home',
        scrollY: 0,
        slideheight:500,
        activeType: false,
        title: ['关于我们', '推荐旅游景点', '最新游记', '热门游记'],
        sliders: [],
        aboutUsContent: [{
            icon: 'icon-youqu',
            name: '有趣',
            desc: '这里有可爱的小姐姐和小哥哥给你分享心得'
          },
          {
            icon: 'icon-kuaisushezhi',
            name: '快捷',
            desc: '分享最便捷的心得，最直接的路线，交通，适宜的天气'
          },
          {
            icon: 'icon-anquan',
            name: '安全',
            desc: '分享旅友最安全的路线分享旅友最安全的路线'
          }
        ],
        hotDest: [],
        newTravels: [],
        hotTravels: [],
        authorDatas: [{
            id: 1,
            authorImg: 'author (1).png',
            author: '小小默默'
          },
          {
            id: 2,
            authorImg: 'author (2).png',
            author: '小小默默'
          },
          {
            id: 3,
            authorImg: 'author (3).png',
            author: '小小默默'
          },
          {
            id: 4,
            authorImg: 'author (4).png',
            author: '小小默默'
          }
        ]
      }
    },
    created() {
      this._getSliders()
      this._hotDest()
      this._getNew()
      this._getHot()
    },
    methods: {
      _getSliders() {
        getSliders().then((res) => {
          if(res.status === ERR_OK) {
            this.sliders = res.data
          }
        })
      },
      _getNew() {
        getNew().then((res) => {
          if(res.status === ERR_OK) {
            this.newTravels = res.data
          }
        })
      },
      _getHot() {
        getHot().then((res) => {
          if(res.status === ERR_OK) {
            this.hotTravels = res.data
          }
        })
      },
      _hotDest() {
        hotDest().then((res) => {
          if(res.status === ERR_OK) {
            this.hotDest = res.data
          }
        })
      },
      scrollTo() {
        let target= this.$refs.aboutWrapper.clientHeight;
        $('.icon-xia').on('click', function(e) {
          $('html,body').animate({
            scrollTop: target + 125
          }, 150);
        })
      },
      goto(item) {
        this.$router.push({
          path: `/${item.id}`
        })
        this.setId(item.id)
        window.localStorage.setItem('id',item.id)
      },
      ...mapMutations({
        setId: 'SET_ID'
      })
    },
    components: {
      Slider,
      mTitle,
      sTitle,
      Recommend,
      NewTravel,
      HotTravel,
      Active,
      Traveller
    }
  }
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
@import '../../common/stylus/mixin'
#home
  width 100%
  overflow hidden
  .slider-wrapper
    position: relative
    width: 100%
    left 0
    top 0
    height h = 550px 
    overflow hidden
    .sliders
      height 500px 
    .desc
      font-size 50px
      color $color-text
      text-align left
      width 700px
      position absolute
      letter-spacing 3px
      left 100px
      bottom 170px
      z-index 9000
      line-height 60px
      font-family 'YouYuan'
    .begin
      position absolute
      bottom 60px
      left 50%
      margin-left -54px
      color $color-text
      z-index 9000
      text-align center
      .start,.icon-xia
        font-size $font-size-large
        letter-spacing 3px
        margin-bottom 10px
      .icon-xia
        display block
        animation bounce .5s infinite
        cursor pointer
        @keyframes bounce
          0%, 100%
            -webkit-transform scaleX(1) translateY(0)
            transform scaleX(1) translateY(0)
          50%
            -webkit-transform scaleX(1.3) translateY(10px)
            transform scaleX(1.3) translateY(10px)
  .aboutUs
    padding 0 120px
    .title
      margin 70px auto 30px auto
    .list
      display -webkit-box
      display -webkit-flex
      display -ms-flexbox
      display flex
      margin-top 70px
      .item
        flex 1
        padding 0 30px
        margin 0 auto
        justify-content right
        transition-duration .3s
        &:hover
          transform translateY(-20px)
          .icon
            .left
              transform rotate3d(0,0,1,360deg)
        .icon
          font-size $font-size-large
          color $color-text-d
          i
            display inline-block
            font-size $font-size-large-xl
            color $color-text
            background $color-theme-d
            padding 5px
            vertical-align middle
            cursor pointer
            transition all .6s ease-in-out
          span
            vertical-align middle
            margin-left 10px
        .desc
          font-size $font-size-medium
          color $color-text-l
          margin 4px 0 0 50px
          line-height 25px
  .tarvelRecommend
    margin-top 150px
    text-align center
    .title
      font-size $font-size-medium-x
      color $color-text-d
      margin 20px 0
  .welcome
    height 250px
    background $color-theme-d
    color $color-text
    text-align center
    letter-spacing 8px
    .title
      font-size $font-size-large-xll
      padding 60px 0
    .desc
      font-size $font-size-medium-x
  .hotTravel
    background $color-highlight-background
    position relative  
  .active 
    margin-top -45px
</style>
