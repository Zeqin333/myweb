<template>
  <div id="seasonRecommend" class="clearfix">
    <div class="seasonRecommend">
      <s-title :titleName="title" :whiteColor="true"></s-title>
      <ul class="tab">
        <li :class="{'active':activeIndex === index}" @mouseenter='changeActive(index)' @click="changeActive(index)" class="item" v-for="(item,index) in 12">{{item}}月</li>
      </ul>
      <ul class="dests clearfix">
        <li @click="goto(one)" class="dest" v-for="one in datas[activeIndex]">
          <img v-lazy="'http://139.196.72.67'+one.article_img" alt="">
          <p class="desc">{{one.area}}</p>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
  import sTitle from 'base/s-title/s-title'
  import {mapMutations} from 'vuex'
  export default {
    data() {
      return {
        activeIndex: 0
      }
    },
    props: {
      title: {
        type: String,
        default: '当季推荐'
      },
      datas: {
        type: Array,
        default: []
      }
    },
    methods: {
      goto(item) {
        this.$router.push({
          path: `/${item.id}`
        })
        this.setId(item.id)
        window.localStorage.setItem('id',item.id)
      },
      changeActive(index) {
        this.activeIndex = index
      },
      ...mapMutations({
        setId: 'SET_ID'
      })
    },
    components: {
      sTitle
    }
  }
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
#seasonRecommend
  width 100%
  background $color-theme-d
  font-size 0
  text-align center
  padding-bottom 70px
  clear both
  .tab
    display inline-block
    margin 40px auto
    .item
      width 80px
      height 35px
      line-height 35px
      text-align center
      border-radius 7px
      color $color-text
      font-size $font-size-medium-x
      letter-spacing 5px
      background $color-theme-d
      display inline-block
      cursor pointer
      margin-right 15px
      transition-duration .3s
      border 1px solid $color-theme
      &:hover
        transform translateY(-8px)
      &:hover,&.active
        transition-duration .2s
        background $color-theme
        color $color-theme-d
        box-shadow 1px 1px 5px 1px $color-shadow
      &:last-child
        margin-right 0
  .dests
    width 1240px
    margin 20px auto 0 auto
    clear both
    .dest
      position relative
      left 0
      right 0
      display inline-block
      margin-left 20px
      border-radius 10px
      box-shadow 1px 1px 5px 1px $color-shadow
      cursor pointer
      transform scale(1)
      transition-duration .3s
      float right
      width 400px
      height 100px
      margin-bottom 45px
      overflow hidden
      &:first-child
        width 770px
        height 390px
        float left
        margin-left 0
        img
          height 100%
        &:hover
          transform translateY(-10px) scale(1.15)
          transition-duration .3s
          z-index 9000
          .desc
            transform scale(1.5) translate(30px,200px) 
            transition-duration .3s
      &:last-child
        margin-bottom 0
      &:hover
        transform translateY(-10px) scale(1.15)
        transition-duration .3s
        z-index 9000
        .desc
          transform scale(1.15) translateY(40px)
          transition-duration .3s
      img
        width 100%
        height 150%
        background-position center
        border-radius 10px
        line-height 100%
      .desc
        position absolute
        left 30px
        top 20px
        font-size $font-size-medium-x
        color $color-text
        letter-spacing 5px
        transform scale(1)
        transition-duration .3s
</style>