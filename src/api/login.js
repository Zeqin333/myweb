import axios from 'axios'
import qs from 'qs'

let origin = 'http://139.196.72.67/api/public/index.php/index/index/'

//验证用户名是否存在
export function check_user(username) {
  var url = origin+ 'checkusername'
  
  return axios({
    method: 'post',
    url:url,
    data:qs.stringify({
      username: username
    })
  }).then((res) => {
    return Promise.resolve(res)
  })
}

//验证用户名是否存在
export function check_psw(username,psw) {
  var url = origin+ 'c_userpsw'

  return axios({
    method: 'post',
    url:url,
    data:qs.stringify({
      username: username,
      password: psw
    })
  }).then((res) => {
    return Promise.resolve(res)
  })
}

//注册用户，插入用户名和密码
export function insert(username,psw) {
  var url = origin+ 'insertup'

  return axios({
    method: 'post',
    url:url,
    data:qs.stringify({
      username: username,
      password: psw
    })
  }).then((res) => {
    return Promise.resolve(res)
  })
}