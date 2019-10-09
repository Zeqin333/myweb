<template>
  <div v-if="datas" id="acitve-info">
    <div  ref="top" class="bg"></div>
    <scroll  @scroll="scroll" :list-scroll="listenScroll" :probe-type="probetype" ref="scroll" class="scroll-wrapper">
      <div class="main">
        <div class="top">
          <h1 class="title">
            {{datas.title}}
          </h1>
          <ul class="icon">
            <li class="item">
              <span class="concern-num">{{datas.look}}</span>
              <span class="desc">浏览</span>
            </li>
            <li class="item">
              <span ref="concernW" class="concern-num">{{datas.concern}}</span>
              <span class="desc">关注</span>
            </li>
          </ul>
          <div class="concern public">
            <i @click="concernA" class="icon-aixin" :class="{'active':showActive}"></i>
            关注
          </div>
        </div>
        <div class="important">
          <ul class="list">
            <li class="item">
              <i class="icon icon-xiaofeiquan"></i>
              <span class="desc">出发时间：{{datas.time}}</span>
            </li>
            <li class="item">
              <i class="icon icon-xiaofeiquan"></i>
              <span class="desc" v-if="star.area">出发地点：{{star.area}}</span>
            </li>
            <li class="item">
              <i class="icon icon-xiaofeiquan"></i>
              <span class="desc">大约：{{datas.day}}天</span>
            </li>
            <li class="item">
              <i class="icon icon-xiaofeiquan"></i>
              <span class="desc" v-if="datas.area">目的地：{{datas.area}}</span>
            </li>
            <li class="item">
              <i class="icon icon-xiaofeiquan"></i>
              <span class="desc">希望人数：{{datas.people}}人</span>
            </li>
          </ul>
        </div>
        <div class="tellphone">联系方式:  手机号：{{datas.contact}}</div>
        <div class="content">
          <div class="author">
            <img class="img" v-lazy="datas.authorImg?('http://139.196.72.67'+datas.authorImg) :'http://139.196.72.67/api/public/static/image/defaultAuthorImg.jpg'" alt="">
            <span class="name">{{datas.author || '旅游爱好者'}}</span>
          </div>
          <h2 class="title">{{datas.title}}</h2>
          <p class="resume">
            {{datas.resume}}
          </p>
          <img v-for="(one,index) in img" :key="index" class="activeImg" v-lazy="'http://139.196.72.67'+one.img" alt="">
        </div>
        <m-footer></m-footer>
        <sweet-modal  ref="sweet">
          <p style="font-size:16px;color:#7c7c7c;letter-spacing:4px">{{sweet}}</p>
        </sweet-modal>
      </div>
    </scroll>
  </div>
</template>

<script type="text/ecmascript-6">
  import scroll from 'base/scroll/scroll'
  import mFooter from 'components/footer/footer'
  import {getD,addConcern} from 'api/active'
  import {mapGetters,mapMutations} from 'vuex'

  export default {
    name: 'acitve-info',
    data() {
      return {
        scrollY: 0,
        id:1,
        datas: [],
        star: '',
        img: [],
        showActive: false,
        sweet: ''
      }
    },
    created() {
      this.probetype = 3
      this.listenScroll = true
      this.init()
    },
    computed: {
      ...mapGetters([
        'user_id'
      ])
    },
    methods: {
      scroll(pos) {
        this.scrollY = pos.y
      },
      concernA(){
        addConcern(this.id,this.user_id).then((res)=>{
          if(res.data.code == 0){
            this.$refs.concernW.innerHTML = parseInt(this.$refs.concernW.innerHTML)+1
            this.showActive = true
          }else if(res.data.code == 3){
            this.showActive = false
            this.$refs.concernW.innerHTML = parseInt(this.$refs.concernW.innerHTML)-1
          }else{
            this.showActive =false
          }
          this.sweet = res.data.msg
          this.$refs.sweet.open()
          var self = this
          setTimeout(function(){
            self.$refs.sweet.close()
          },1000)
        })
      },
      init(){
        this.id = this.$route.params.id
        this.showActive = false
        this.datas = []
        getD(this.id).then((res)=>{
          if(res.data.code == 0){
            if(res.data.datas && res.data.star&& res.data.img){
            this.datas = res.data.datas
            this.star = res.data.star
            this.img = res.data.img
            }
          }
        })
      }
    },
    watch: {
      scrollY(newVal) {
        if(this.scrollY < -70 ){
          this.$refs.top.style.backgroundColor = '#57ccc4'
        }else{
          this.$refs.top.style.backgroundColor = 'transparent'
        }
      },
      '$route' (to, from) {
        this.init()
      }
    },
    components: {
      scroll,
      mFooter
    }
  }
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
#acitve-info
  position: fixed
  width: 100%
  top: 0
  bottom: 0
  color $color-text-d
  .bg 
    position: fixed
    height 100px 
    background transparent
    width 100% 
    display block
    z-index 999
    transition all .7s linear
  .scroll-wrapper
    height: 100%
    overflow: hidden
    .main 
      width 100%
      background $color-text
      position relative
      .top 
        color $color-text
        font-size $font-size-medium
        text-align center
        letter-spacing 3px
        padding-bottom 30px
        background url('http://139.196.72.67/api/public/static/image/activeInfo.jpg') center no-repeat
        background-size 100% 100%
        position relative
        .title 
          padding-top 130px
          font-size $font-size-large-xxl
          font-weight bold 
          line-height 40px
          margin-bottom 60px
          letter-spacing 6px
          vertical-align middle
          .num
            vertical-align middle
            font-size 30px
            padding 0 10px 
            font-size $font-size-large-xxx
        .public
          width 300px 
          height 60px 
          line-height 60px 
          font-size $font-size-large-xl
          margin-bottom 20px 
          border-radius 0
          background transparent
          vertical-align middle
          position absolute 
          bottom -40px
          left 50% 
          margin-left -150px
          background $color-theme-d
          color $color-text
          .icon-aixin 
            font-size 30px
            vertical-align middle
            cursor pointer
            &.active 
              color red
            &:hover 
              color red
        .icon
          margin-bottom 40px
          .item
            display inline-block
            margin-right 30px
            font-size $font-size-large-xl
            &:last-child 
              margin-right 0
            .concern-num
              margin-bottom 10px 
      .important
        padding 100px 0 60px 0
        .list 
          width 700px
          margin 0 auto
          text-align left
          font-size 0
          padding-left 100px
          .item
            width 300px
            display inline-block  
            margin-bottom 20px
            letter-spacing 1px
            .icon 
              font-size 25px
              vertical-align middle
            .desc
              font-size $font-size-large
              vertical-align middle
              margin-left 5px
    .tellphone 
      line-height 70px
      font-size $font-size-large
      letter-spacing 5px
      text-align center
      border-top 1px solid $color-theme-d
      border-bottom 1px solid $color-theme-d
    .content
      width w=800px
      margin 50px auto 0 auto
      padding-bottom 80px
      .author
        .img
          width 100px
          height 100px
          border-radius 50%
          vertical-align middle
        .name
          color $color-theme-d
          vertical-align middle
          font-size $font-size-large-x
          margin-left 30px
          letter-spacing 3px
      .title 
        font-size $font-size-large-xlll
        line-height 100px
        letter-spacing 3px
        text-align center
      .resume 
        font-size $font-size-medium-x
        letter-spacing 2px
        line-height 25px
        text-align justify
        text-indent 2em
      .activeImg
        max-width w
        max-height w
        margin 20px auto
</style>
