<template>
  <div id="mfooter" class="clearfix">
    <p class="logo">mytrip</p>
    <div class="shadow"></div>
  </div>
</template>

<script type="text/ecmascript-6">
  export default {
    name: 'mfooter'
  }
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
@import '../../common/stylus/mixin'
#mfooter
  height 150px
  width 100%
  background $color-theme-d
  text-align center
  position relative 
  z-index 2
  .logo
    line-height 120px
    font-size 60px
    color $color-theme
    font-family  $font-theme
    bounce()
  .shadow
    width 80px
    height 10px
    margin 0 auto
    border-radius 50%
    background #cdcdcd
    box-shadow 0 0 5px #cdcdcd
    addShadow()
</style>
