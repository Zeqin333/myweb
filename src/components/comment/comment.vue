<template>
  <div id="comment">
    <div class="commentWrapper">
      <s-title :titleName="title" :whiteColor="true"></s-title>
      <form class="comment-form" action="">
        <div ref="comment" contentEditable class="comment box-sizing"></div>
        <div class="bottom clearfix">
          <div class="biaoqing">
            <i class="icon icon-biaoqing00"></i>
          </div>
          <input id="commentSub" type="button" value="提交">
        </div>
      </form>
    </div>
    <ul class="commentList clearfix">
      <li class="item" v-for="one in 4">
        <div class="content">
          <div class="wrapper">
            <div class="authorDesc">
              <img src="./authorImg.jpg" alt="">
              <p class="author">小小默默</p>
            </div>
            <div class="main">
              <p class="commentContent">哇，太喜欢你推荐的路线啦，真的是太好玩啦！</p>
              <div class="right">
                <span class="zan"><i class="icon-dianzan"></i>0</span>
                <span class="reply">回复</span>
              </div>
            </div>
          </div>
        </div>
        <div class="sonContainer">
          <ul class="sonList">
            <li class="son" v-for="one in 2">
              <div class="soncontent">
                <div class="sonauthorDesc">
                  <img src="./authorImg.jpg" alt="">
                  <p class="author">小小默默</p>
                </div>
                <div class="sonmain">
                  <p class="soncommentContent">哇，太喜欢你推荐的路线啦，真的是太好玩啦！</p>
                  <div class="sonright">
                    <span class="zan"><i class="icon-dianzan"></i>0</span>
                  </div>
                </div>
              </div>
            </li>
          </ul>
        </div>
      </li>
    </ul>
    <more></more>
  </div>
</template>

<script type="text/ecmascript-6">
  import sTitle from 'base/s-title/s-title'
  import More from 'base/more/more'
  export default {
    name: 'comment',
    data() {
      return {
        title: '评论区'
      }
    },
    components: {
      sTitle,
      More
    }
  }
</script>

<style lang="stylus" scoped>
@import '../../common/stylus/variable'
@import '../../common/stylus/mixin'
#comment 
  margin-bottom 100px
  text-align center
  .commentWrapper
    background $color-theme-d
    height 320px
    width 100%
    .comment-form
      min-width 1000px
      .comment
        margin 0 auto
        width 900px
        height 100px
        border 2px solid $color-theme
        border-radius 6px
        padding 10px
        font-size $font-size-medium
        color $color-text
        vertical-align middle
        letter-spacing 2px
        margin 30px auto 20px auto
        text-align left 
        outline none
        overflow-y scroll
        &::-webkit-scrollbar
          width 0px
        img
          vertical-align middle
          margin 0 4px
      .bottom
        width 920px
        margin 0 auto
        .biaoqing
          float left
          .icon
            font-size 35px !important
            color $color-text
            cursor pointer
            margin-left 30px
        #commentSub
          width 130px
          height 30px
          background $color-theme
          box-shadow 1px 1px 5px 1px $color-shadow
          font-size $font-size-medium-x
          color $color-text-d
          border-radius 5px
          letter-spacing 4px
          float right
          cursor pointer
          animate(.3s,-5px,1.05)
          outline none
  .commentList
    text-align center
    margin-top 80px
    .item
      width 100%
      min-width $min-width
      margin 0 auto 50px auto
      .content
        padding 8px 0
        background $color-text-ll
        .wrapper
          width 80%
          background $color-theme-d
          min-width 700px
          position relative 
          left 0 
          top 0
          min-height mw = 60px
          margin 0 auto
          border-radius 7px
          .authorDesc
            position absolute
            left 100px
            top -45px
            img 
              width 70px
              height 70px
              border-radius 50%
            .author
              font-size $font-size-medium-x
              color $color-text
              margin-top 10px
          .main
            .commentContent
              font-size $font-size-medium
              color $color-text
              line-height mw
              text-align left
              padding 0 200px
              float left
            .right
              float right
              line-height mw
              .zan,.reply
                font-size $font-size-medium
                color $color-text
                margin-right 30px
                cursor pointer
                vertical-align middle
              .zan
                i
                  font-size 40px
                  margin-right 10px
      .sonContainer
        margin 50px auto 0 auto  
        .sonList
          .son
            margin-bottom 30px
            .soncontent
              background $color-theme-d
              width 60%
              min-height sm = 60px
              margin 0 auto
              position relative 
              left 0
              top 0
              border-radius 7px
              .sonauthorDesc
                position absolute 
                left 80px
                top -25px
                img 
                  width 60px
                  height 60px
                  border-radius 50%
                .author
                  margin-top 6px
                  font-size $font-size-small
                  color $color-text
              .sonmain
                .soncommentContent
                  font-size $font-size-medium
                  color $color-text
                  line-height sm
                  text-align left
                  padding 0 100px 0 160px
                  float left
                .sonright
                  float right
                  line-height sm
                  .zan,.reply
                    font-size $font-size-medium
                    color $color-text
                    margin-right 40px
                    cursor pointer
                    vertical-align middle
                  .zan
                    i
                      font-size 35px
                      margin-right 10px


</style>
