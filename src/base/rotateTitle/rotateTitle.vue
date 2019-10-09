<template>
  <div id="title">
    <ul class="list">
      <li :class="{'active':now_activeIndex === index,'Y':one.title,'M':!one.title}" @mouseenter="changeActive(index)" @click="changeActive(index)" class="item" v-for="(one,index) in labels">{{one.title || one}}</li>
    </ul>
  </div>
</template>

<script type="text/ecmascript-6">
export default {
  name: 'title',
  props: {
    labels: {
      type: Array,
      default: []
    },
    activeIndex: {
      type: Number,
      default: 0
    }
  },
  data() {
    return {
      now_activeIndex: this.activeIndex
    }
  },
  methods: {
    changeActive(index) {
      this.now_activeIndex = index
      this.$emit('change-active-index',this.now_activeIndex)
    }
  }
}
</script>
<style lang="stylus" scoped>
@import '../../common/stylus/variable'
@import '../../common/stylus/mixin'
#title
  text-align center
  .list
    display inline-block
    margin 160px auto 50px 180px
    .item
      width 200px
      height 40px
      line-height 40px
      background $color-theme-d
      display inline-block
      transform rotate(-45deg)
      border-radius 20px
      margin-left -120px
      font-size $font-size-large
      color $color-text
      letter-spacing 5px
      cursor pointer
      transition all .3s ease
      position relative 
      left 0
      top 0
      &.Y:nth-child(even)
        background $color-theme
        color $color-theme
        cursor default 
      &.active
        background $color-theme
        color $color-theme-d
        letter-spacing 3px
      &.M::after
        content ''
        background url('./yuan.png')
        background-size 100% 100%
        width 20px
        height 15px
        transform rotate(90deg)
        position absolute 
        left 100px
        top 40px
      &.M:last-child::after
        background none
      &.M:hover
        background $color-theme
        color $color-theme-d
        letter-spacing 3px
        transform scale(1.1) rotate(-45deg)
        z-index 999

</style>
