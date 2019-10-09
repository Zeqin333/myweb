import axios from 'axios'
import qs from 'qs'

let origin = 'http://139.196.72.67/api/public/index.php/index/travelnode/'

//获取游记
export function info(id) {
  var url = origin+ 'info'
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