import axios from 'axios'
import qs from 'qs'

let origin = 'http://139.196.72.67/api/public/index.php/index/index/'

//首页轮播图
export function theme() {
  var url = origin+ 'theme'
  
  return axios({
    method: 'post',
    url:url
  }).then((res) => {
    return Promise.resolve(res)
  })
}