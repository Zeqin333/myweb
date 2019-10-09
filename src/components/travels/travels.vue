<template>
  <div id="travels">
    <bg :bg="bg"></bg>
    <div class="main">
      <s-title :titleName="title" :whiteColor="true"></s-title>
      <m-tab class="mtab" :activeIndex="activeIndex1" :themeTabs="themeTabs" 
      @change-active-index="changeActiveIndex1"></m-tab>
      <m-list :travelNode="travelNode[activeIndex1]"></m-list>
      <div @click="addMore" class="more">
        <more :descMore="more"></more>
      </div>
    </div>
    <div class="active">
      <active></active>
    </div>
    <select-theme :whiteColor="true" class="selectTheme"></select-theme>
    <keep-alive>
      <router-view></router-view>
    </keep-alive>
  </div>
</template>

<script type="text/ecmascript-6">
  import Slider from 'base/slider/slider'
  import Bg from 'base/bg/bg'
  import sTitle from 'base/s-title/s-title'
  import mTab from 'base/tab2/tab2'
  import Active from 'components/active/active'
  import selectTheme from 'base/selectTheme/selectTheme'
  import More from 'base/more/more'
  import mList from 'base/list3/list3'
  import {getTravelNode,getAddT} from 'api/travels'
  import {ERR_OK} from 'api/config'
  import {a_more} from 'common/js/dom'
  import {mapMutations} from 'vuex'
  export default {
    name: 'travels',
    data() {
      return {
        path: 'travels',
        title: '攻略推荐',
        bg: 'travels.jpg',
        activeIndex1: 0,
        more: '加载更多……',
        themeTabs: ['热门游记', '最新游记'],
        selectThemeDatas: [],
        travelNode: []
      }
    },
    created() {
      this.$nextTick(function() {
        this._getTravelNode()
      })
    },
    methods: {
      changeActiveIndex1(index) {
        this.activeIndex1 = index
      },
      goto(item) {
        this.$router.push({
          path: `/${item.id}`
        })
        this.setId(item.id)
        window.localStorage.setItem('id',item.id)
      },
      _getTravelNode() {
        getTravelNode().then((res) => {
          if (res.status === ERR_OK) {
            this.travelNode = res.data
          }
        })
      },
      addMore() {
        var count = this.travelNode[this.activeIndex1].length
        getAddT(this.activeIndex1, count).then((res) => {
          if (res.status === ERR_OK) {
            var params = {
              datas: res.data,
              target: this.travelNode[this.activeIndex1],
              more: this.more
            }
            if (a_more(params) == 1) {
              this.more = '已加载全部'
            }
          }
        })
      },
      ...mapMutations({
        setId: 'SET_ID'
      })
    },
    watch: {
      activeIndex1() {
        this.more = '点击加载更多……'
      }
    },
    components: {
      Slider,
      Bg,
      sTitle,
      mTab,
      Active,
      selectTheme,
      More,
      mList
    }
  }
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
#travels
  width 100%
  position relative
  top 0
  left 0
  z-index 0
  .sliderContent
    height h = 400px
    .slider
      width 100%
      height h
      .needsclick
        width 100%
        height 100%
  .selectTheme
    background transparent!important
  .main
    padding-top 180px
    .mtab
      margin 0 auto 60px auto
</style>
