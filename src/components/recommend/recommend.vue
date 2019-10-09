<template>
  <div id="recommend">
    <ul class="list">
      <li @mouseover="onmouseover($event)" @mouseout="onmouseout($event)" @click="goto(mitem)" class="item" v-for="mitem in recommendAddress">
        <img v-lazy="'http://139.196.72.67'+mitem.article_img" alt="推荐景点图片">
        <div class="bg"></div>
        <p class="desc">{{mitem.address}}</p>
      </li>
    </ul>
  </div>
</template>

<script type="text/ecmascript-6">
  export default {
    name: 'mlabel',
    props: {
      recommendAddress: {
        type: Array,
        default: []
      }
    },
    methods: {
      onmouseover($event) {
        $event.currentTarget.className = "item active"
      },
      onmouseout($event) {
        $event.currentTarget.className = "item"
      },
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
#recommend
    text-align center
    height 400px
    overflow hidden
    .list
      display flex
      flex-wrap wrap
      .item
        flex 0 0 25%
        width 25%
        height 200px
        position relative
        left 0
        top 0
        cursor pointer
        overflow hidden
        &.active
          .bg
            background $color-background-d
            width 100%
            height 100%
            position absolute
            left 0
            top 0
            animation slide-fade .3s ease
            @keyframes slide-fade
              0%
                top -200px
                opacity 0
              100%
                top 0
                opacity 1
          .desc
            position absolute
            left 30px
            bottom 30px
            color $color-text
            font-size $font-size-large
            animation slide-fade .4s ease
            @keyframes slide-fade
              0%
                bottom 200px
                opacity 0
                tansform scale(0)
              100%
                bottom 30px
                opacity 1
                tansform scale(1)
        img
          width 100%
          height 100%
</style>
