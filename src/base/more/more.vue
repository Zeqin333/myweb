<template>
  <div id="more">
    <div class="more">{{descMore}}</div>
  </div>
</template>

<script type="text/ecmascript-6">
export default {
  name: 'more',
  props: {
    descMore: {
      type: String,
      default: '加载更多……'
    }
  }
}
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
@import '../../common/stylus/mixin'
#more 
  text-align center
  .more
    width 400px
    height 50px
    border-radius 8px
    line-height 50px
    margin 30px auto 80px auto
    background $color-theme
    color $color-theme-d
    font-size $font-size-large-xl
    font-family $font-theme
    cursor pointer
    animate(.3s,-5px,1.2)
</style>
