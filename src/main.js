// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import 'babel-polyfill'
import promise from 'es6-promise'
import Vue from 'vue'
import App from './App'
import router from './router'
import store from './store'
import 'common/stylus/index.styl'
import attachFastClick from 'fastclick'
import $ from 'jquery'
import VueSummernote from 'vue-summernote'
import Carousel3d from 'vue-carousel-3d'
import SweetModal from 'sweet-modal-vue/src/plugin.js'
import axios from 'axios'
import VueLazyload from 'vue-lazyload'

//组件懒加载
Vue.use(VueLazyload, {
  preLoad: 1.3,
  error: '../static/error.jpg',
  loading: '../static/loading.gif',
  attempt: 1
})

promise.polyfill()
attachFastClick.attach(document.body)

axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';
Vue.prototype.$axios = axios;

Vue.use(SweetModal)
//自动滚动到顶部的方法
router.afterEach((to,from,next) => {
  window.scrollTo(0,0);
})
Vue.use(Carousel3d);

Vue.use(VueSummernote, {
  dialogsFade: true
})

Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,
  components: { App },
  template: '<App/>'
})
