<template>
  <div id="i-center">
    <bg :bg="bg"></bg>
    <div class="i-main">
      <div v-if="userData" ref="leftWrapper" class="i-left">
        <img class="i-img" v-lazy="userData.authorImg !=''?'http://139.196.72.67'+userData.authorImg:'http://139.196.72.67/api/public/static/image/defaultAuthorImg.jpg'" alt="">
        <p class="i-author">{{userData.author !=''?userData.author : '旅游爱好者' }}</p>
        <ul class="i-concern">
          <li class="i-item">
            <p class="i-count">{{concern}}</p>
            <p class="i-desc" v-text="user_id ==id?'我关注':'她关注'"></p>
          </li>
          <li class="i-item">
            <p class="i-count">{{beconcern}}</p>
            <p class="i-desc" v-text="user_id ==id?'关注我':'关注她'"></p>
          </li>
          <li v-if="user_id !=id" class="i-item">
            <i @click="loveActive" class="icon-aixin i-icon" :class="{'active':showActive}"></i>
          </li>
        </ul>
        <div class="i-city">现居地：{{userData.city !=''?userData.city:'武汉'}}</div>
        <ul v-if="user_id == id" class="i-list">
          <li @click="go('findCompanion')" class="i-item">发布结伴</li>
          <li @click="go('write')" class="i-item">写游记</li>
          <li @click="go('set')" class="i-item">设置</li>
        </ul>
      </div>
      <div class="i-right">
        <div class="i-tab">
          <ul class="i-tabList">
            <li class="i-tabItem" @click="changeIndex(index)" :class="{'i-active':activeIndex === index}" v-for="(one,index) in list" :key="index">{{one}}</li>
          </ul>
        </div>
        <div v-if="tn.length>0" class="i-content">
          <m-list v-if="activeIndex <= 3" class="i-myList" :travelNode="tn[activeIndex]"></m-list>
          <m-area v-if="activeIndex >3 && activeIndex <=5" :areas="myArea[activeIndex-4]"></m-area>
          <list v-if="activeIndex >5 && activeIndex <=8" :center="true" :showMore="false" :centerDatas="active[activeIndex-6]" class="i-listf"></list>
          <div v-if="activeIndex == 0?(tn[0].length>0?true:false):(activeIndex>=1&&activeIndex<=3?(tn[activeIndex].length>0?true:false):(activeIndex>=4&&activeIndex<=5?(myArea[activeIndex-4].length>0?true:false):(active[activeIndex-6].length>0?true:false)))" 
               ref="add" @click="add" class="i-more">
            <more :descMore="more"></more>
          </div>
          <div v-if="activeIndex == 0?(tn[0].length>0?false:true):(activeIndex>=1&&activeIndex<=3?(tn[activeIndex].length>0?false:true):(activeIndex>=4&&activeIndex<=5?(myArea[activeIndex-4].length>0?false:true):(active[activeIndex-6].length>0?false:true)))" 
               class="i-noContent">暂无{{list[activeIndex]}}内容</div>
        </div>
      </div>
    </div>
    <sweet-modal ref="sweet">
      <p style="font-size:16px;color:#7c7c7c;letter-spacing:4px">{{sweet}}</p>
    </sweet-modal>
  </div>
</template>

<script type="text/ecmascript-6">
  import More from 'base/more/more'
  import mList from 'base/list3/list3'
  import {
    mapGetters
  } from 'vuex'
  import {
    user,
    myTravels,
    cpf,
    getArea,
    concern,
    getConcern,
    getActive
  } from 'api/user'
  import MArea from 'base/area/area'
  import Bg from 'base/bg/bg'
  import list from 'base/list5/list5'
  export default {
    name: 'center',
    data() {
      return {
        bg: 'set2.jpg',
        id: 1,
        activeIndex: 0,
        list: [],
        listM: ['我的游记', '我的收藏', '点赞', '送花', '我想去', '我去过', '我的结伴', '结伴关注', '结伴报名'],
        listG: ['她的游记', '她的收藏', '点赞', '送花', '她想去', '她去过', '她的结伴', '结伴关注', '结伴报名'],
        more: '点击加载更多……',
        tn: [],
        userData: '',
        noContent: false,
        cpfs: ['collect', 'praise', 'flower'],
        arealabel: [0, 1],
        myArea: [],
        showLeft: false,
        showActive: false,
        sweet: '',
        concern: 0,
        beconcern: 0,
        active: [],
        activeL: ['getActiveM','getActiveC','getActiveJ']
      }
    },
    created() {
      this.init()
    },
    computed: {
      ...mapGetters([
        'user_id',
        'set_index'
      ])
    },
    methods: {
      _user() {
        user(this.id).then((res) => {
          if (res.data.code === 0) {
            this.userData = res.data.user
          }
        })
      },
      _getMyTravels() {
        //获取我的游记
        myTravels(this.id, 0).then((res) => {
          if (res.data.code === 0) {
            var data = res.data.travel
            this.tn.push(data)
            //获取我点赞，收藏，送花
            cpf(this.id, 0, this.cpfs).then((res) => {
              if (res.data.code === 0) {
                var data = res.data.arr
                for (var i = 0; i < data.length; i++) {
                  this.tn.push(data[i])
                }
                //获取我想去，我去过
                getArea(this.id, this.arealabel).then((res) => {
                  if (res.data.code === 0) {
                    var data = res.data.arr
                    for (var i = 0; i < data.length; i++) {
                      this.myArea.push(data[i])
                    }
                    //获取我结伴，我关注，我报名
                    getActive(this.id,this.activeL[0] , 0, 6).then((res) => {
                      if (res.data.code === 0) {
                        this.active.push(res.data.datas)
                        getActive(this.id,this.activeL[1] , 0, 6).then((res) => {
                          if (res.data.code === 0) {
                            this.active.push(res.data.datas)
                            getActive(this.id,this.activeL[2] , 0, 6).then((res) => {
                              if (res.data.code === 0) {
                                this.active.push(res.data.datas)
                              }
                            })
                          }
                        })
                      }
                    })
                  }
                })
              }
            })
          }
        })
      },
      addT() {
        myTravels(this.id, this.tn[0].length).then((res) => {
          if (res.data.code === 0) {
            var data = res.data.travel
            if (data.length !== 0) {
              for (var i = 0; i < data.length; i++) {
                this.tn[0].push(data[i])
              }
            } else {
              this.more = "已加载全部"
            }
          }
        })
      },
      getAddCpf() {
        cpf(this.id, this.tn[this.activeIndex].length, this.cpfs[this.activeIndex - 1]).then((res) => {
          if (res.data.code === 0) {
            var data = res.data.arr[0]
            if (data.length) {
              for (var i = 0; i < data.length; i++) {
                this.tn[this.activeIndex].push(data[i])
              }
            } else {
              this.more = '已加载全部'
            }
          }
        })
      },
      _getConcern() {
        getConcern(this.id).then((res) => {
          if (res.data.code == 0) {
            this.concern = res.data.concern
            this.beconcern = res.data.beconcern
          }
        })
      },
      _getActive(){
        getActive(this.id, this.activeL[this.activeIndex-6], this.active[this.activeIndex-6].length, 6).then((res) => {
          if (res.data.code === 0) {
            var data = res.data.datas
            if (data.length !== 0) {
              for (var i = 0; i < data.length; i++) {
                this.active[this.activeIndex-6].push(data[i])
              }
            } else {
              this.more = "已加载全部"
            }
          }
        })
      },
      go(str) {
        this.$router.push({
          path: `/${str}`
        })
      },
      changeIndex(index) {
        this.activeIndex = index
        this.more = '点击加载更多……'
      },
      insertConcern() {
        concern(this.id, this.user_id).then((res) => {
          if (res.data.status == 0) {
            this.showActive = true
          } else {
            this.showActive = false
          }
          this.sweet = res.data.msg
          this.$refs.sweet.open()
          var self = this
          setTimeout(function() {
            self.$refs.sweet.close()
          }, 1000)
        })
      },
      init() {
        if (this.$route.params.id) {
          this.id = this.$route.params.id
          this.showLeft = false
          this.list = this.listG
        } else {
          this.id = this.user_id
          this.showLeft = true
          this.list = this.listM
        }
        this.activeIndex = this.set_index
        this.tn = []
        this.myArea = []
        this.active = []
        this.showActive = false
        this._user()
        this._getMyTravels()
        this._getConcern()
      },
      loveActive() {
        if (this.id != this.user_id) {
          this.insertConcern()
        }
      },
      add(){
        if(this.activeIndex == 0){
          this.addT()
        }else if(this.activeIndex >=1 && this.activeIndex<=3){
          this.getAddCpf()
        }else if(this.activeIndex >=4 && this.activeIndex<=5){
          this.$refs.add.style.display = 'none'
        }else if(this.activeIndex >=6 && this.activeIndex<=8){
          this._getActive()
        }
      }
    },
    watch: {
      '$route' (to, from) {
        this.init()
      }
    },
    components: {
      More,
      mList,
      MArea,
      Bg,
      list
    }
  }
</script>

<style lang="stylus">
@import '../../common/stylus/variable'
#i-center
  background $color-text
  width 100%
  height 100%
  z-index 6
  overflow hidden
  padding-bottom 200px
  text-align center
  position relative
  top 0
  left 0
  z-index 0
  .i-top 
    position fixed 
    top 0
    left 0 
    height 100px 
    width 100% 
    background $color-theme-d
    z-index 7
  .i-main
    position relative
    width 1240px
    display -webkit-box;
    display -webkit-flex;
    display -ms-flexbox;
    display flex;
    margin 160px auto 0 auto
    padding-bottom 100px
    text-align center
    height 100%
    .i-left
      width 300px
      background $color-theme-d 
      height 700px
      text-align center 
      color $color-text
      font-size $font-size-medium
      letter-spacing 2px
      border-radius 8px 0 0 8px 
      .i-img
        display inline-block
        margin-top 70px 
        width 100px
        height 100px 
        border-radius 50%
        overflow hidden
      .i-author
        margin-top 30px
        padding-bottom 60px 
        font-size $font-size-medium-x
        border-bottom 1px solid $color-text
      .i-concern 
        display flex 
        padding 0 40px
        margin-top 15px
        .i-item 
          flex 1
          text-align center
          &:last-child 
            .i-icon 
              display inline-block 
              margin-top 6px
              font-size 30px
              cursor pointer
              &.active 
                color red
          .i-count 
            font-size $font-size-large
          .i-desc 
            font-size $font-size-medium
            margin-top 8px
      .i-city 
        line-height 26px 
        margin-top 40px
      .i-list
        margin-top 40px
        .i-item 
          line-height 40px
          font-size $font-size-medium-x
          cursor pointer
    .i-right 
      width 940px
      background $color-text
      font-size $font-size-medium 
      color $color-text-d
      border-radius 0 8px 8px 8px
      .i-tab
        width 100% 
        height h = 50px
        background $color-text 
        border 1px solid $color-theme-d
        border-left none
        text-align left
        border-radius 0 8px 0 0 
        .i-tabList 
          font-size $font-size-large
          line-height 48px 
          letter-spacing 3px
          color $color-theme-d
          display flex
          .i-tabItem
            flex 1
            display inline-block 
            width 134.15px
            text-align center 
            cursor pointer
            &:hover,&.i-active 
              background $color-theme-d
              color $color-text
      .i-content
        width 940px 
        overflow hidden 
        #traveller 
          margin-top 50px
          .list
            width 860px 
            margin 0
            display block 
            margin-left 50px
            .item 
              display inline-block
              margin-right 40px
        #list3
          width 940px
          text-align center
          .list
            margin 60px auto 0 auto
            width 760px
            .item
              width 760px
              height 230px
              box-sizing border-box
              padding 0 
              margin 0 0 40px 0
              border-radius 8px
              .left 
                width 300px 
                height 200px
                margin-top 15px
              .right 
                margin-top 15px
                width 440px
                height 200px
                padding 0 10px
                text-align left
                .desc 
                  text-align justify!important
                  height 66px 
                  overflow hidden 
                  position relative 
        .i-noContent 
          font-size $font-size-medium-x 
          color $color-text-d
          letter-spacing 3px
        #list5 
          width 940px
</style>
