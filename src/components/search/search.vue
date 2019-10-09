<template>
  <div id="search">
    <div class="top"></div>
    <div class="list-wrapper">
      <ul class="list">
        <li class="item time">
          <h2 class="title">时间</h2>
          <div class="content">
            <span :class="{'active': activeIndex[0] === -1}" data="time" @click="changeActive(0,-1,$event)" class="limit">不限</span>
            <div class="right">
              <ul class="item-ul">
                <li :class="{'active': activeIndex[0] === index}" :data="one" @click="changeActive(0,index,$event,1)" class="item li" v-for="(one,index) in datas.time">{{one}}月</li>
              </ul>
              <ul class="item-ul">
                <li :class="{'active': activeIndex[1] === index}" :data="one.id" @click="changeActive(1,index,$event,1)" class="item li" v-for="(one,index) in datas.holiday">{{one.name}}</li>
              </ul>
            </div>
          </div>
        </li>
        <li class="item theme">
          <h2 class="title">主题</h2>
          <div class="content">
            <span :class="{'active': activeIndex[2] === -1}" data="theme" @click="changeActive(2,-1,$event)" class="limit">不限</span>
            <div class="right">
              <h3 class="small-title">全年适宜：</h3>
              <ul class="item-ul suitable">
                <li :class="{'active': activeIndex[2] === index}" :data="one.id" @click="changeActive(2,index,$event,2)" class="item li" v-for="(one,index) in datas.suitable">{{one.name}}</li>
              </ul>
              <h3 class="small-title">季节：</h3>
              <ul class="item-ul season">
                <li :class="{'active': activeIndex[3] === index}" :data="one.id" @click="changeActive(3,index,$event,2)" class="item li" v-for="(one,index) in datas.season">{{one.name}}</li>
              </ul>
              <h3 class="small-title">出行方式：</h3>
              <ul class="item-ul tripmode">
                <li :class="{'active': activeIndex[4] === index}" :data="one.id" @click="changeActive(4,index,$event,2)"  class="item li" v-for="(one,index) in datas.tripmode">{{one.name}}</li>
              </ul>
            </div>
          </div>
        </li>
        <li class="item day">
          <h2 class="title">天数</h2>
          <div class="content">
            <span :class="{'active': activeIndex[5] === -1}" data="day" @click="changeActive(5,-1,$event)" class="limit">不限</span>
            <div class="right">
              <ul class="item-ul">
                <li :class="{'active': activeIndex[5] === index}" :data="index" @click="changeActive(5,index,$event,3)"  class="item li" v-for="(one,index) in day">{{one}}</li>
              </ul>
            </div>
          </div>
        </li>
        <li class="item money">
          <h2 class="title">人均消费</h2>
          <div class="content">
            <span :class="{'active': activeIndex[6] === -1}" data="money" @click="changeActive(6,-1,$event)" class="limit">不限</span>
            <div class="right">
              <ul class="item-ul">
                <li :class="{'active': activeIndex[6] === index}" :data="index" @click="changeActive(6,index,$event,4)"  class="item li" v-for="(one,index) in money">{{one}}</li>
              </ul>
            </div>
          </div>
        </li>
      </ul>
    </div>
    <div class="travels">
      <new-travel :newTravels="travels" :hotMore="false"></new-travel>
    </div>
    <div  @click="addMore" class="more">
      <more :descMore="more"></more>
    </div>
  </div>
</template>

<script type="text/ecmascript-6">
import NewTravel from 'components/newTravel/newTravel'
import {search,list,c_search} from 'api/search'
import {ERR_OK} from 'api/config'
import More from 'base/more/more'
export default {
  name: 'search',
  data() {
    return {
      travels:[],
      more: '点击加载更多……',
      activeIndex:[-1,-1,-1,-1,-1,-1,-1],
      datas:{
        time:[],
        holiday: [],
        suitable: [],
        season:[],
        tripmode: [],
      },
      day: ['1天','2-3天','4-5天','6-9天','10-15天','15天以上','不限'],
      money: ['500元以下','500-1000元','1000-2500元','2500-4000元','4000-5500元','5500-7000元','7000-8000元','8000元以上','不限'],
      arr: ['','','','','','','']
    }
  },
  created() {
    this.$nextTick(function(){
      this._search()
      this._list()
    })
  },
  methods: {
    _search() {
      search().then((res) => {
        if(res.status === ERR_OK) {
          this.travels = res.data
        }
      })
    },
    _list() {
      list().then((res) => {
        if(res.data.code === 0) {
          var holiday = res.data.holiday
          var suitable = res.data.suitable 
          var season = res.data.season
          var tripmode = res.data.tripmode 
          for(var i=1;i< 14; i++){
            this.datas.time.push(i)
          }
          for(var i=0; i < holiday.length; i++){
            this.datas.holiday.push(holiday[i])
          }
          for(var i=0; i < suitable.length; i++){
            this.datas.suitable.push(suitable[i])
          }
          for(var i=0; i < season.length; i++){
            this.datas.season.push(season[i])
          }
          for(var i=0; i < tripmode.length; i++){
            this.datas.tripmode.push(tripmode[i])
          }
        }
      })
    },
    changeActive(num,index,$event,count) {
      this.more = '点击加载更多……'
      this.$set(this.activeIndex,num,index)
      var target = $event.target.attributes[1].nodeValue
      this.arr[num] = target
      if(target == 'time'){
        this.arr[0] = ''
        this.arr[1] = ''
      }
      if(target == 'theme'){
        this.arr[2]=''
        this.arr[3]=''
        this.arr[4]=''
      }
      if(target == 'day'){
        this.arr[5] =''
      }
      if(target =='money'){
        this.arr[6] =''
      }
      switch(num)
      {
      case 0:
        this.$set(this.activeIndex,1,-2)
        this.arr[1]=''
        break;
      case 1:
        this.$set(this.activeIndex,0,-2)
        this.arr[0]=''
        break;
      case 2:
        this.$set(this.activeIndex,3,-2)
        this.$set(this.activeIndex,4,-2)
        this.arr[3]=''
        this.arr[4]=''
        break;
      case 3:
        this.$set(this.activeIndex,2,-2)
        this.$set(this.activeIndex,4,-2)
        this.arr[2]=''
        this.arr[4]=''
        break;
      case 4:
        this.$set(this.activeIndex,2,-2)
        this.$set(this.activeIndex,3,-2)
        this.arr[2]=''
        this.arr[3]=''
        break;
      }
      //根据获取到的信息来控制显示的游记信息
      c_search(this.arr,0).then((res) => {
        this.travels = res.data
      })
    },
    addMore() {
      c_search(this.arr,this.travels.length).then((res)=>{
        if(res.data != ''){
          for(var i=0;i<res.data.length;i++){
            this.travels.push(res.data[i])
          }
        }else{
          this.more= '已加载全部'
        }
      })
    }
  },
  components: {
    NewTravel,
    More
  }
}
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
@import '../../common/stylus/mixin'
#search 
  position relative 
  left 0 
  top 0
  .top 
    height 100px
    position fixed 
    top 0 
    left 0 
    width 100%
    background $color-theme-d
  .list 
    width 1240px
    margin 140px auto 0 auto
    font-size 15px
    color $color-text-d
    box-sizing border-box 
    padding 0 50px
    letter-spacing 2px
    .item
      padding 13px 0
      border-bottom 1px solid $color-background-t
      &.theme
        .content 
          .right  
            .small-title
              display inline-block
              width 100px
              text-align right
              vertical-align top
              line-height 35px
              color $color-text-dd
              font-size $font-size-medium-x
            ul 
              display inline-block 
              width 790px
              vertical-align top
      .title 
        display inline-block 
        width 130px
        vertical-align top
        position relative 
        left 0 
        top 0
        line-height h=30px
        padding-left 30px
        font-size $font-size-large
        color $color-text-dd
        &:before
          content ''
          position absolute 
          left 15px
          top 0
          width 5px 
          height h
          background $color-theme-d 
          border-radius 3px
      .content 
        display inline-block
        vartical-align top
        .limit 
          display inline-block 
          width 50px
          line-height 30px
          vertical-align top
          cursor pointer
          hoverAfter()
        .right 
          display inline-block 
          width 900px
          vertical-align top
          margin-top -2px
          ul 
            line-height 30px
            li
              display inline-block
              padding 0 7px
              border-bottom none
              vertical-align middle
              cursor pointer
              &:last-child 
                display none
              hoverAfter()
  .travels
    margin-top 60px
</style>
