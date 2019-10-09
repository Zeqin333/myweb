<template>
  <div id="login">
    <bg :bg="bg"></bg>
    <p class="err" v-if="err">{{errInfo}}<input @click="errsure" type="button" class="get" value="确定"></p>
    <div class="content">
      <p class="mmao">mytrip</p>
      <form action="" autocomplete="off">
        <ul class="list">
          <li class="item">
            <span class="desc">用户名：</span><input @focus="hide" @blur="c_user($event)" ref="user" v-model="username" class="username" name="user" type="text" placeholder="手机号">
          </li>
          <li class="item">
            <span class="desc">密码：</span><input @focus="hide" @blur="c_psw($event)" ref="psw" name="psw" class="password" v-model="password" type="password" placeholder="密码">
          </li>
        </ul>
        <input @click="totalCheck" type="button" value="注册" class="loginSub">
        <!-- <div class="forget">忘记密码？</div> -->
        <div @click="goto" class="regist">已经注册？登陆 >></div>
      </form>
    </div>
  </div>
</template>

<script type="text/ecmascript-6">
  import axios from 'axios'
  import md5 from 'js-md5'
  import {check_user,insert} from 'api/login'
  import Bg from 'base/bg/bg'
  export default {
    name: 'login',
    data() {
      return {
        err: false,
        bg: '3.jpg',
        username: '',
        password: '',
        errInfo: '此用户被注册过'
      }
    },
    methods: {
      goto() {
        this.$router.push({
          path: `/login`
        })
      },
      hide() {
        this.err=false
      },
      _errshow(Str) {
        this.err = true 
        this.errInfo = Str
      },
      c_user() {
        if (this.username != '') {
          check_user(this.username).then((res)=>{
            if (res.data == 1) {
              this._errshow('此用户名已注册')
            }
          })
        }else{
          this._errshow('用户名不能为空')
        }
      },
      c_psw() {
        if (this.password == ''){
          this._errshow('密码不能为空')
        }
      },
      totalCheck() {
        if(this.username != '' && this.password != ''){
          if(!this.err){
            insert(this.username,md5(this.password)).then((res)=>{
              if (res.data == 0) {
                this.goto()
              } else {
                this._errshow('注册失败，请重试')
              }
            })
          }
        }else{
          this._errshow('密码不能为空')
        }
      },
      errsure() {
        //提示用户名被注册过
        this.err = false
        this.username = ''
      }
    },
    watch: {
      '$route' (to, from) {
        this.username = ''
        this.password = ''
        this.err=false
      }
    },
    components: {
      Bg
    }
  }
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
@import '../../common/stylus/mixin'
#login
  position fixed 
  left 0 
  top 0 
  background $color-text
  width 100%
  height 100%
  min-width $min-width
  z-index 9999
  overflow hidden
  padding-bottom 200px
  text-align center
  .err 
    position absolute
    top 0
    bottom 0 
    width 100%
    height 50px
    line-height 50px
    text-align center
    z-index 9998
    background $color-theme
    font-size $font-size-medium
    color red
    letter-spacing 5px
    .get 
      width 60px
      height 30px
      line-height 30px
      background $color-theme-d 
      color $color-text
      border-radius 8px
      float right
      margin-right 100px
      margin-top 10px
      cursor pointer
  .content 
    width 1px
    height 344px
    margin 60px auto 0 auto
    position relative
    .mmao
      z-index 9990
      left 50%
      font-size 90px
      color $color-theme
      font-family $font-theme
      margin-left -120px
      transform translateY(0) scale(1)
      animation slide .6s ease-in-out
      @keyframes slide
        0%
          transform translateY(150px) scale(2)
        100%
          transform translateY(0) scale(1)
    form 
      z-index 9989
    .mmao,form 
      vertical-align top
      position absolute 
    form
      width 500px
      height 344px
      box-sizing border-box
      top 50% 
      margin-top -50px
      // padding-top 100px
      left 50% 
      margin-left  -250px
      background $color-background-d
      animation slide2 .6s ease-in-out
      border-radius 8px
      @keyframes slide2
        0%
          transform scale(0) 
        100%
          transform scale(1)
      .list
        margin-top 80px 
        text-align center
        .item
          margin-bottom 30px  
          .desc,input 
            vertical-align middle
          .desc 
            width 80px
            display inline-block
            font-size $font-size-large
            color $color-text
            text-align right
            margin-right 15px
            margin-top 10px
          input 
            width 300px 
            height 40px
            border-radius 10px 
            border-bottom 2px solid $color-theme
            font-size $font-size-medium-x
            color $color-text
            background  transparent
            outline none
            box-sizing border-box
            padding 0 20px
            animate(.3s,-2px,1)
            &:-webkit-autofill
              -webkit-box-shadow 0 0 0px 1000px cc inset
              border-bottom 1px solid $color-theme-d !important
      .loginSub
        width 300px
        height 40px
        border-radius 10px 
        border none
        font-size $font-size-large
        color $color-theme-d
        font-weight bold
        background  $color-theme
        outline none
        margin-left 90px
        cursor pointer
        animate(.3s,-5px,1)
        margin-top 13px
        letter-spacing 20px
      .forget,.regist
        display inline-block
        position absolute 
        bottom 20px
        font-size $font-size-medium-x
        color $color-text
        cursor pointer
      .regist 
        right 10px 
      .forget
        left 80px
</style>
