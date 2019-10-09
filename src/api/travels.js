import axios from 'axios'
import qs from 'qs'

let origin = 'http://139.196.72.67/api/public/index.php/index/travels/'

//获取游记
export function getTravelNode() {
  var url = origin+ 'newAndHot'

  return axios({
    method: 'post',
    url:url
  }).then((res) => {
    return Promise.resolve(res)
  })
}

//增添最新最热游记
export function getAddT(index,count) {
  var url = origin + 'addTravels'
  var c_order = (index === 0 ? 'praise desc,look desc': 'time desc')
  return axios({
    method: 'post',
    url:url,
    data: qs.stringify({
      count: count,
      morder: c_order
    })
  }).then((res) => {
    return Promise.resolve(res)
  })
}