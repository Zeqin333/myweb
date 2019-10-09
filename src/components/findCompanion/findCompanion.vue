<template>
  <div id="findCompanion">
    <div class="top">
      <h1 class="title">
        共有
        <span class="num">{{num}}</span>
        个计划
      </h1>
      <ul class="icon">
        <li class="item">
          <span class="concern-num">{{concern}}</span>
          <span class="desc">关注</span>
        </li>
        <li class="item">
          <span class="concern-num">{{joinNum}}</span>
          <span class="desc">报名</span>
        </li>
      </ul>
      <input @click="publicActive" class="public" type="button" value="发布我的结伴计划">
    </div>
    <div class="hot">
      <s-title :titleName="title[0]"></s-title>
      <list></list>
    </div>
    <div class="main">
      <s-title class="stitle" :titleName="title[1]"></s-title>
      <div class="search">
        <select @change="indexChange($event)" class="select inputBox" name="" id="">
          <option data="0" value="全部">全部</option>
          <optgroup :label="one.address" v-for="(one,index) in datas.address" :key="index"> 
            <option :data="item.id" v-if="one.id === item.address_id" :value="item.area" v-for="(item,index) in datas.area" :key="index">{{item.area}}</option>
          </optgroup>
        </select>
        <select @change="changeIndex($event)" class="select">
          <option data="0" value="全部出发时间">全部出发时间</option>
          <option data="1" value="今天">今天</option>
          <option data="2" value="1个月内">1个月内</option>
          <option data="3" value="1-3个月内">1-3个月内</option>
          <option data="4" value="1-3个月内">3个月以上</option>
        </select>
        <m-tab class="mtab" :activeIndex="activeIndex" :themeTabs="themeTabs" @change-active-index="changeActiveIndex"></m-tab>
      </div>
      <list-f :address="parseInt(arr)" :timeType="parseInt(timeType)" :timeList="parseInt(activeIndex)" class="listf"></list-f>
    </div>
    <keep-alive>
      <router-view></router-view>
    </keep-alive>
  </div>
</template>

<script type="text/ecmascript-6">
  import Bg from 'base/bg/bg'
  import sTitle from 'base/s-title/s-title'
  import List from 'base/list4/list4'
  import ListF from 'base/list5/list5'
  import mTab from 'base/tab2/tab2'
  import {getD} from 'api/common'
  import {ERR_OK} from 'api/config'
  import {getC} from 'api/active'
  export default {
    name: 'findCompanion',
    data() {
      return {
        bg: 'publicActive.jpg',
        title: ['结伴热门目的地','结伴'],
        activeIndex:0,
        themeTabs: ['热门结伴', '最新出发','即将出发'],
        datas: [],
        arr:0,
        timeType: 0,
        concern:0,
        joinNum: 0,
        num:0
      }
    },
    created() {
      this.init()
    },
    methods: {
      changeActiveIndex(index) {
        this.activeIndex = index
      },
      indexChange($event){
        this.arr = $event.target.selectedOptions[0].attributes[1].nodeValue
      },
      _getD(){
        getD().then((res) =>{
          if (res.status === ERR_OK) {
            this.datas = res.data
          }
        })
      },
      publicActive(){
        this.$router.push({
          path: `/publicActive`
        })
      },
      changeIndex($event){
        this.timeType = $event.target.selectedOptions[0].attributes[1].nodeValue
      },
      _getC(){
        getC().then((res)=>{
          if(res.data.code == 0){
            this.concern =res.data.concern 
            this.joinNum =res.data.joinNum
            this.num =res.data.num
          }
        })
      },
      init(){
        this._getD()
        this._getC()
      }
    },
    watch: {
    '$route' (to, from) {
      // 对路由变化作出响应...
        this.init()
      }
    },
    components:{
      Bg,
      sTitle,
      List,
      mTab,
      ListF
    }
  }
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
#findCompanion
  width 100%
  position relative
  top 0
  left 0
  z-index 0
  .top 
    color $color-text
    font-size $font-size-medium
    text-align center
    letter-spacing 3px
    border-bottom 1px solid $color-text
    padding-bottom 30px
    background url('http://139.196.72.67/api/public/static/image/findCompanion.jpg') center center no-repeat
    .title
      padding-top 130px
      font-size $font-size-large-xxl
      font-weight bold 
      line-height 40px
      margin-bottom 60px
      letter-spacing 6px
      vertical-align middle
      .num
        vertical-align middle
        font-size 30px
        padding 0 10px 
        font-size $font-size-large-xxx
    .public
      width 300px 
      height 45px 
      font-size $font-size-large-x
      margin-bottom 20px 
      border 2px solid $color-text 
      border-radius 0
      background transparent
    .icon
      margin-bottom 40px
      .item
        display inline-block
        margin-right 30px
        font-size $font-size-large-xl
        &:last-child 
          margin-right 0
        .concern-num
          margin-bottom 10px 
  .hot 
    background $color-text
    margin-top -45px
    padding-bottom 100px
  .main 
    background $color-highlight-background
    margin-top -45px
    padding-bottom 50px
    .search 
      text-align center
      margin-bottom 50px
      .mtab 
        display inline-block
        margin-left 20px
      .inputBox
        margin-right 10px
      .select 
        width 200px
        height 40px
        border 1px solid $color-theme-d
        font-size $font-size-medium-x
        color $color-theme-d
        padding 0 20px
        outline none
</style>
