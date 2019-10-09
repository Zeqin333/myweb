<template>
  <div id="traveller">
    <ul class="list">
      <li @click="goto(item)" class="item" v-for="(item,index) in traveller" :key="index">
        <img v-lazy="item.authorImg !=''?'http://139.196.72.67'+item.authorImg:'http://139.196.72.67/api/public/static/image/defaultAuthorImg.jpg'" alt="">
        <p class="author">{{item.author !=''?item.author :'旅游爱好者'}}</p>
      </li>
    </ul>
  </div>
</template>

<script type="text/ecmascript-6">
  import {getT} from 'api/traveller'
  import {ERR_OK} from 'api/config'
  import {mapMutations} from 'vuex'
  export default {
    name: 'traveller',
    data() {
      return {
        traveller: []
      }
    },
    created() {
      this.$nextTick(function(){
        this._getT()
      })
    },
    methods: {
      _getT(){
        getT().then((res)=>{
          if(res.status === ERR_OK){
            this.traveller = res.data
          }

        })
      },
      goto(item) {
        this.$router.push({
          path: `/center/${item.id}`  
        })
        this.setAuthorId(item.id)
        window.localStorage.setItem('author_id',item.id)
      },
      ...mapMutations({
        setAuthorId: 'SET_AUTHOR_ID'
      })
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
    display flex
    width 1000px
    margin 0 auto
    .item
      flex 1
      justify-content center
      text-align center
      img
        width 180px
        height 180px
        border-radius 50%
        cursor pointer
        addScale()
      .author
        font-size $font-size-large-x
        color $color-text-d
        font-family $font-theme
        line-height 80px
        cursor pointer
</style>
