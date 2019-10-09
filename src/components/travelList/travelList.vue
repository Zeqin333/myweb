<template>
  <div id="travelList">
    <div class="main">
      <m-tab class="labels" :activeIndex="activeIndex" :themeTabs="themeTabs" @change-active-index="changeActiveIndex"></m-tab>
      <list-travel :activeIndex="activeIndex" :travelNodes="travelNodes[activeIndex]"></list-travel>
      <div @click="addT" class="more">
        <more  :descMore="descMore"></more>
      </div>
    </div>
  </div>
</template>

<script type="text/ecmascript-6">
import mTab from 'base/tab2/tab2'
import More from 'base/more/more'
import listTravel from 'components/listTravel/listTravel'
import {mapGetters} from 'vuex'
import {info} from 'api/destination'
export default {   
  name: 'travelList',
  data() {
    return {
      path: 'destination',
      activeIndex: 0
    }
  },
  props: {
    travelNodes: {
      type: Array,
      default: []
    },
    themeTabs:{
      type:Array,
      default: []
    },
    descMore:{
      type:String,
      default:''
    }
  },
  methods: {
    changeActiveIndex(index) {
      this.activeIndex = index
    },
    addT(){
      this.$emit('addT',this.activeIndex)
    }
  },
  components: {
    mTab,
    listTravel,
    More
  }
}
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
@import '../../common/stylus/mixin'
#travelList
  .labels
    margin-top 30px
  .main
    text-align center
    
</style>
