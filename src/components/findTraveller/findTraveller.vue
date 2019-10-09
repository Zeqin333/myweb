<template>
  <div id="findTraveller">
    <bg :bg="bg"></bg>
    <div class="main">
      <s-title :titleName="title" :whiteColor="true"></s-title>
      <m-tab class="mtab" :activeIndex="activeIndex" :themeTabs="themeTabs" @change-active-index="changeActiveIndex"></m-tab>
      <travellers :activeIndex="activeIndex"></travellers>
    </div>
  </div>
</template>

<script type="text/ecmascript-6">
  import Bg from 'base/bg/bg'
  import sTitle from 'base/s-title/s-title'
  import Travellers from 'components/travellers/travellers'
  import mTab from 'base/tab2/tab2'
  export default {
    name: 'findTraveller',
    data() {
      return {
        bg: 'set2.jpg',
        activeIndex:0,
        title:'旅游家',
        themeTabs: ['资深游者', '关注排行']
      }
    },
    methods: {
      changeActiveIndex(index) {
        this.activeIndex = index
      }
    },
    components: {
      Bg,
      sTitle,
      mTab,
      Travellers
    }
  }
</script>

<style lang="stylus" scoped>
#findTraveller 
  width 100%
  position relative
  top 0
  left 0
  z-index 0
  .main
    padding-top 100px
    .mtab
      margin 0 auto 60px auto
</style>
