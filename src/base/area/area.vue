<template>
  <div id="traveller">
    <ul class="list">
      <li @click="goto(item)" class="item" v-for="(item,index) in areas" :key="index">
        <img v-lazy="'http://139.196.72.67'+item.image" alt="">
        <p class="area">{{item.area}}</p>
      </li>
    </ul>
  </div>
</template>

<script type="text/ecmascript-6">
  import {getT} from 'api/traveller'
  import {ERR_OK} from 'api/config'
  export default {
    name: 'traveller',
    props: {
      areas: {
        type: Array,
        default: []
      }
    },
    methods: {
      goto(item) {
        this.$router.push({
          path: `/destination/${item.id}`
        })
      }
    }
  }
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
@import '../../common/stylus/mixin'
#traveller
  width 1240px
  margin 100px auto 80px auto
  .list
    display -webkit-box
    display -webkit-flex
    display -ms-flexbox
    display flex
    width 1000px
    margin 0 auto
    .item
      flex 1
      -ms-flex 1
      -webkit-flex 1
      justify-content center
      text-align center
      img
        width 130px
        height 130px
        border-radius 50%
        cursor pointer
        addScale()
      .area
        font-size $font-size-large
        color $color-text-d
        font-family $font-theme
        line-height 80px
        cursor pointer
</style>
