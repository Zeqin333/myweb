import axios from 'axios'
import qs from 'qs'

let origin = 'http://139.196.72.67/api/public/index.php/index/active/'

//发布活动
export function p_active(param) {
  var url = origin+ 'p_active'
  var src = JSON.stringify(param.src)
  return axios({
    method: 'post',
    url:url,
    data:qs.stringify({
      id: param.id ,
      title:param.t,
      contact:param.c,
      address:param.a,
      time:param.time,
      day: param.d,
      people:param.p,
      resume:param.r,
      img:src,
      star:param.star
    })
  }).then((res) => {
    return Promise.resolve(res)
  })
}

export function getA(address,num,list,pre,count){
  var url = origin+ 'getList'

  return axios({
    method: 'post',
    url:url,
    data:qs.stringify({
      address:address,
      num : num,
      count: count,
      pre: pre,
      list: list
    })
  }).then((res) => {
    return Promise.resolve(res)
  })
}


//获取热门地点
export function hot(address,num){
  var url = origin+ 'hot'

  return axios({
    method: 'post',
    url:url
  }).then((res) => {
    return Promise.resolve(res)
  })
}


//获取活动详情
export function getD(id){
  var url = origin+ 'getD'

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

//增加浏览量
export function addLook(id){
  var url = origin+ 'addLook'

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

//增加关注量
export function addConcern(id,user_id){
  var url = origin+ 'addConcern'

  return axios({
    method: 'post',
    url:url,
    data: qs.stringify({
      id: id,
      user_id:user_id
    })
  }).then((res) => {
    return Promise.resolve(res)
  })
}

//获取关注量和浏览量
export function getC(){
  var url = origin+ 'getC'
 
  return axios({
    method: 'post',
    url:url
  }).then((res) => {
    return Promise.resolve(res)
  })
}

//活动轮播图数据的获取
export function getSlider(){
  var url = origin+ 'getSlider'
 
  return axios({
    method: 'post',
    url:url
  }).then((res) => {
    return Promise.resolve(res)
  })
}