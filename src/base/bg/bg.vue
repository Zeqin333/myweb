<template>
  <div class="bg">
    <img v-lazy="'http://139.196.72.67/api/public/static/image/'+bg" alt="">
  </div>
</template>

<script type="text/ecmascript-6">
export default {
  name: 'bg',
  props: {
    bg: {
      type: String,
      default: ''
    }
  }
}
</script>

<style lang="stylus" scoped>
.bg
  position fixed
  top 0 
  left 0
  width 100%
  height 100%
  z-index -1
  img
    width 100%
    height 100%
</style>
