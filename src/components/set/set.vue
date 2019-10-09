<template>
  <div id="set">
    <bg :bg="bg"></bg>
    <div class="main box-sizing">
      <div class="title-set">设置</div>
      <div class="tab">
        <ul class="list">
          <li @click="changeActive(index)" :class="{'active':activeIndex === index}" class="box-sizing item" v-for="(tab,index) in tabs" :key="index">{{tab}}</li>
        </ul>
      </div>
      <div class="content">
        <h2 class="title">我的信息</h2>
        <form v-show="activeIndex === 0" id="information" action="">
          <ul class="information">
            <li class="name">
              <span class="desc">昵称：</span>
              <input v-model="author"  class="inputBox" type="text" :placeholder="user.author !=''?user.author :'小小默默'">
            </li>
            <li class="name">
              <span class="desc">性别：</span>
              <input v-model="sex" value="0"  type="radio" name="sex" id="nv">
              <label for="nv"><span class="sex">女</span></label>
              <input v-model="sex" value="1" type="radio" name="sex" id="nan">
              <label  for="nan"><span class="sex">男</span></label>
            </li>
            <li class="name">
              <span class="desc">现居城市：</span>
              <input class="inputBox" type="text" :placeholder="user.city !=''?user.city:'游心小岛'" v-model="city">
            </li>
            <li class="name">
              <span class="desc">出生日期：</span>
              <input class="inputBox" type="date" v-model="date">
            </li>
            <li class="name">
              <span class="desc desc-SimpleDesc">个人简介：</span>
              <textarea class="box-sizing simpleDesc inputBox" id="" cols="30" rows="10" :placeholder="user.resume?'':'小小旅行家'" v-model="resume"></textarea>
            </li>
          </ul>
          <input @click="infSub" class="infSub" type="button" value="保存">
        </form>
        <form v-show="activeIndex === 1" id="image" action="">
          <div class="imgContent">
            <div class="img">
              <img class="sonImg1" v-lazy="imgDataUrl !=''?imgDataUrl: (user.authorImg?('http://139.196.72.67'+user.authorImg) :'http://139.196.72.67/api/public/static/image/defaultAuthorImg.jpg')" alt="">
            </div>
            <div class="img2">
              <img class="sonImg2" v-lazy="imgDataUrl !=''?imgDataUrl:(user.authorImg?('http://139.196.72.67'+user.authorImg) :'http://139.196.72.67/api/public/static/image/defaultAuthorImg.jpg')" alt="">
            </div>
            <my-upload field="upload" @crop-success="cropSuccess" @crop-upload-success="cropUploadSuccess" @crop-upload-fail="cropUploadFail" v-model="show" :width="300" :height="300" url="http://139.196.72.67/api/public/index.php/index/upload/authorImg"
              :withCredentials=true>
            </my-upload>
          </div>
          <input @click="toggleShow" class="imagefile" style="display:none" type="button" name="" id="">
          <input @click="clickFile" class="selectImg" type="button" value="选择图片">
          <input @click="imageSub" class="imageSub" type="button" value="保存">
        </form>
        <form v-show="activeIndex === 2" id="identity" action="">
          <ul>
            <li>
              <span class="desc">用户名：</span>
              <span class="middle name">{{user.username}}</span>
            </li>
            <li>
              <span class="desc">我的密码：</span>
              <input type="password" disabled class="middle myInf" value="123456">
              <span @click="showMyModal" class="change">修改</span>
            </li>
          </ul>
        </form>
      </div>
    </div>
    <sweet-modal class="change" ref="myModal" title="修改密码">
      <form class="myform">
        <div class="item">
          <label class="lab" for="inputEmail">我的账号：</label>
          <input type="text" placeholder="手机号" :value="user.username">
        </div>
        <div class="item">
          <label class="lab"  for="inputPassword">旧密码：</label>
          <input type="password" v-model="pswOld">
        </div>
        <div class="item">
          <label class="lab" for="inputPassword">新密码：</label>
          <input type="password" v-model="pswNew">
        </div>
        <div @click="sub" class="sub"  slot="button">确定</div>
      </form>
    </sweet-modal>
    <sweet-modal class="change" ref="relogin" title="">
      <form class="myform">
        请重新登陆！
        <div class="border"></div>
        <div @click="reLogin" class="sub border"  slot="button">确定</div>
      </form>
    </sweet-modal>
    <sweet-modal ref="modal" icon="success">
      <p style="font-size:18px;color:#7c7c7c">{{message}}</p>
    </sweet-modal>
    <sweet-modal ref="modalw" icon="warning">
      <p style="font-size:18px;color:#7c7c7c">{{message}}</p>
    </sweet-modal>
  </div>
</template>

<script type="text/ecmascript-6">
  import myUpload from 'vue-image-crop-upload';
  import {user,changeInfo,changeImg,c_psw} from 'api/set'
  import {mapGetters,mapMutations} from 'vuex'
  import md5 from 'js-md5'
  import Bg from 'base/bg/bg'
  export default {
    name: 'set',
    data() {
      return {
        bg: 'set2.jpg',
        id: 1,
        activeIndex: 0,
        tabs: ['我的信息', '我的图像', '我的账号'],
        show: false,
        imgDataUrl: '',
        img: '',
        message: '成功',
        user: '',
        date: '',
        city: '',
        author: '',
        resume:'',
        sex: '',
        pswOld: '',
        pswNew: ''
      }
    },
    created() {
      this.id = this.user_id
      this._user()
    },
    computed: {
      ...mapGetters([
        'user_id'
      ])
    },
    methods: {
      _user() {
        user(this.id).then((res)=>{
          if(res.data.code === 0){
            var data = res.data.user
            this.user= data
            this.date = data.birthday.split('/').join('-')
            this.city = data.city 
            this.resume = data.resume 
            this.author = data.author
            this.sex = data.sex
          }
        })
      },
      infSub() {
        changeInfo(this.id,this.author,this.sex,this.city,this.resume,this.date).then((res)=>{
          if(res.data==0){
            this.success('信息保存成功')
          }else {
            this.fail('信息保存失败')
          }
        })
      },
      imageSub() {
        if(this.img !=''){
          var img = '/api/public/authorImg/'+this.img
          changeImg(this.id,img).then((res)=>{
            if(res.data == 0){
              this.success('图像修改成功')
              this.setUserImg('http://139.196.72.67/'+img)
            }else{
              this.fail('图像修改失败')
            }
          })
        }else {
          this.fail('没有上传图片')
        }
      },
      sub() {
        var pswO = md5(this.pswOld)
        var pswN = md5(this.pswNew)
        if( pswO == ''|| pswN == ''){
          this.fail('旧密码或新密码不能为空！')
        }else if(pswO == pswN){
          this.fail('新密码不能和旧密码相同！')
        }else{
          c_psw(this.id,pswO,pswN).then((res)=>{
            if(res.data == 0){
              this.success('密码修改成功！')
              var self = this
              setTimeout(function(){
                self.$refs.myModal.close()
                self.$refs.modal.close()
                self.$refs.relogin.open()
              },1000)
            }else{
              this.fail('旧密码填写错误！')
            }
          })
        }
      },
      reLogin() {
        this.$refs.relogin.close()
        document.body.style.overflow = 'auto'
        this.setMode(0)
        window.localStorage.setItem('loginMode',0)
        this.$router.push({
          path: `/login`
        })
      },
      fail(Str) {
          var self = this
          this.message = Str
          this.$refs.modalw.open()
          setTimeout(function(){
            self.$refs.modalw.close()
          },2000)
      },
      success(Str) {
        var self = this
          this.message = Str
          this.$refs.modal.open()
          setTimeout(function(){
            self.$refs.modal.close()
          },2000)
      },
      changeActive(index) {
        this.activeIndex = index
      },
      clickFile() {
        $('.imagefile').click()
      },
      toggleShow() {
        this.show = !this.show;
      },
      cropSuccess(imgDataUrl, field) {
        this.imgDataUrl = imgDataUrl;
      },
      cropUploadSuccess(res) {
        this.img = res
      },
      cropUploadFail(status, field) {
        var self = this
        this.message = '裁剪失败'
        this.$refs.modal.open()
        setTimeout(function(){
            self.$refs.modal.close()
          },2000)
      },
      showMyModal() {
        var self = this
        this.$refs.myModal.open()
      },
      ...mapMutations({
        setUserImg: 'SET_USER_IMG',
        setMode: 'SET_MODE'
      })
    },
    watch: {
      '$route' (to, from) {
        this.id = this.user_id
        this._user()
      }
    },
    components: {
      'my-upload': myUpload,
      Bg
    }
  }
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
#set
  width 100%
  position relative
  top 0
  left 0
  z-index 0
  color $color-theme-d
  font-size 0
  background $color-text
  height 100%
  .change 
    .myform 
      margin-left 30px
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
  .top 
    height 100px
    position fixed 
    top 0 
    left 0 
    width 100%
    background $color-theme-d
  .main
    width w = 1000px
    margin 200px auto
    padding 50px 100px 60px 50px
    min-height 500px
    position relative 
    left 0 
    right 0 
    border-top 0
    background $color-text 
    border-radius 8px
    .title-set
      font-size $font-size-large-xl
      width 130px
      height 130px
      line-height 130px
      text-align center
      border-radius 50%
      background $color-theme-d 
      color $color-text
      position absolute
      left 50%
      margin-left -65px
      top -90px
      letter-spacing 8px
    .tab
      display inline-block
      vertical-align top
      margin-right 50px
      .list
        margin-top 20px
        .item
          width w1 = 200px
          height 40px
          line-height 40px
          text-align left 
          padding-left 15px
          font-size $font-size-large
          letter-spacing 5px
          color $color-theme-d
          font-weight normal
          box-sizing border-box
          cursor pointer
          margin-bottom 20px
          border-radius 8px
          border-bottom 1px solid $color-theme-d
          &.active
            color $color-text
            background $color-theme-d
            font-family $font-theme
    .content
      display inline-block
      width 550px
      vertical-align top
      .title
        width 500px
        font-size $font-size-large-x
        line-height 50px
        border-bottom 1px solid $color-theme-d
        font-weight normal
        padding-left 20px
        letter-spacing 5px
      #information
        margin-top 30px
        text-align center
        .information
          text-align left
          .name
            font-size $font-size-medium-x
            letter-spacing 5px
            line-height 48px
            .desc
              display inline-block
              width 150px
              text-align right
            .inputBox
              display inline-block
              width 300px
              height 30px
              border-radius 8px
              outline none
              padding 0 10px
              box-sizing border-box
              font-size $font-size-medium
              letter-spacing 3px
              color $color-text-d
              border-radius 8px
              border 1px solid $color-theme-d
              &.simpleDesc
                width 360px
                height 100px
                resize none
                vertical-align top
                padding 10px 20px
                line-height 20px
                text-indent 2em
                margin-top 20px
                border none
                letter-spacing 3px
                color $color-text-d
                border-radius 8px
                border 1px solid $color-theme-d
                &::-webkit-scrollbar
                  width 0
                $::-webkit-scrollbar-thumb
                  width 0
            .desc-SimpleDesc
              vertical-align top
              line-height 18px
              margin-top 20px
        .infSub
          width 200px
          height 40px
          margin 0 auto
          background $color-theme-d
          color $color-text
          font-weight bold
          font-family $font-theme
          font-size $font-size-large-x
          letter-spacing 8px
          border-radius 8px
          outline none 
          margin-top 40px
          cursor pointer
      #identity
        margin-top 80px
        padding-left 50px
        ul
          li
            font-size $font-size-medium-x
            span 
              display inline-block
            span.desc
              width 130px
              text-align right
              line-height 48px
              letter-spacing 5px
            .middle 
              width 200px
              margin-right 50px
            .myInf
              height 30px
              border 1px solid $color-theme-d 
              background $color-text
              border-radius 8px
              outline none
              padding 0 10px
              box-sizing border-box
              font-size $font-size-medium
              letter-spacing 3px
              color $color-theme-d
            span.change
              text-decoration underline
              cursor pointer
      #image 
        margin-top 50px
        padding-left 50px
        .imgContent
          .img
            width 180px
            height 180px
            display inline-block
            overflow hidden
            vertical-align top
            .sonImg1
              width 100%
              height 100%
          .img2
            vertical-align top
            display inline-block
            width 180px
            height 180px
            border-radius 50% 
            overflow hidden
            margin-left 66px
            .sonImg2
              width 100%
              height 100%
        .selectImg,.imageSub
          width 140px
          height 30px
          margin-top 39px
          font-size $font-size-large
          color $color-text
          background $color-theme-d
          cursor pointer
          border-radius 8px
          letter-spacing 5px
          outline none
          font-family $font-theme
        .imageSub
          width 200px
          height 40px
          font-size $font-size-large-xl
          color $color-text
          background $color-theme-d
          display block
          // margin-left 180px
          margin-top 40px
          
              

</style>
