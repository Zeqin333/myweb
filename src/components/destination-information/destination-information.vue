<template>
  <div id="difWrapper">
    <bg class="bgh" :bg="bg"></bg>
    <div ref="top" class="bgc"></div>
    <scroll @scroll="scroll" :list-scroll="listenScroll" :probe-type="probetype" ref="scroll" class="scroll-wrapper">
      <div id="dif">
        <div class="top">
          <span class="address">{{area}}</span>
          <icon-list :uid="parseInt(uid)" :destinationInfo="true" class="iconList" :labels="labels"></icon-list>
        </div>
        <travel-list :descMore="descMore" :themeTabs="themeTabs" @addT="addT"  :travelNodes="travelNodes"></travel-list>
        <div class="active">
          <active></active>
        </div>
        <travel-list :descMore="descMore" :themeTabs="themeTabs2" @addT="addT2" :travelNodes="travelNodes2"></travel-list>
        <m-footer></m-footer>
      </div>
    </scroll>
  </div>
</template>

<script type="text/ecmascript-6">
  import Bg from 'base/bg/bg'
  import scroll from 'base/scroll/scroll'
  import iconList from 'base/iconList/iconList'
  import travelList from 'components/travelList/travelList'
  import Active from 'components/active/active'
  import mFooter from 'components/footer/footer'
  import {info,modeType,getArea,getWant} from 'api/destination'
  import {mapGetters} from 'vuex'
  
  export default {
    name: 'destination-information',
    fm: '华康娃娃体W5(P)',
    data() {
      return {
        uid: 1,
        area: '',
        scrollY: 0,
        bg: 'bg.jpg',
        activeIndex: 0,
        descMore: '点击加载更多……',
        themeTabs: ['最热游记', '最新游记', '人均消费', '出行天数'],
        themeTabs2: ['全年适宜', '季节', '出行方式', '节假日'],
        labels: [{
            icon: 'icon-collection',
            desc: '收藏',
            count: 0
          },
          {
            icon: 'icon-huodongxiangqu',
            desc: '想去',
            count: 0
          },
          {
            icon: 'icon-quguo',
            desc: '去过',
            count: 0
          }
        ],
        travelNodes: [],
        travelNodes2:[],
        order: ['praise desc','time desc','money desc','day desc'],
        order2: ['suitable_id','season_id','tripmode_id','holiday_id']
      }
    },
    created() {
      this.init()
    },
    computed: {
      ...mapGetters([
        'destInfo'
      ])
    },
    methods: {
      _getArea(){
        getArea(this.uid).then((res)=>{
          if(res.data.code === 0){
            this.area = res.data.data.area
          }
        })
      },
      _info() {
        info(this.uid,0,this.order).then((res)=>{
          if(res.data.code === 0){
            this.travelNodes = res.data.data
          }
        })
      },
      _modeType(){
        modeType(this.uid,0,this.order2).then((res)=>{
          if(res.data.code === 0){
            this.travelNodes2 = res.data.data
          }
        })
      },
      addT(index){
        info(this.uid,this.travelNodes[index].length,this.order[index]).then((res)=>{
          if(res.data.code === 0){
            var data = res.data.data[0]
            if(data.length !=0){
              for(var i=0;i<data.length;i++){
                this.travelNodes[index].push(data[i])
              }
            }else{
              this.descMore = '已加载全部'
            }
          }
        })
      },
      addT2(index){
        modeType(this.uid,this.travelNodes2[index].length,this.order2[index]).then((res)=>{
          if(res.data.code === 0){
            var data = res.data.data[0]
            if(data.length !=0){
              for(var i=0;i<data.length;i++){
                this.travelNodes2[index].push(data[i])
              }
            }else{
              this.descMore = '已加载全部'
            }
          }
        })
      },
      _getWant(){
        getWant(this.uid).then((res)=>{
          if(res.data.code == 0){
            this.$set(this.labels[0],'count',res.data.collect)
            this.$set(this.labels[1],'count',res.data.want)
            this.$set(this.labels[2],'count',res.data.gone)
          }
        })
      },
      scroll(pos) {
        this.scrollY = pos.y
      },
      init() {
        this.probetype = 3
        this.listenScroll = true
        this.travelNodes=[]
        this.travelNodes2=[]
        this.uid = this.$route.params.uid
        this._getArea()
        this._info()
        this._modeType()
        this._getWant()
      }
    },
    watch: {
      scrollY(newVal) {
        if(this.scrollY < -70 ){
          this.$refs.top.style.backgroundColor = '#57ccc4'
        }else{
          this.$refs.top.style.backgroundColor = 'transparent'
        }
      },
      '$route' (to, from) {
        // 对路由变化作出响应...
        this.init()
      }
    },
    components: {
      iconList,
      travelList,
      Active,
      mFooter,
      Bg,
      scroll
    }
  }
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
#difWrapper
  position: fixed
  width: 100%
  height 100%
  top: 0
  bottom: 0
  z-index 5
  color $color-text
  .bgh 
    z-index 5
  .bgc
    position: fixed
    height 100px 
    background transparent
    width 100% 
    display block
    z-index 999
    transition all .7s linear
  .scroll-wrapper
    height: 100%
    overflow: hidden
    z-index 6
    #dif
      position absolute
      top 0
      left 0
      width 100%
      z-index 18
      .top
        height 350px
        border-bottom 1px solid $color-text
        position relative
        left 0
        top 0
        .address
          font-size $font-title
          color $color-text
          font-family $font-theme
          left 100px
        .address,.iconList
          position absolute
          bottom 80px
        .iconList
          right 100px
      // .main
        
</style>
