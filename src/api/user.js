import axios from 'axios'
import qs from 'qs'

let origin = 'http://139.196.72.67/api/public/index.php/index/user/'

//获取头像信息
export function user(id) {
  var url = origin+ 'user'

  return axios({
    method: 'post',
    url:url,
    data:qs.stringify({
      id: id
    })
  }).then((res) => {
    return Promise.resolve(res)
  })
}

//获取我的游记
export function myTravels(id,count) {
  var url = origin+ 'myTravels'

  return axios({
    method: 'post',
    url:url,
    data:qs.stringify({
      id: id,
      count:count
    })
  }).then((res) => {
    return Promise.resolve(res)
  })
}

//获取收藏、点赞、送花
export function cpf(id,count,condition) {
  var url = origin+ 'getCpf'
  condition = JSON.stringify(condition)
  return axios({
    method: 'post',
    url:url,
    data:qs.stringify(
    {
      id: id,
      count: count,
      condition:condition ,
    },
    {arrayFormat: 'brackets'}
  )
  }).then((res) => {
    return Promise.resolve(res)
  })
}

//获取我想去，我去过
export function getArea(id,c) {
  var url = origin+ 'getArea'
  c = JSON.stringify(c)
  return axios({
    method: 'post',
    url:url,
    data:qs.stringify({
      id: id,
      c: c
    },{arrayFormat: 'brackets'})
  }).then((res) => {
    return Promise.resolve(res)
  })
}


//关注
export function concern(id,userId) {
  var url = origin+ 'concern'

  return axios({
    method: 'post',
    url:url,
    data:qs.stringify({
      id: id,
      userId:userId
    })
  }).then((res) => {
    return Promise.resolve(res)
  })
}


//获取关注，被关注的数量
export function getConcern(id) {
  var url = origin+ 'getConcern'

  return axios({
    method: 'post',
    url:url,
    data:qs.stringify({
      id: id
    })
  }).then((res) => {
    return Promise.resolve(res)
  })
}

//获取我的活动，关注，报名
export function getActive(id,Murl,pre,limit) {
  var url = origin+ Murl

  return axios({
    method: 'post',
    url:url,
    data:qs.stringify({
      id: id,
      pre:pre,
      limit:limit
    })
  }).then((res) => {
    return Promise.resolve(res)
  })
}