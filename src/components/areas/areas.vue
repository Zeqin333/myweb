<template>
  <div id="areas">
    <m-title :titleName="title" :iconType="2" class="mTitle"></m-title>
    <div class="content clearfix">
      <div v-if="index < (parseInt(address.length/2)-1)" class="address1" v-for="(item,index) in address">
        <span class="title">{{item.address}}：</span>
        <ul class="list">
          <li @click="goto(one.id)" v-if="one.address_id == index+1" class="item" v-for="one in areas">{{one.area}}</li>
        </ul>
      </div>
      <div v-if="index >= (parseInt(address.length/2)-1)" class="address2" v-for="(item,index) in address">
        <span class="title">{{item.address}}：</span>
        <ul class="list">
          <li @click="goto(one.id)" v-if="one.address_id == index+1" class="item" v-for="one in areas">{{one.area}}</li>
        </ul>
      </div>
    </div>
  </div>
</template>

<script>
  import mTitle from 'base/title/title'
  export default {
    props: {
      title: {
        type: String,
        default: ''
      },
      address: {
        type: Array,
        default: []
      },
      areas: {
        type: Array,
        default: []
      }
    },
    methods: {
      goto(id) {
        this.$router.push(
          {
            path: `/destination/${id}`
          }
        )
      }
    },
    components: {
      mTitle
    }
  }
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
#areas
  text-align center
  padding-bottom 100px
  .mTitle
    margin-bottom 50px
  .content 
    width 1000px
    margin 0 auto 
    text-align left
    .address1,.address2
      display -webkit-box
      display -webkit-flex
      display -ms-flexbox
      display flex
      color $color-text-d
      width 500px
      float left
      .title
        font-size $font-size-large
        width 100px
        text-align right
        flex 0 0 100px
        -ms-flex 0 0 100px
        -webkit-flex 0 0 100px
        margin-right 10px
        letter-spacing 2px
      .list
        margin-bottom 20px
        flex 1
        flex-wrap wrap
        .item
          display inline-block
          font-size $font-size-medium-x
          cursor pointer
          flex 1
          -ms-flex 1
          -webkit-flex 1
          line-height $font-size-large
          // width 80px
          // flex 0 0 80px
          margin-right 20px
          margin-bottom 30px
          letter-spacing 2px
          &:hover 
            text-decoration underline
            color $color-theme-d
</style>
