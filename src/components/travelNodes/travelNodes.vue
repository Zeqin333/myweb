<template>
  <div v-if="travel" id="travelNodes">
    <bg :bg="bg"></bg>
    <div class="top">
      <div  class="authorDesc">
        <img class="authorImg" v-lazy="travel.authorImg !=''?'http://139.196.72.67'+travel.authorImg:'http://139.196.72.67/api/public/static/image/authorImg.jpg'" alt="">
        <div class="desc">
          <p class="address">{{travel.area}}</p>
          <p class="author">{{travel.author !=''?travel.author :'旅游爱好者'}}</p>
        </div>
      </div>
      <icon-list :id="parseInt(id)" :addCount="true" class="iconList" :labels="labels"></icon-list>
      <div class="slabels">
        <icon-list class="mlabel" :labels="labels3"></icon-list>
        <p class="time">{{travel.time}}</p>
      </div>
      <icon-list class="iconLabels" :labels="labels2"></icon-list>
    </div>
    <div class="title">
      <rotate-title style="margin-left:-60px" :labels="labels4"></rotate-title>
    </div>
    <s-title :titleName="title" :whiteColor="true"></s-title>
    <div class="container box-sizing" v-html="travel.article">
    </div>
    <!-- <comment></comment> -->
    <m-footer></m-footer>
  </div>
</template>

<script type="text/ecmascript-6">
  import Bg from 'base/bg/bg'
  import iconList from 'base/iconList/iconList'
  import rotateTitle from 'base/rotateTitle/rotateTitle'
  import sTitle from 'base/s-title/s-title'
  import More from 'base/more/more'
  import Comment from 'components/comment/comment'
  import mFooter from 'components/footer/footer'
  import {info} from 'api/travelNode'
  import {mapGetters} from 'vuex'
  export default {
    name: 'travelNodes',
    data() {
      return {
        uid: 1,
        title: '旅程',
        bg: 'travelNode.jpg',
        travel: [],
        labels: [{
            icon: 'icon-shoucang',
            count: 0
          },
          {
            icon: 'icon-liulan',
            count: 0
          },
          {
            icon: 'icon-dianzan',
            count: 0
          },
          {
            icon: 'icon-hua1',
            count: 0
          }
        ],
        labels2: [{
            icon: 'icon-huodongdidian',
            desc: '大理'
          },
          {
            icon: 'icon-biaoqian',
            desc: '3-4天'
          },
          {
            icon: 'icon-xiaofeiquan',
            desc: '人均消费：3000'
          },
          {
            icon: 'icon-shouye',
            desc: '出行：自驾'
          }
        ],
        labels3: [
          {
            icon: 'icon-biaoqian',
            desc: '季节3-4月'
          }
          // ,
          // {
          //   icon: 'icon-biaoqian',
          //   desc: '美食'
          // }
        ],
        labels4: [
          {
            id: 'travel',
            title: '游记'
          },
          {
            id: '',
            title: 'hh'
          },
          {
            id: 'comment',
            title: '评论区'
          }
        ]
      }
    },
    created() {
      this.init()
    },
    computed: {
      ...mapGetters([
        'id'
      ])
    },
    methods: {
      _info() {
        info(this.uid).then((res)=>{
          if(res.data.code === 0){
            var travel = res.data.travel[0]
            if(travel){
            this.travel = travel
            this.title = travel.title
            this.labels2[0].desc = travel.area
            this.labels2[1].desc = '天数：'+travel.day+'天'
            this.labels2[2].desc = '人均消费：'+travel.money+'元'
            this.labels2[3].desc = '出行方式：'+travel.name
            this.labels[0].count = travel.collect
            this.labels[1].count = travel.look
            this.labels[2].count = travel.praise
            this.labels[3].count = travel.flower
            if(travel.month ==13){
              this.labels3[0].desc = '适宜月份：不限'
              return false
            }
            this.labels3[0].desc = '适宜月份：'+travel.month+'月'
            }
          }
        })
      },
      init(){
        this.travel=[]
        this.uid = this.$route.params.id
        this._info()
      }
    },
    watch: {
      '$route' (to, from) {
        // 对路由变化作出响应...
        this.init()
      }
    },
    components: {
      Bg,
      iconList,
      rotateTitle,
      sTitle,
      More,
      mFooter,
      Comment
    }
  }
</script>

<style lang="stylus">
@import '../../common/stylus/variable'
#travelNodes
  position absolute
  left 0
  top 0
  width 100%
  z-index 9990
  background rgba(0,0,0,.3)
  text-align center
  .top
    height 350px
    border-bottom 1px solid $color-text
    position relative
    left 0
    top 0
    .authorDesc,.iconList,.iconLabels
      position absolute
    .authorDesc
      bottom -50px
      left 100px
      .authorImg
        width 200px
        height 200px
        border-radius 50%
        display inline-block
        position relative
        z-index 4
      .desc
        margin-left 20px
        display inline-block
        vertical-align top
        .address
          font-size $font-title
          color $color-text
          font-family $font-theme
          left 100px
        .author
          margin-top 40px
          font-size $font-size-large
          color $color-text
          letter-spacing 5px
    .iconList
      right 100px
      bottom 200px
    .iconLabels
      right 100px
      bottom 20px
    .slabels
      position absolute
      bottom 120px
      right 100px
      .mlabel
        font-size $font-size-medium
      .time
        font-size $font-size-medium
        color $color-text
        margin-top 20px
        text-align right
        margin-right 35px
  .container
    width 1100px
    margin 30px auto 100px auto
    border-radius 10px
    padding 100px 80px
    font-size 15px
    color $color-text-dd
    background $color-text
    div,p
      background transparent!important
      letter-spacing 2px
      line-height 25px
      text-align justify
    strong,h1,h2,h3,h4,h5
      font-size $font-size-large-xll
      color $color-theme-d
      line-height 60px
      font-weight 600
      text-border 1px solid #fff
</style>
