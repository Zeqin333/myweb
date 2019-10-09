<template>
  <div id="tourismFunds">
    <bg class="bg" :bg="bg"></bg>
    <div v-if="travelNodes.length>0" class="main">
      <s-title :titleName="title" :whiteColor="true"></s-title>
      <rotate-title class="rotateTitle" :activeIndex="activeIndex" @change-active-index="changeActiveIndex" :labels="labels"></rotate-title>
      <list-travel :path="path" :travelNodes="travelNodes[activeIndex]"></list-travel>
      <div v-if="travelNodes[activeIndex].length" @click="addTravels(activeIndex)" class="more">
        <more :descMore="more"></more>
      </div>
    </div>
    <keep-alive>
      <router-view></router-view>
    </keep-alive>
  </div>
</template>

<script type="text/ecmascript-6">
  import sTitle from 'base/s-title/s-title'
  import Bg from 'base/bg/bg'
  import rotateTitle from 'base/rotateTitle/rotateTitle'
  import listTravel from 'components/listTravel/listTravel'
  import More from 'base/more/more'
  import {getMoneytype,addTravel} from 'api/tourismFunds'
  import {ERR_OK} from 'api/config'
  export default {
    name: 'tourismFunds',
    data() {
      return {
        more: '点击加载更多……',
        path: 'tourismFunds',
        activeIndex: 0,
        title: '旅游经费',
        bg: 'tourismFunds.jpg',
        labels: ['500元以下','500-1000元','1000-2500元','2500-4000元','4000-5500元','5500-7000元','7000-8000元','8000元以上'],
        travelNodes: []
      }
    },
    created() {
      this.$nextTick(function(){
        this._getMoneytype()
      })
    },
    methods: {
      changeActiveIndex(index) {
        this.activeIndex = index
      },
      _getMoneytype(){
        getMoneytype().then((res) => {
          if(res.status === ERR_OK){
            this.travelNodes = res.data
          }
        })
      },
      addTravels(index){
        var count = this.travelNodes[index].length
        addTravel(count,index).then((res) => {
          var datas = res.data
          if(datas.length != 0){
            for(var i =0;i< datas.length;i++){
              this.travelNodes[index].push(datas[i])
            }
          }else{
            this.more = '已加载全部'
          }
        })
      }
    },
    watch: {
      activeIndex() {
        this.more = '点击加载更多……'
      },
      '$route' (to, from) {
        // 对路由变化作出响应...
      }
    },
    components: {
      sTitle,
      Bg,
      rotateTitle,
      listTravel,
      More
    }
  }
</script>

<style lang="stylus" scoped>
#tourismFunds
  width 100%
  min-height 700px
  position relative
  top 0
  left 0
  z-index 0
  .bg
    z-index -1
  .main
    padding-top 160px
    text-align center
    .rotateTitle
      margin -60px auto 40px auto
</style>
