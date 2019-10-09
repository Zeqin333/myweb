<template>
  <div id="mtitle">
    <span :class="{'whiteline':whiteColor}" class="lineLeft"></span>
    <div :class="{'whiteTitle':whiteColor}" class="mtitle">{{titleName}}</div>
    <span :class="{'whiteline':whiteColor}" class="lineRight"></span>
  </div>
</template>

<script type="text/ecmascript-6">
  export default {
    name: 'mtitle',
    props: {
      titleName: {
        type: String,
        default: '关于我们'
      },
      whiteColor: {
        type: Boolean,
        default: false
      }
    }
  }
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
@import '../../common/stylus/mixin'
#mtitle
  width 1100px
  dispaly inline-block
  text-align center
  line-height 50px
  align-items center
  margin 45px auto 0 auto
  padding 40px 0 20px 0
  addrotateY()
  .mtitle,.lineLeft,.lineRight
    vertical-align middle
    display inline-block
  .mtitle
    padding 0 50px
    font-size $font-size-large-xlll
    color $color-title
    letter-spacing 6px
    &.whiteTitle
      color $color-text
  .lineLeft,.lineRight
    min-width 330px
    height 1px
    background $color-border-d
    &.whiteline
      background $color-text
</style>
