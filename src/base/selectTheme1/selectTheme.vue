<template>
  <div id="selectTheme">
    <div class="selectThemee">
      <s-title v-show="tabShow" :titleName="title" :whiteColor="whiteColor"></s-title>
      <m-tab v-show="tabShow"  :activeIndex="activeIndex" :themeTabs="themeTabs" @change-active-index="changeActiveIndex"></m-tab>
      <ul class="dests">
        <li @click="goto(one)" class="dest" v-for="one in datas[activeIndex]">
          <img v-lazy="require('./'+one.travelImg)" alt="">
          <p class="desc">{{one.address}}</p>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
  import sTitle from 'base/s-title/s-title'
  import mTab from 'base/tab2/tab2'
  export default {
    data() {
      return {
        activeIndex: 0,
        themeTabs: ['全年适宜', '季节', '出行方式', '节假日'],
        title: '精选主题'
      }
    },
    props: {
      datas: {
        type: Array,
        default: []
      },
      whiteColor: {
        type: Boolean,
        default: false
      },
      path: {
        type: String,
        default: ''
      },
      tabShow: {
        type: Boolean,
        default: true
      }
    },
    methods: {
      changeActiveIndex(index) {
        this.activeIndex = index
      },
      goto(item) {
        this.$router.push({
          path: `/${this.path}/${item.id}`
        })
      }
    },
    components: {
      sTitle,
      mTab
    }
  }
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
#selectTheme
  width 100%
  background $color-highlight-background
  font-size 0
  text-align center
  padding-bottom 70px
  .tab
    display inline-block
    margin 40px auto
    .item
      width 120px
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
      margin-right 30px
      transition-duration .3s
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
    min-width $min-width
    margin 0 auto
    .dest
      position relative
      left 0
      right 0
      display inline-block
      margin 20px
      border-radius 10px
      box-shadow 1px 1px 5px 1px $color-shadow
      cursor pointer
      transform scale(1)
      transition-duration .3s
      &:hover
        transform translateY(-10px) scale(1.15)
        transition-duration .3s
        .desc
          transform scale(1.15) translateY(120px)
          transition-duration .3s
      img
        width 300px
        height 200px
        border-radius 10px
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