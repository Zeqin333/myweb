<template>
  <div id="publicActive">
    <bg :bg="bg"></bg>
    <div class="main box-sizing">
      <div class="title">发布活动</div>
      <form action="">
        <ul class="list">
          <li class="item">
            <span class="desc">*{{desc[0]}}：</span>
            <input v-model="title" class="inputBox" type="text" name="" id="">
          </li>
          <li class="item">
            <span class="desc">*{{desc[1]}}：</span>
            <input v-model="contact" class="inputBox" type="text" name="" id="">
          </li>
          <li class="item">
            <span class="desc">*{{desc[2]}}：</span>
            <select @change="sindexChange($event)" class="select inputBox" name="" id="">
              <optgroup :label="one.address" v-for="(one,index) in datas.address" :key="index"> 
                <option :data="item.id" v-if="one.id === item.address_id" :value="item.area" v-for="(item,index) in datas.area" :key="index">{{item.area}}</option>
              </optgroup>
            </select>
          </li>
          <li class="item">
            <span class="desc">*{{desc[3]}}：</span>
            <select @change="indexChange($event)" class="select inputBox" name="" id="">
              <optgroup :label="one.address" v-for="(one,index) in datas.address" :key="index"> 
                <option :data="item.id" v-if="one.id === item.address_id" :value="item.area" v-for="(item,index) in datas.area" :key="index">{{item.area}}</option>
              </optgroup>
            </select>
          </li>
          <li class="item">
            <span class="desc">*{{desc[4]}}：</span>
            <input v-model="time" class="inputBox" type="date" name="" id="">
          </li>
          <li class="item">
            <span class="desc">*{{desc[5]}}：</span>
            <input v-model="day" id="activeDate"  class="inputBox " type="text" name="">
            <span class="unit">天</span>
          </li>
          <li class="item personNum">
            <span class="desc">*{{desc[6]}}：</span>
            <input v-model="people" id="personNum" class="inputBox" type="text" name="">
            <span class="unit">人</span>
          </li>
          <li class="item desc-simpleDesc">
            <span class="desc">*{{desc[7]}}：</span>
            <textarea v-model="resume" class="simpleDesc" name="" id="" cols="30" rows="10"></textarea>
          </li>
          <li class="item addImg clearfix">
            <span class="desc">添加图片：</span>
            <div class="right">
              <div v-if="image.length>0" class="img-container">
                <img v-for="(one,index) in image" :key="index" v-lazy="'http://139.196.72.67/api/public/uploads/'+one" alt="">
              </div>
              <div @click="clickFile" class="content">
                <span class="add">+</span>
                <vue-core-image-upload 
                  credentials = true
                  inputOfFile= "image"
                  class="btn btn-primary upImage"
                  :crop="false"
                  @imageuploaded="imageuploaded"
                  :max-file-size="5242880"
                  url="http://139.196.72.67/api/public/index.php/index/upload/info" >
                </vue-core-image-upload>
              </div>
            </div>
          </li>
        </ul>
        <input @click="publicActive" id="public" type="button" value="发布">
      </form>
      <sweet-modal ref="modal" icon="success">
        <p style="font-size:18px;color:#7c7c7c">游记发布成功！</p>
      </sweet-modal>
      <sweet-modal class="change" ref="relogin" title="">
        <form class="myform">
          {{sweet}}
          <div class="border"></div>
          <div @click="reLogin" class="sub border"  slot="button">确定</div>
        </form>
      </sweet-modal>
    </div>
  </div>
</template>

<script type="text/ecmascript-6">
  import Bg from 'base/bg/bg'
  import {getD} from 'api/common'
  import {ERR_OK} from 'api/config'
  import VueCoreImageUpload from 'vue-core-image-upload'
  import {mapGetters} from 'vuex'
  import {p_active} from 'api/active'
  export default {
    name: 'publicActive',
    data() {
      return {
        bg: 'set1.jpg',
        datas: [],
        star:1,
        arr: 1, //地点的选择
        image : [],
        src : [],
        desc: ['活动标题','联系方式','出发地点','目的地','出发时间','活动天数','限制人数','结伴描述'],
        title: '',
        contact: '',
        time: '',
        day: '',
        people: '',
        resume: '',
        sweet: ''
      }
    },
    created() {
      this.$nextTick(function() {
        this._getD()
      })
    },
    computed: {
      ...mapGetters([
        'user_id'
      ])
    },
    methods: {
      _getD(){
        getD().then((res) =>{
          if (res.status === ERR_OK) {
            this.datas = res.data
          }
        })
      },
      clickFile() {
        $('.file').click()
      },
      indexChange($event){
        this.arr = $event.target.selectedOptions[0].attributes[1].nodeValue
      },
      sindexChange($event){
        this.star = $event.target.selectedOptions[0].attributes[1].nodeValue
      },
      imageuploaded(res) {
        this.image.push(res)
        this.src.push('/api/public/uploads/'+res)
      },
      publicActive(){
        //提交表单
        var params = {
          id: this.user_id,
          t: this.title,
          c:this.contact,
          a:this.arr,
          time:this.time,
          d:this.day,
          p:this.people,
          r:this.resume,
          src: this.src,
          star:this.star
        }
        if(this.user_id!=''&&this.title!=''&&this.contact!=''&&this.time!=''&&this.day!=''&&this.people!=''&&this.resume!=''&&this.arr!=''&&this.star!=''){
          p_active(params).then((res)=>{
            if(res.data.code===0){
            this.title= ''
            this.contact =''
            this.arr= 1
            this.time=''
            this.day=''
            this.people=''
            this.resume=''
            this.src=[]
            this.star=1
            var id = res.data.id
            this.$refs.modal.open()
            var self = this
            this.timer = setTimeout(function(){
              self.$router.push({
                path: `/findCompanion/${id}`
              })
              self.$refs.modal.close()
            },1000)
            }else{
              this.sweet = '未发布成功，请重新发布！'
              this.$refs.relogin.open()
            }
          })
        }else{
          this.sweet = '每一项不能为空！'
          this.$refs.relogin.open()
        }
      },
      reLogin() {
        this.$refs.relogin.close()
        document.body.style.overflow = 'auto'
      }
    },
    components: {
      Bg,
      'vue-core-image-upload': VueCoreImageUpload
    }
  }
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
@import '../../common/stylus/mixin'
#publicActive
  width 100%
  position relative
  top 0
  left 0
  z-index 0
  color $color-theme-d
  font-size 0
  .main
    width w = 1000px
    margin 240px auto
    background $color-text
    padding 60px 100px
    min-height 500px
    position relative
    letter-spacing 3px
    border-radius 8px
    .title
      font-size $font-size-large-xl
      width 160px
      height 160px
      line-height 160px
      text-align center
      border-radius 50%
      background $color-theme-d 
      color $color-text
      position absolute
      left 50%
      margin-left -80px
      top -100px
      letter-spacing 8px
    form
      margin-top 30px 
      text-align center
      padding-bottom 50px
      .list
        text-align left
        .item
          line-height 50px
          .desc,.inputBox
            display inline-block
          .desc
            width 200px
            margin-right 10px
            text-align right
            font-size $font-size-large
          .inputBox
            width 400px
            height 35px
            border-radius 6px
            background $color-text 
            border 1px solid $color-theme-d
            color $color-text-d
            outline none
            font-size $font-size-medium-x
            box-sizing border-box 
            padding 0 10px
            letter-spacing 2px
          .unit
            font-size $font-size-medium-x
            margin-left 6px
          #activeDate,#personNum
            width 100px
        .desc-simpleDesc
          .desc
            line-height 20px
          .desc,.simpleDesc
            vertical-align top
          .simpleDesc
            width 500px
            height 300px
            border-radius 8px
            background $color-text
            border 1px solid $color-theme-d
            box-sizing border-box 
            font-size $font-size-medium-x
            padding 10px 20px
            line-height 20px
            text-indent 2em 
            outline none 
            color $color-text-d
            resize none
            letter-spacing 2px
            &::-webkit-scrollbar
              width 0
            $::-webkit-scrollbar-thumb
              width 0
        .addImg
          .desc
            margin-top 20px
          .desc, .right 
            vertical-align top
          .right 
            display inline-block
            width 550px
            margin-top 40px
            
            .img-container 
              width 550px
              img 
                width 100px
                height 100px
                border-radius 8px
                margin -10px 30px 10px 0
                display inline-block
            .content
              width 100px
              height 100px 
              line-height 80px
              border 3px solid $color-theme 
              border-radius 8px
              text-align center
              vertical-align top
              cursor pointer
              position relative 
              left 0 
              top 0
              .upImage
                width 100px 
                height 100px 
                upImage()
                left 0 
                top 0
              .add 
                diplay block
                font-size 130px
      #public 
        width 200px
        height 40px
        background $color-theme
        color $color-theme-d 
        font-size $font-size-large-x
        letter-spacing 8px
        cursor pointer 
        border-radius 6px
        margin 80px auto 0 auto
        shadow()
        
    .change
      padding-bottom -64px
      .myform 
        margin-left 30px
        padding-bottom 0
        .item 
          font-size $font-size-medium-x
          margin-bottom 10px
          letter-spacing 3px
          .lab 
            width 100px 
            text-align right
          input 
            border-bottom 1px solid $color-theme-d 
            border-radius 8px 
            width 300px 
            height 30px
            padding 0 20px
        .border 
          border 1px solid #eeeeee 
          margin 40px 0 0 0
        .sub 
          display inline-block
          width 130px
          height 35px
          line-height 35px
          letter-spacing 10px
          font-size $font-size-large
          color $color-text 
          background $color-theme-d
          margin 40px 0 10px 0
          border-radius 8px
          float right
          text-align center
          cursor pointer
          &.border 
            margin-top 13px
</style>
