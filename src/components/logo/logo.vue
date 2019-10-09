<template>
  <div id="logo" @click="goHome()">
    mytrip
  </div>
</template>

<script type="text/ecmascript-6">
  export default {
    name: 'logo',
    methods: {
      goHome() {
        this.$router.push({
          path: '/home'
        })
      }
    }
  }
</script>

<style lang="stylus" scoped>
@import "../../common/stylus/variable"
#logo
  font-family $font-theme
  color $color-theme
  font-size 90px
  cursor pointer
  vertical-align top
  display inline-block
  margin-top -10px
</style>
