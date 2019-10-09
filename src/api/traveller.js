import axios from 'axios'
import qs from 'qs'

let origin = 'http://139.196.72.67/api/public/index.php/index/traveller/'

//获取游记
export function getT() {
  var url = origin+ 'getTraveller'

  return axios({
    method: 'post',
    url:url
  }).then((res) => {
    return Promise.resolve(res)
  })
}

//获取旅游家
export function findTravellers() {
  var url = origin+ 'findTravellers'

  return axios({
    method: 'post',
    url:url
  }).then((res) => {
    return Promise.resolve(res)
  })
}

//获取旅游家 根据被关注的人数
export function findT() {
  var url = origin+ 'findT'

  return axios({
    method: 'post',
    url:url
  }).then((res) => {
    return Promise.resolve(res)
  })
}