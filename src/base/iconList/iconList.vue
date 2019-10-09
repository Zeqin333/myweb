<template>
  <div id="iconList">
    <ul ref="listR" class="icon-list">
      <li ref="icon" :class="{'num':mlabel.count === true}" class="item" v-for="(mlabel,iconindex) in labels" :key="iconindex">
        <i ref="iconItem" class="icon" @click="addNum(iconindex,$event)" :class="[mlabel.icon,{active:showBg[iconindex]}]"></i>
        <span class="desc">{{mlabel.count}}</span>
        <span class="desc2">{{mlabel.desc?mlabel.desc:''}}</span>
      </li>
    </ul>
    <sweet-modal ref="sweet">
      <p style="font-size:16px;color:#7c7c7c;letter-spacing:4px">{{sweet}}</p>
    </sweet-modal>
  </div>
</template>

<script type="text/ecmascript-6">
import {changeWantGone} from 'api/common'
import {mapGetters} from 'vuex'
export default {
  name: 'iconList',
  props: {
    labels: {
      type: Array,
      default: []
    },
    addCount: {
      type: Boolean,
      default: false
    },
    destinationInfo: {
      type: Boolean,
      default: false
    },
    id: {
      type: Number ,
      default: 1
    },
    uid: {
      type: Number ,
      default: 1
    }
  },
  data(){
    return {
      showBg: [false,false,false],
      sweet: '关注成功'
    }
  },
  computed: {
    ...mapGetters([
      'user_id'
    ])
  },
  methods: {
    addNum(iconindex,$event) {
      var info = $event.target.nextElementSibling
      if(this.addCount){
        //如果是增加文章的点赞，收藏，浏览，送花，用这个
        if( iconindex== 0 ){
          var target = 'collect'
        }else if(iconindex==2 ){
          var target = 'praise'
        }else if(iconindex == 3){
          var target = 'flower'
        }
        changeWantGone(this.id,target,this.user_id,'changNum').then((res)=>{
          if(res.data.code == 5||res.data.code == 0){
            if(iconindex != 1){
              this.$set(this.showBg,iconindex,true)
            }
            info.innerHTML = parseInt(info.innerHTML)+1
          }else if(res.data.code == 2||res.data.code == 3){
            if(iconindex != 1){
              this.$set(this.showBg,iconindex,false)
            }
            info.innerHTML = parseInt(info.innerHTML) - 1
          }
        })
      }
      if(this.destinationInfo){
        //如果是目的地详情，添加我想去我去过，收藏
        if( iconindex==0 ){
          var target = 'collect'
        }else if( iconindex==1 ){
          var target = 'want'
        }else{
          var target = 'gone'
        } 
        changeWantGone(this.uid,target,this.user_id,'changeWantGone').then((res)=>{
          if(res.data.code == 5||res.data.code == 0){
            this.$set(this.showBg,iconindex,true)
            info.innerHTML = parseInt(info.innerHTML)+1
          }else if(res.data.code == 2||res.data.code == 3){
            this.$set(this.showBg,iconindex,false)
            info.innerHTML = parseInt(info.innerHTML) - 1
          }
        })
      }
    },
    init(){
      this.$set(this.showBg,0,false)
      this.$set(this.showBg,1,false)
      this.$set(this.showBg,2,false)
    }
  },
  watch: {
    '$route' (to, from) {
      // 对路由变化作出响应...
      this.init()
    }
  },
}
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
#iconList 
  .icon-list
    .item
      display inline-block
      font-family $font-theme
      cursor pointer
      &.num
        font-family 'Microsoft Yahei'
      .icon,.desc
        color $color-text
        font-size $font-size-large-xl
        margin-right 34px
      .icon
        margin-right 8px
        transition all .1s ease-out
        &.active
          background $color-theme
          border-radius 50%
          padding 7px
          font-size $font-size-large-xll
          trasfrom scale(1.2)
        &.active::hover
          transfrom rotate(360deg)
          
      .desc
        font-size $font-size-large
        font-weight 30
        text-shadow #cdcdcd 1px 0
      .desc2
        margin-left -30px
        margin-right 34px
</style>
