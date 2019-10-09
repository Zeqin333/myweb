import axios from 'axios'
import qs from 'qs'

let origin = 'http://139.196.72.67/api/public/index.php/index/tourismfunds/'

//游记
export function getMoneytype() {
  var url = origin+ 'moneytype'
  
  return axios({
    method: 'post',
    url:url
  }).then((res) => {
    return Promise.resolve(res)
  })
}

//点击加载更多
export function addTravel(count,moneytype_index) {
  var url = origin+ 'addTravels'
  
  return axios({
    method: 'post',
    url:url,
    data:qs.stringify({
      count: count,
      moneytype: moneytype_index
    })
  }).then((res) => {
    return Promise.resolve(res)
  })
}