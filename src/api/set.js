import axios from 'axios'
import qs from 'qs'
let origin = 'http://139.196.72.67/api/public/index.php/index/set/'

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


//修改我的信息
export function changeInfo(id,author,sex,city,resume,date) {
  var url = origin+ 'changeInfo'

  return axios({
    method: 'post',
    url:url,
    data:qs.stringify({
      id: id,
      author:author,
      sex:sex,
      city:city,
      resume:resume,
      date:date
    })
  }).then((res) => {
    return Promise.resolve(res)
  })
}


//修改我的图像
export function changeImg(id,img) {
  var url = origin+ 'changeImg'

  return axios({
    method: 'post',
    url:url,
    data:qs.stringify({
      id: id,
      img:img
    })
  }).then((res) => {
    return Promise.resolve(res)
  })
}

//修改我的密码
export function c_psw(id,pswO,pswN) {
  var url = origin+ 'changePsw'

  return axios({
    method: 'post',
    url:url,
    data:qs.stringify({
      id: id,
      pswO:pswO,
      pswN:pswN
    })
  }).then((res) => {
    return Promise.resolve(res)
  })
}
