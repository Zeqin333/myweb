<template>
  <div id="write">
    <div class="top">
      <img class="topImg" v-lazy="require('./topImg.jpg')" alt="">
      <div class="title-container">
        <span class="desc">标题：</span>
        <input ref="myTitle" type="text" class="title">
        <span class="limit">(最多30个字)</span>
      </div>
    </div>
    <div class="main">
      <m-title class="mtitle" :titleName="title" :iconType="2"></m-title>
      <div class="edit">
        <vue-core-image-upload
        credentials = true
        inputOfFile= "image"
        class="btn btn-primary upImage"
        :crop="false"
        @imageuploaded="imageuploaded"
        :max-file-size="5242880"
        url="http://139.196.72.67/api/public/index.php/index/upload/info" >
        </vue-core-image-upload>
        <div id="edit">
          <el-row :gutter="100">
            <el-col :span="24">
              <vue-summernote ref="editer"></vue-summernote>
            </el-col>
          </el-row>
        </div>
      </div>
    </div>
    <div class="selectLabel">
      <form action="">
        <ul class="list">
          <li class="item address">
            <p class="desc">地点</p>
            <select @change="indexChange(0,$event)" class="select" name="" id="">
              <optgroup :label="one.address" v-for="(one,index) in datas.address" :key="index"> 
                <option :data="item.id" v-if="one.id === item.address_id" :value="item.area" v-for="(item,index) in datas.area" :key="index">{{item.area}}</option>
              </optgroup>
            </select>
          </li>
          <li class="item wantdays">
            <p class="desc">出行天数</p>
            <input ref="dayC" class="days" type="text">
            <span class="unit">天</span>
          </li>
          <li class="item consume">
            <p class="desc">人均消费</p>
            <input ref="consumeC" type="text" class="my-consume">
            <span class="unit">元</span>
          </li>
          <li class="item address">
            <p class="desc">全年适宜</p>
            <select @change="indexChange(3,$event)" class="select" name="" id="">
              <option :data="item.id" :selected="{'selected':item.name === '不限'}" :value="item.name" v-for="(item,index) in datas.suitable" :key="index">{{item.name}}</option>
            </select>
          </li>
          <li class="item address">
            <p class="desc">适宜季节</p>
            <select @change="indexChange(4,$event)" class="select" name="" id="">
              <option :data="item.id" :selected="{'selected':item.name === '不限'}" :value="item.name" v-for="(item,index) in datas.season" :key="index">{{item.name}}</option>
            </select>
          </li>
          <li class="item address">
            <p class="desc">出行方式</p>
            <select @change="indexChange(5,$event)" class="select" name="" id="">
              <option :data="item.id" :selected="{'selected':item.name === '不限'}" :value="item.name" v-for="(item,index) in datas.tripmode" :key="index">{{item.name}}</option>
            </select>
          </li>
          <li class="item address">
            <p class="desc">适宜节假日</p>
            <select @change="indexChange(6,$event)" class="select" name="" id="">
              <option :data="item.id" :selected="{'selected':item.name === '不限'}" :value="item.name" v-for="(item,index) in datas.holiday" :key="index">{{item.name}}</option>
            </select>
          </li>
          <li class="item address">
            <p class="desc">月份</p>
            <select @change="indexChange(7,$event)" class="select" name="" id="">
              <option :data="item" :selected="{'selected':item === 13}" :value="item" v-for="(item,index) in 13" :key="index">{{item===13?'不限':item + '月'}}</option>
            </select>
          </li>
        </ul>
        <input @click="toPublic" type="button" value="发布" class="public">
        <!-- <input type="button" value="预览" class="preview">
        <input type="button" value="存入草稿箱" class="save"> -->
      </form>
    </div>
    <sweet-modal ref="modal" icon="success">
      <p style="font-size:18px;color:#7c7c7c">游记发布成功！</p>
    </sweet-modal>
  </div>
</template>

<script type="text/ecmascript-6">
import mTitle from 'base/title/title'
import {getD} from 'api/common'
import {inputDatas} from 'api/write'
import {ERR_OK} from 'api/config'
import VueCoreImageUpload from 'vue-core-image-upload'
import {mapMutations} from 'vuex'
export default {
  name: 'write',
  data() {
    return {
      title: '正文',
      datas: '',
      arr: [1,0,0,12,13,11,11,13],
      content: '',
      image: 'http://img1.vued.vanthink.cn/vued0a233185b6027244f9d43e653227439a.png',
      src: []
    }
  },
  created() {
    this.$nextTick(function() {
      this._getD()
    })
  },
  mounted () {
    const self = this
    const editer = self.$refs.editer
    editer.$on('onImageUpload', function (files) {
      self.$emit('imageuploaded')
    })
    editer.$on('onChange', function (contents) {
      self.content = contents
    })
  },
  methods: {
    _getD(){
      getD().then((res) =>{
        if (res.status === ERR_OK) {
          this.datas = res.data
        }
      })
    },
    indexChange(index,$event){
      var target = $event.target.selectedOptions[0].attributes[1].nodeValue
      this.arr[index] = target
    },
    toPublic(){
      var title = this.$refs.myTitle.value
      var user_id = window.localStorage.getItem('user_id')
      if(this.$refs.dayC.value !=''){
        this.arr[1] = this.$refs.dayC.value
      }
      if(this.$refs.consumeC.value !=''){
        this.arr[2] = this.$refs.consumeC.value
      }
      inputDatas(user_id,title,this.content,this.arr,this.src[0]).then((res)=>{
        if(res.data.length === 1){
          var id = res.data[0].id
          this.$refs.modal.open()
          var self = this
          this.timer = setTimeout(function(){
            self.$router.push({
              path: `/${id}`
            })
            self.$refs.modal.close()
            self.setId(id)
            window.localStorage.setItem('id',id)
          },1000)
        }
      })
    },
    imageuploaded(res) {
      this.image = 'http://139.196.72.67/api/public/uploads/'+res
      this.src.push('/api/public/uploads/'+res)
      this.$refs.editer.run('insertImage', this.image)
    },
    ...mapMutations({
      setId: 'SET_ID'
    })
  },
  destroyed() {
    this.timer
  },
  watch: {
    '$route' (to, from) {
      // 对路由变化作出响应...
      this.src=[]
    }
  },
  components: {
    mTitle,
    'vue-core-image-upload': VueCoreImageUpload
  }
}
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
@import '../../common/stylus/mixin'
#write 
  .top
    width 100%
    height 400px
    position relative
    .topImg
      width 100%
      height 100%
    .title-container
      position absolute 
      left 200px
      bottom 40px
      .desc,.title,.limit
        vertical-align middle
      .desc
        font-size $font-size-large-xll
        color $color-text
        letter-spacing 5px
      .title
        display inline-block
        width 600px
        height 40px
        border-radius 7px
        background $color-text-ll
        box-sizing border-box
        padding 0 10px
        outline none
        font-size $font-size-medium-x
        letter-spacing 2px
        color $color-text
        margin 0 20px 0 10px
      .limit
        font-size $font-size-medium
        color $color-text
        letter-spacing 5px
  .main
    width 1000px
    margin 0 auto
    .mtitle
      margin 30px auto 0 auto
    
    .edit
      width 1000px
      margin 10px auto 100px auto
      border-radius 10px 
      background $color-text
      position relative 
      left 0 
      top 0
      .upImage
        position absolute 
        top 7px
        width 35px
        height 50px
        background transparent
        left 570px
        z-index 9990
        border none
        font-size 0
      #edit 
        font-size 14px 
        color $color-text-d!important
  .selectLabel
    width 1000px
    margin 0 auto
    .list
      .item
        display inline-block
        text-align center 
        width 220px
        margin-right 10px
        font-size $font-size-medium-x
        color $color-text-d
        margin-bottom 30px
        &.consume
          margin-right 100px
        .desc
          line-height 35px
          font-size $font-size-medium-x
          color $color-text-d
        .select 
          width 200px
          height 35px
          border 1px solid $color-text-d
          border-radius 7px
          background $color-text
          outline none
          text-align center
          box-sizing border-box
          padding 0 20px
          option 
            width 100%
            height 40px 
            border 1px solid $color-text-d
            border-radius 7px
            background $color-text
            outline none
            text-align center
        .days,.my-consume
          width 150px
          height 25px
          border 1px solid $color-text-d
          border-radius 7px
          background $color-text
          outline none
          text-align center
        .unit
          font-size $font-size-medium-x
          color $color-text-d
    .public,.preview,.save
      width 130px
      height 35px
      background $color-theme-d
      color $color-text
      font-size $font-size-large
      border-radius 7px
      cursor pointer 
      ouline none
      display inline-block 
      vertical-align middle
      outline none
      box-shadow 1px 1px 5px 1px #cdcdcd
      margin 50px 50px 200px 0
      animate(.3s,-10px,1)
</style>
