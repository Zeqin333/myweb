<template>
  <div id="dslider">
    <carousel-3d styly="font-size:14px;color:#333;" class="carousel">
      <slide  class="slide" :index="index" v-for="(one,index) in hotDest" :key="index">
        <div @click="goto(one)" class="gb">
          <span class="top"></span>
          <span class="bottom"></span>
        </div>
        <p @click="goto(one)" class="address">{{one.area}}</p>
        <img @click="goto(one)" class="travelImg" v-lazy="'http://139.196.72.67'+one.article_img">
      </slide>
    </carousel-3d>
  </div>
</template>

<script type="text/ecmascript-6">
import { Carousel3d, Slide} from 'vue-carousel-3d';
import {mapMutations} from 'vuex'
export default {
  name: 'dslider',
  props: {
    hotDest: {
      type: Array,
      default: []
    }
  },
  methods:{
    goto(item) {
      this.$router.push({
        path: `/destination/${item.id}`
      })
      this.setDestInfo(item.id)
      window.localStorage.setItem('address_id',item.id)
    },
    ...mapMutations({
      setDestInfo: 'SET_DEST_INFO'
    })
  },
  components: {
    Carousel3d,
    Slide
  }
}
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
.carousel
  height 400px!important
  margin-left -70px
  .slide
    border-width 0!important
    width 500px!important
    height 350px!important
    cursor pointer
    &:hover
      .gb
        display block
        animation slide-fades .4s ease
        @keyframes slide-fades
          0%
            top -200px
            opacity 0
          100%
            top 0
            opacity 1
      .address
        display block
        animation slide-fade .4s ease
        @keyframes slide-fade
          0%
            left -200px
            opacity 0
          100%
            left 0
            opacity 1
    .travelImg
      width 100%
      height 100%
    .gb,.address
      position absolute
      left 0
      top 0
      width 100%
      z-index 9000
      transition-duration .3s
    .gb
      display none
      .top,.bottom
        display block
      .top
        height 80px
        background $color-background-td
      .bottom
        height 270px
        background $color-background-t
    .address
      display none
      position absolute
      left 0
      top 50%
      margin-top 20px
      width 100%
      text-align center
      letter-spacing 5px
      font-size $font-size-large-x
</style>
