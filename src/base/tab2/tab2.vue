<template>
  <div class="tab2-wrapper">
    <ul class="tab">
      <li :class="{'active':now_activeIndex === index}" @mouseenter="changeActive(index)"  @click="changeActive(index)" class="item" v-for="(item,index) in themeTabs">{{item}}</li>
    </ul>
  </div>
</template>

<script>
export default {
  props: {
    themeTabs: {
      type: Array,
      default: []
    },
    activeIndex: {
      type: Number,
      default: 0
    }
  },
  data() {
    return {
      now_activeIndex: this.activeIndex
    }
  },
  methods: {
    changeActive(index) {
      this.now_activeIndex = index
      this.$emit('change-active-index',this.now_activeIndex);
    }
  }
}
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
.tab2-wrapper
  text-align center
  .tab
    display inline-block
    margin 40px auto
    .item
      width 120px
      height 35px
      line-height 35px
      text-align center
      border-radius 7px
      color $color-text
      font-size $font-size-medium-x
      letter-spacing 5px
      background $color-theme-d
      display inline-block
      cursor pointer
      margin-right 30px
      transition-duration .3s
      &:hover
        transform translateY(-8px)
      &:hover,&.active
        transition-duration .2s
        background $color-theme
        color $color-theme-d
        box-shadow 1px 1px 5px 1px $color-shadow
      &:last-child
        margin-right 0 
</style>