<template>
  <div id="app">
    <div ref="topWrapper" class="top">
      <div class="content">
        <logo class="logo"></logo>
        <tab class="tab"></tab>
      </div>
    </div>
    <keep-alive>
      <router-view></router-view>
    </keep-alive>
    <m-footer></m-footer>
  </div>
</template>

<script>
  import Tab from 'components/tab/tab'
  import Logo from 'components/logo/logo'
  import mFooter from 'components/footer/footer'
  export default {
    name: 'App',
    created() {
      window.addEventListener('scroll', function(e) {
        var height = 0
        //兼容的写法
        if (document.documentElement && document.documentElement.scrollTop)
              height = document.documentElement.scrollTop;   
        else if (document.body) 
              height = document.body.scrollTop;

        var target = document.getElementsByClassName('top')[0]
        if (height > 70) {
          target.style.backgroundColor = '#57ccc4'
        } else {
          target.style.backgroundColor = 'transparent'
        }
      })
    },
    components: {
      Tab,
      Logo,
      mFooter
    }
  }
</script>

<style lang="stylus" scoped>
@import './common/stylus/variable'
#app
  min-width $min-width
  position relative
  left 0
  top 0
  .top
    position fixed
    left 0
    top 0
    z-index 9999
    width 100%
    box-sizing border-box
    padding 0 100px
    transition all .7s linear
    .content
      min-width $min-width
      .logo,.tab
        vertical-align middle
</style>
