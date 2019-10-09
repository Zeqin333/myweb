<template>
  <div id="mtitle">
    <h3 class="mtitle">{{titleName}}</h3>
    <div class="line">
      <span class="lineLeft"></span>
      <i :class="iconType === 1 ? 'icon-yuan' : 'icon-wujiaoxingkong'"></i>
      <span class="lineRight"></span>
    </div>
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
      iconType: {
        type: Number,
        default: 1
      }
    }
  }
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
@import '../../common/stylus/mixin'

#mtitle
  text-align center
  line-height 50px
  margin-top 70px
  padding-bottom 40px
  addrotateY()
  .mtitle
    font-size $font-size-large-xl
    color $color-title
    letter-spacing 6px
  .line
    .lineLeft,.lineRight
      display inline-block
      width 200px
      height 2px
      background $color-title
      vertical-align middle
    i
      display inline-block
      padding 0 30px
      font-size $font-size-large-xl
      color $color-title
      vertical-align middle
</style>
