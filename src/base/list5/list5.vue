<template>
  <div id="list5">
  <ul class="list">
    <li @click="goto(one)" class="item" v-for="one in datas">
      <div class="imgWrapper">
        <img v-lazy="'http://139.196.72.67'+one.img" alt="" class="img">
      </div>
      <h1 class="address">{{one.area}}</h1>
      <p class="resume">{{one.resume}}</p>
      <div class="authorWrapper">
        <img v-lazy="one.authorImg?('http://139.196.72.67'+one.authorImg) :'http://139.196.72.67/api/public/static/image/defaultAuthorImg.jpg'" alt="" class="author">
        <span class="name">{{one.author || '旅游爱好者' }}</span>
      </div>
      <div class="concern">已有<span class="num">{{one.concern}}</span>人关注</div>
    </li>
  </ul>
  <div v-if="datas.length >0 && showMore" @click="add" class="more">
    <more :descMore="more"></more>
  </div>
  <div v-if="datas.length ==0&& showMore" class="noContent">暂无内容</div>
  
  </div>
</template>

<script type="text/ecmascript-6">
import {getA,addLook} from 'api/active'
import More from 'base/more/more'
export default {
  name: 'list5',
  props:{
    address: {
      type: Number,
      default: 0
    },
    timeType: {
      type: Number,
      default: 0
    },
    timeList: {
      type: Number,
      default: 0
    },
    centerDatas:{
      type: Array,
      default: ()=>[]
    },
    center:{
      type: Boolean,
      default:false
    },
    showMore:{
      type: Boolean,
      default:true
    }
  },
  data() {
    return {
      datas : [],
      descMore: '点击加载更多……',
      more: '点击加载更多……'
    }
  },
  created(){
    this.init()
  },
  methods:{
    goto(item){
      this.$router.push({
        path: `/findCompanion/${item.id}`
      })
      addLook(item.id)
    },
    _getA(){
      if(!this.center){
        //地址，后面时间的类型，初始长度，限制长度
        getA(this.address,this.timeType,this.timeList,0,16).then((res)=>{
          if(res.data.code === 0){
            this.datas = res.data.datas
          }
        })
      }
    },
    add(){
      if(!this.center){
        getA(this.address,this.timeType,this.timeList,this.datas.length,16).then((res)=>{
          if(res.data.code === 0){
            var datas= res.data.datas
            if(datas.length >0){
              for(var i=0;i<datas.length;i++){
                this.datas.push(datas[i])
              }
            }else{
              this.more='已加载全部'
            }
          }
        })
      }
    },
    init(){
      if(!this.center){
        this._getA()
      }else{
        this.datas = this.centerDatas
      }
    }
  },
  watch:{
    address(){
      this.more = this.descMore
      this._getA()
    },
    timeType(){
      this.more = this.descMore
      this._getA()
    },
    timeList(){
      this.more = this.descMore
      this._getA()
    },
    centerDatas(){
      if(this.center){
        this.datas = this.centerDatas
      }
    },
   '$route' (to, from) {
    // 对路由变化作出响应...
      this.init()
    }
  },
  components:{
    More
  }
}
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
#list5
  width 1240px 
  margin 30px auto 0 auto 
  padding-bottom 100px
  .noContent
    text-align center 
    font-size $font-size-large 
    color $color-text-d
  .more 
    margin-top 100px
  .list
    text-align center 
    font-size $font-size-medium
    color $color-text-d
    padding 0 80px
    .item
      width 230px
      height 440px
      display inline-block
      margin 0 10px 0 10px
      box-sizing border-box 
      padding 20px
      text-align left
      border-radius 3px
      letter-spacing 2px
      border-bottom 1px solid $color-border-d
      transition-duration .3s
      cursor pointer
      &:hover
        background $color-text
        // transfrom translateY(-5px) 
        transform translateY(-10px) scale(1.01)
        border none
      .imgWrapper
        width 190px 
        height 150px 
        overflow hidden
        border-radius 3px
        padding-top 20px
        .img
          width 100% 
          height 100%
      .address
        font-size $font-size-large-x
        color $color-theme-d
        margin-top 10px
        padding-left 10px
      .resume
        line-height 20px 
        height 40px 
        overflow hidden
        margin-top 16px
        text-indent 2em
      .authorWrapper   
        margin-top 25px
        .author
          display inline-block
          width 50px
          height 50px 
          border-radius 50% 
          overflow hidden
          vertical-align middle
        .name
          display inline-block
          width 120px
          height 50px
          vertical-align middle
          color $color-theme-d
          margin-left 10px
      .concern
        font-size $font-size-large
        vertical-align middle
        margin-top 20px
        .num
          font-size $font-size-large-x 
          font-weight bold
          padding 0 10px
          vertical-align middle
</style>
