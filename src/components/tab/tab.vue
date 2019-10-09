<template>
  <div class="tab">
    <router-link tag="div" class="tab-item search" to="search">
      <div class="searchC tab-link">
        <i style="font-size:25px;margin-top:10px;" class="icon-icon-test"></i>
      </div>
    </router-link>
    <router-link tag="div" class="tab-item" to="home">
      <span class="tab-link">首页</span>
    </router-link>
    <router-link tag="div" class="tab-item" to="destination">
      <span class="tab-link">目的地</span>
    </router-link>
    <router-link tag="div" class="tab-item" to="travels">
      <span class="tab-link">旅游攻略</span>
    </router-link>
    <router-link tag="div" class="tab-item" to="tourismFunds">
      <span class="tab-link">旅游经费</span>
    </router-link>
    <router-link tag="div" class="tab-item" to="findCompanion">
      <span class="tab-link">找同伴</span>
    </router-link>
    <router-link tag="div" class="tab-item" to="findTraveller">
      <span class="tab-link">旅游家</span>
    </router-link>
    <router-link v-if="mode == 1" tag="div" class="tab-item" to="Write">
      <span class="tab-link">写游记</span>
    </router-link>
    <router-link v-if="mode == 0" tag="div" class="login tab-item" to="login">
      <span class="tab-link login-link">登陆</span>|
    </router-link>
    <router-link v-if="mode == 0" tag="div" class="regist tab-item" to="regist">
      <span class="tab-link">注册</span>
    </router-link>
    
    <div v-if="mode == 1" class="tab-item individualCenter" v-lazy-container="{ selector: 'img', error: '../../../static/reba.jpg', loading: '../../../static/reba.jpg' }">
      <img @click="showList" data-src="'http://139.196.72.67'+userData.authorImg" alt="">
      <transition  name="slide">
        <ul v-show="show" @mouseleave="onmouseleave" class="list">
          <li class="item">
            <router-link tag="div" to="center">
              <span class="tab-link">个人中心</span>
            </router-link>
          </li>
          <li class="item">
            <router-link tag="div" to="write">
              <span class="tab-link">写游记</span>
            </router-link>
          </li>
          <li class="item" @click="goto(0)">我的游记</li>
          <li class="item" @click="goto(1)">我的收藏</li>
          <li class="item" @click="goto(2)">点赞</li>
          <li class="item" @click="goto(3)">送花</li>
          <li class="item" @click="goto(4)">我想去</li>
          <li class="item" @click="goto(5)">我去过</li>
          <li class="item">
            <router-link tag="div" to="set">
              <span class="tab-link">设置</span>
            </router-link>
          </li>
          <li @click="changeMode" class="item" >退出</li>
        </ul>
      </transition>
    </div>
    
  </div>
</template>

<script type="text/ecmascript-6">
import {user} from 'api/getUser'
  import {
    mapGetters,
    mapMutations
  } from 'vuex'
  export default {
    data() {
      return {
        show: false,
        userData: []
      }
    },
    mounted() {
      this._user()
    },
    computed: {
      ...mapGetters([
        'mode',
        'user_id',
        'user_img'
      ])
    },
    methods: {
      showList() {
        this.show = !this.show
      },
      onmouseleave() {
        this.show = false
      },
      changeMode() {
        this.setMode(0)
        window.localStorage.setItem('loginMode',0)
        this.show = false
      },
      _user() {
        user(this.user_id).then((res)=>{
          if(res.data.code === 0){
            this.userData = res.data.user
          }
        })
      },
      goto(index){
        this.setIndex(index)
        this.$router.push({
          path: `/center`
        })
      },
      ...mapMutations({
        setMode: 'SET_MODE',
        setIndex: 'SET_INDEX',
      })
    }
  }
</script>

<style scoped lang="stylus" rel="stylesheet/stylus" scoped>
  @import "~common/stylus/variable"
  @import "~common/stylus/mixin"
  .slide-enter-active, .slide-leave-active
    transition: all .5s
  .slide-enter, .slide-leave-to
    transform: translate3d(0, 100%, 0) 
  .tab
    height: 100px
    line-height: 90px
    font-size: 15px
    color $color-text
    display inline-block
    float right
    margin-right 30px
    vertical-align middle
    .tab-item
      text-align: center
      cursor:pointer
      padding 0 10px
      display inline-block
      &.login
        padding 0 0 0 13px
      &.regist
        padding 0 10px 0 4px
      .tab-link
        padding-bottom: 5px
        color $color-text
        &.login-link
          padding-right 10px
      &.router-link-active
        .tab-link
          color $color-theme
          border-bottom 2px solid $color-theme
    .individualCenter
      width 70px
      height 70px
      vertical-align top
      margin-top 4px
      position relative
      left 0
      top 0
      img 
        width 70px
        height 70px
        border-radius 50%
        margin-top 10px
      .list
        background #fff
        width 180px
        position absolute
        top 96px
        right -38px
        border-radius 5px
        overflow hidden
        padding 10px 0 20px 0
        .item 
          width 160px
          margin 0 auto
          line-height 40px
          font-size $font-size-medium !important 
          color $color-theme-d !important
          border-bottom 1px solid $color-theme-d!important
          border-radius 8px
          transition-duration .3s
          animate(.3s,-5px,1.2)
          div
            span
              font-size $font-size-medium !important 
              color $color-theme-d !important
</style>
