import axios from 'axios'
import qs from 'qs'
let origin = 'http://139.196.72.67/api/public/index.php/index/user/'

//获取头像信息
export function user(id) {
  var url = origin+ 'user'

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