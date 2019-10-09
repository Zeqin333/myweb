import axios from 'axios'
import qs from 'qs'

let origin = 'http://139.196.72.67/api/public/index.php/index/home/'

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

//最新游记
export function getNew() {
  var url = origin+ 'newtravels'
  
  return axios({
    method: 'post',
    url:url
  }).then((res) => {
    return Promise.resolve(res)
  })
}

//最新游记
export function getHot() {
  var url = origin+ 'hottravels'
  
  return axios({
    method: 'post',
    url:url
  }).then((res) => {
    return Promise.resolve(res)
  })
}

//热门目的地的推荐
export function hotDest() {
  var url = origin+ 'hotDest'
  
  return axios({
    method: 'post',
    url:url
  }).then((res) => {
    return Promise.resolve(res)
  })
}