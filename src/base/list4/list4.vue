<template>
  <div id="list4">
    <ul class="list">
      <li class="item" v-for="one in datas">
        <div class="imgWrapper">
          <img class="img" v-lazy="'http://139.196.72.67'+one.img" alt="">
        </div>
        <div class="desc">
          <div class="text">
            <p class="address">{{one.area}}</p>
            <div class="next">
              <p class="count">发起{{one.num}}个结伴</p>
              <p class="concern">{{one.concern}}人关注</p>
              <p class="enroll">{{one.joinNum}}人报名</p>
            </div>
          </div>
        </div>
      </li>
    </ul>
  </div>
</template>

<script type="text/ecmascript-6">
import {hot} from 'api/active'
export default {
  name: 'list4',
  data() {
    return {
      datas : []
    }
  },
  created() {
    this._getHot()
  },
  methods:{
    _getHot(){
      hot().then((res)=>{
        if(res.data.code === 0){
          this.datas = res.data.datas
        }
      })
    }
  }
}
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
@import '../../common/stylus/mixin'
#list4
  width 1240px 
  margin 0 auto 
  .list
    font-size $font-size-medium
    color $color-text
    text-align center
    .item
      display inline-block
      width 220px
      height 220px
      position relative
      margin 20px
      border-radius 8px
      cursor pointer
      transition-duration .3s
      &:hover
        transform translateY(-2px) scale(1.1)
        .imgWrapper
          .img
            transform scale(1.1)
      &:hover 
        .desc 
          background $color-background-d
          .text
            bottom 20px
            .next 
              bottom 0
      .imgWrapper
        width 220px
        height 220px
        overflow hidden
        margin auto
        border-radius 8px
        .img
          width 100%
          height 100%
          border-radius 8px
          transition-duration .3s
      .desc
        position absolute
        left 0 
        top 0
        border-radius 8px
        text-align left
        letter-spacing 3px
        line-height 17px
        width 100% 
        height 100%
        overflow hidden
        .text
          position absolute 
          bottom -30px 
          left 20px
          transition all .3s ease-in-out
          .address
            font-size $font-size-large-x
            font-weight bold
            margin-bottom 10px
          .next
            position relative
            bottom -30px 
            padding-left 10px
            transition all .3s ease-in-out
            &::before 
              content ''
              width 4px 
              height 50px 
              background $color-theme
              border-radius 2px
              position absolute 
              left 0 
              top 0
</style>
