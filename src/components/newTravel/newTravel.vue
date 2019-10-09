<template>
  <div id="newTravel">
    <ul class="list">
      <li :class="{'hotLi' : hotMore}" @click="goto(item)" class="item" v-for="item in newTravels">
        <div class="top">
          <div class="img">
            <img v-lazy="'http://139.196.72.67'+item.article_img" alt="">
          </div>
          <p class="author">{{item.author || '旅游爱好者'}}</p>
        </div>
        <div :class="{'hotTitle' : hotMore}" class="title no-wrap">{{item.title}}</div>
        <div :class="{'hotContent' : hotMore}" class="content no-wrap6" v-html="item.article"></div>
        <input ref="more" class="more" :class="{'hotMore' : hotMore}" type="button" :value="(hotMore === true) ? 'more > >':'more'">
      </li>
    </ul>
  </div>
</template>

<script type="text/ecmascript-6">
  import mTitle from 'base/title/title'
  import {mapMutations} from 'vuex'
  export default {
    name: 'newTravel',
    props: {
      newTravels: {
        type: Array,
        default: []
      },
      hotMore: {
        type: Boolean,
        default: false
      },
      path: {
        type: String,
        default: ''
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
      ...mapMutations({
        setId: 'SET_ID'
      })
    },
    components: {
      mTitle
    }
  }
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
@import '../../common/stylus/mixin'
#newTravel
  width $min-width
  padding 0 0 30px 0
  margin 0 auto
  text-align center
  .list
    .item
      display inline-block
      width 320px
      height 420px
      text-align center
      margin 30px
      box-shadow 1px 1px 5px .5px $color-shadow
      overflow hidden
      background bg = $color-text
      animate(.3s,-10px,1.1)
      &.hotLi
        box-shadow none
        height 380px
        background $color-highlight-background
      .top
        height 170px
        width 100%
        position relative
        left 0
        top 0
        cursor pointer
        .img
          height 170px
          width 100%
          overflow hidden
          img
            width 100%
            height 100%
            transition all .3s ease-in-out
        .author
          position absolute
          left 25px
          bottom 20px
          color $color-text
          font-size $font-size-large
          animation slide-fade .4s ease
          @keyframes slide-fade
            0%
              bottom 200px
              opacity 0
              tansform scale(0)
            100%
              bottom 30px
              opacity 1
              tansform scale(1)
      .title
        font-size $font-size-large
        color $color-theme-d
        min-height 40px
        line-height 40px
        margin 0 20px
        letter-spacing 5px
        padding 0 15px
        border-bottom 1px solid $color-border
        cursor pointer
        &.hotTitle
          border-bottom none
      .content
        text-align justify
        font-size fz = $font-size-medium
        color $color-text-d
        margin 15px 25px 20px 25px
        line-height lh = $font-size-medium+6
        text-indent 2em
        height 6*($font-size-medium+6)
        overflow hidden
        cursor pointer
        position relative 
        left 0 
        top 0 
        &::after 
          content '……'
          width 43px 
          text-align left
          background bg
          line-height lh+3
          position absolute 
          right 0 
          bottom 0
          z-index 3
          color #333
          font-size fz
        &.hotContent
          margin 5px 0 20px 0
          &::after 
            width 44px
            background #eeebe6
      .more
        width 124px
        height 30px
        background $color-theme
        color $color-theme-d
        font-size $font-size-medium-x
        border-radius 10px
        box-shadow .5px .5px 3px .5px $color-shadow
        animation slide-fade .4s ease
        outline none
        cursor pointer
        &.hotMore
          width auto 
          height auto
          background transparent 
          float right
          box-shadow none
          font-family $font-theme
        @keyframes slide-fade
          0%
            bottom 200px
            opacity 0
            tansform scale(0)
          100%
            bottom 30px
            opacity 1
            tansform scale(1)
        
</style>
