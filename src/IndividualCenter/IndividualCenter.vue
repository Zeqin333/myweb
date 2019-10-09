<template>
  <div id="IndividualCenter">
    <bg class="bg" :bg="bg"></bg>
    <div class="top">
      <div class="authorDesc">
        <img class="authorImg" v-lazy="userData.authorImg !=''?'http://139.196.72.67'+userData.authorImg:'http://139.196.72.67/api/public/static/image/defaultAuthorImg.jpg'" alt="">
        <p class="author">{{userData.author !=''?userData.author : '旅游爱好者' }}<span class="address">现居地：{{userData.city !=''?userData.city:'武汉'}}</span></p>
      </div>
      <ul class="icon">
        <li>
          <p class="num">0</p>
          <p class="desc">我的关注</p>
        </li>
        <li>
          <p class="num">0</p>
          <p class="desc">粉丝</p>
        </li>
        <li>
          <p class="num"><i :class="{'red':red}" @click="concern" class="icon-aixin"></i></p>
          <p class="desc">收藏</p>
        </li>
      </ul>
    </div>
    <div class="main">
      <rotate-title class="rotateTitle" :activeIndex="activeIndex" @change-active-index="changeActiveIndex" :labels="labels"></rotate-title>
      <div class="mytravels">
        <s-title class="title" :titleName="title[0]" :whiteColor="true"></s-title>
        <m-list :travelNode="travelNode"></m-list>
        <div @click="addT" class="more">
          <more :descMore="more"></more>
        </div>
      </div>
      <div class="active">
        <active></active>
      </div>
      <div class="new">
        <s-title class="title" :titleName="title[1]" :whiteColor="true"></s-title>
        <new-travel :path="path" :newTravels="newTravels" :hotMore="false"></new-travel>
        <more></more>
      </div>
      <div class="want">
        <s-title class="title" :titleName="title[2]" :whiteColor="true"></s-title>
        <select-theme :tabShow="tabShow" :whiteColor="true" class="selectTheme"></select-theme>
        <more></more>
      </div>
      <div class="gone">
        <s-title class="title" :titleName="title[3]" :whiteColor="true"></s-title>
        <recommend :recommendAddress="recommendAddress"></recommend>
        <more></more>
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
  import mList from 'base/list3/list3'
  import Active from 'components/active/active'
  import NewTravel from 'components/newTravel/newTravel'
  import selectTheme from 'base/selectTheme/selectTheme'
  import Recommend from 'components/recommend/recommend'
  import {mapGetters} from 'vuex'
  import {user,myTravels} from 'api/user'
  export default {
    name: 'IndividualCenter',
    data() {
      return {
        id: 1,
        red: false,
        userData :'',
        myTravels: [],
        tabShow: false,
        more:'点击加载更多……',
        path: 'IndividualCenter',
        activeIndex: 0,
        title: ['我的游记', '我的收藏', '我想去', '我去过'],
        bg: 'IndividualCenter.jpg',
        labels: ['我的首页', '我的游记', '我的结伴', '我的收藏', '我想去', '我去过', '发布结伴', '写游记'],
        travelNode: [],
        newTravels: [{
            id: 1,
            image: 'travelImg (1).jpg',
            author: '小小默默',
            title: '小小旅行家',
            content: '景好、人好、心情好、一切都是那么美好。行动、心动。很享受这次的旅程，带给我不一样的美好。景好、人好、心情好、一切都是那么美好。行动、心动。很享受这次的旅程，带给我不一样的美好。行动、心动。很享受这次的旅程，带给我不一样的美好。'
          },
          {
            id: 2,
            image: 'travelImg (2).jpg',
            author: '小小默默',
            title: '小小旅行家',
            content: '景好、人好、心情好、一切都是那么美好。行动、心动。很享受这次的旅程，带给我不一样的美好。景好、人好、心情好、一切都是那么美好。行动、心动。很享受这次的旅程，带给我不一样的美好。行动、心动。很享受这次的旅程，带给我不一样的美好。'
          },
          {
            id: 3,
            image: 'travelImg (3).jpg',
            author: '小小默默',
            title: '小小旅行家',
            content: '景好、人好、心情好、一切都是那么美好。行动、心动。很享受这次的旅程，带给我不一样的美好。景好、人好、心情好、一切都是那么美好。行动、心动。很享受这次的旅程，带给我不一样的美好。行动、心动。很享受这次的旅程，带给我不一样的美好。'
          }
        ],
        selectThemeDatas: [
          [{
              id: 1,
              travelImg: 'travelImg (1).jpg',
              address: '鼓浪屿'
            },
            {
              id: 2,
              travelImg: 'travelImg (2).jpg',
              address: '鼓浪屿'
            },
            {
              id: 3,
              travelImg: 'travelImg (3).jpg',
              address: '鼓浪屿'
            },
            {
              id: 4,
              travelImg: 'travelImg (4).jpg',
              address: '鼓浪屿'
            },
            {
              id: 5,
              travelImg: 'travelImg (5).jpg',
              address: '鼓浪屿'
            }
          ],
          [{
              id: 1,
              travelImg: 'travelImg (6).jpg',
              address: '鼓浪屿'
            },
            {
              id: 2,
              travelImg: 'travelImg (3).jpg',
              address: '鼓浪屿'
            },
            {
              id: 3,
              travelImg: 'travelImg (4).jpg',
              address: '鼓浪屿'
            },
            {
              id: 4,
              travelImg: 'travelImg (2).jpg',
              address: '鼓浪屿'
            },
            {
              id: 5,
              travelImg: 'travelImg (5).jpg',
              address: '鼓浪屿'
            },
            {
              id: 6,
              travelImg: 'travelImg (1).jpg',
              address: '鼓浪屿'
            }
          ],
          [{
              id: 1,
              travelImg: 'travelImg (1).jpg',
              address: '鼓浪屿'
            },
            {
              id: 2,
              travelImg: 'travelImg (1).jpg',
              address: '鼓浪屿'
            },
            {
              id: 3,
              travelImg: 'travelImg (1).jpg',
              address: '鼓浪屿'
            },
            {
              id: 4,
              travelImg: 'travelImg (1).jpg',
              address: '鼓浪屿'
            },
            {
              id: 4,
              travelImg: 'travelImg (1).jpg',
              address: '鼓浪屿'
            },
            {
              id: 4,
              travelImg: 'travelImg (1).jpg',
              address: '鼓浪屿'
            },
            {
              id: 4,
              travelImg: 'travelImg (1).jpg',
              address: '鼓浪屿'
            },
            {
              id: 4,
              travelImg: 'travelImg (1).jpg',
              address: '鼓浪屿'
            },
            {
              id: 4,
              travelImg: 'travelImg (1).jpg',
              address: '鼓浪屿'
            }
          ],
          [{
              id: 1,
              travelImg: 'travelImg (1).jpg',
              address: '鼓浪屿'
            },
            {
              id: 2,
              travelImg: 'travelImg (1).jpg',
              address: '鼓浪屿'
            },
            {
              id: 3,
              travelImg: 'travelImg (1).jpg',
              address: '鼓浪屿'
            },
            {
              id: 4,
              travelImg: 'travelImg (1).jpg',
              address: '鼓浪屿'
            },
            {
              id: 5,
              travelImg: 'travelImg (1).jpg',
              address: '鼓浪屿'
            },
            {
              id: 6,
              travelImg: 'travelImg (1).jpg',
              address: '鼓浪屿'
            },
            {
              id: 7,
              travelImg: 'travelImg (1).jpg',
              address: '鼓浪屿'
            },
            {
              id: 8,
              travelImg: 'travelImg (1).jpg',
              address: '鼓浪屿'
            }
          ]
        ],
        recommendAddress: [{
            id: 1,
            image: require('./travel_img (1).png'),
            address: '巴厘岛'
          },
          {
            id: 2,
            image: require('./travel_img (2).png'),
            address: '巴厘岛'
          },
          {
            id: 3,
            image: require('./travel_img (3).png'),
            address: '巴厘岛'
          },
          {
            id: 4,
            image: require('./travel_img (4).png'),
            address: '巴厘岛'
          },
          {
            id: 5,
            image: require('./travel_img (5).png'),
            address: '巴厘岛'
          },
          {
            id: 6,
            image: require('./travel_img (6).png'),
            address: '巴厘岛'
          },
          {
            id: 7,
            image: require('./travel_img (7).png'),
            address: '巴厘岛'
          },
          {
            id: 8,
            image: require('./travel_img (8).png'),
            address: '巴厘岛'
          }
        ]
      }
    },
    created() {
      this.id = this.user_id
      this._user()
      this._getMyTravels()
    },
    computed: {
      ...mapGetters([
        'user_id'
      ])
    },
    methods: {
      _user() {
        user(this.id).then((res)=>{
          if(res.data.code === 0){
            this.userData = res.data.user
          }
        })
      },
      _getMyTravels(){
        myTravels(this.id,0).then((res)=>{
          if(res.data.code === 0){
            this.travelNode = res.data.travel
          }
        })
      },
      addT() {
        myTravels(this.id,this.travelNode.length).then((res)=>{
          if(res.data.code === 0){
            var data = res.data.travel
            if(data.length !== 0){
              for(var i = 0;i < data.length;i++){
                this.travelNode.push(data[i])
              }
            }else{
              this.more="已加载全部"
            }
          }
        })
      },
      changeActiveIndex(index){
        this.activeIndex = index
      },
      concern() {
        this.red = !this.red
      }
    },
    watch: {
      '$route' (to, from) {
        this.id = this.user_id
        this._user()
        this._getMyTravels()
      }
    },
    components: {
      sTitle,
      Bg,
      rotateTitle,
      listTravel,
      More,
      mList,
      Active,
      NewTravel,
      selectTheme,
      Recommend
    }
  }
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
#IndividualCenter
  width 100%
  position relative
  top 0
  left 0
  z-index 0
  .top
    height 300px
    border-bottom 1px solid $color-text
    position relative
    left 0 
    right 0
    .authorDesc
      position absolute
      bottom -45px
      left 100px
      color $color-text
      .authorImg,.author
        display inline-block
        vertical-align top
      .authorImg
        width 200px
        height 200px
        border-radius 50%
        display inline-block
      .author
        font-size 50px
        margin 40px 0 0 30px
        letter-spacing 5px 
        font-family $font-theme
        .address
          display block
          font-size $font-size-medium-x
          margin-top 30px
          font-family 'Microsoft Yahei'
    .icon
      position absolute
      right 200px
      bottom 40px
      li 
        display inline-block
        text-align center
        margin-left 40px
        letter-spacing 3px
        &:last-child 
          i 
            font-size 35px
            cursor pointer
            &.red 
              color red
        .num
          font-size 35px
        .desc
          font-size $font-size-medium-x
          margin-top 20px
  .title
    margin 50px auto 100px auto
    width 80%
  .main
    .want
      .selectTheme
        background transparent!important
</style>
