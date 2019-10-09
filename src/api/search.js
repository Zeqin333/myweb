import axios from 'axios'
import qs from 'qs'
let origin = 'http://139.196.72.67/api/public/index.php/index/search/'

//搜索的条件
export function search() {
  var url = origin+ 'search'
  
  return axios({
    method: 'post',
    url:url
  }).then((res) => {
    return Promise.resolve(res)
  })
}

//list数据
export function list() {
  var url = origin+ 'lists'
  
  return axios({
    method: 'post',
    url:url
  }).then((res) => {
    return Promise.resolve(res)
  })
}

//根据条件搜索信息
export function c_search(arr,count) {
  var url = origin+ 'c_search'
  
  return axios({
    method: 'post',
    url:url,
    data:qs.stringify({
      arr: arr,
      count: count
    })
  }).then((res) => {
    return Promise.resolve(res)
  })
}