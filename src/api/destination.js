import axios from 'axios'
import qs from 'qs'

let origin = 'http://139.196.72.67/api/public/index.php/index/destination/'

//首页轮播图
export function getSliders() {
  var url = origin+ 'slider'

  return axios({
    method: 'post',
    url:url
  }).then((res) => {
    return Promise.resolve(res)
  })
}

//搜索的热门标签
export function getHotLabels() {
  var url = origin+ 'hotLabels'
  
  return axios({
    method: 'post',
    url:url
  }).then((res) => {
    return Promise.resolve(res)
  })
}

//热门目的地
export function getHotDest() {
  var url = origin+ 'hotDest'

  return axios({
    method: 'post',
    url:url
  }).then((res) => {
    return Promise.resolve(res)
  })
}

//当地推荐
export function getRecommends() {
  var url = origin+ 'recommends'
  
  return axios({
    method: 'post',
    url:url
  }).then((res) => {
    return Promise.resolve(res)
  })
}

//全国目的地(省)
export function getAddress() {
  var url = origin+ 'getAddress'
  
  return axios({
    method: 'post',
    url:url
  }).then((res) => {
    return Promise.resolve(res)
  })
}

//全国目的地(市)
export function getAreas() {
  var url = origin+ 'getAreas'
  
  return axios({
    method: 'post',
    url:url
  }).then((res) => {
    return Promise.resolve(res)
  })
}

//目的地详情列表
//获取地点
export function getArea(id) {
  var url = origin+ 'getArea'
  
  return axios({
    method: 'post',
    url:url,
    data: qs.stringify({
      mid: id
    })
  }).then((res) => {
    return Promise.resolve(res)
  })
}
//游记
export function info(id,count,order) {
  var url = origin+ 'info'
  
  return axios({
    method: 'post',
    url:url,
    data:qs.stringify({
      mid: id,
      count: count,
      order: order
    })
  }).then((res) => {
    return Promise.resolve(res)
  })
}

//适宜季节
export function modeType(id,count,order) {
  var url = origin+ 'modeType'
  
  return axios({
    method: 'post',
    url:url,
    data:qs.stringify({
      mid: id,
      count: count,
      order: order
    })
  }).then((res) => {
    return Promise.resolve(res)
  })
}

//获取收藏，想去，去过的数量
export function getWant(id){
  var url = origin+ 'getWant'
  
  return axios({
    method: 'post',
    url:url,
    data: qs.stringify({
      id: id
    })
  }).then((res) => {
    return Promise.resolve(res)
  })
}