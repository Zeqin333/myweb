import axios from 'axios'
import qs from 'qs'
import {getNowFormatDate} from 'common/js/date.js'

let origin = 'http://139.196.72.67/api/public/index.php/index/write/'

//获取游记
export function inputDatas(id,title,article,arr,image) {
  var url = origin+ 'inputDatas'
  var time = getNowFormatDate()
  //如果传递的是数组，那么就需要提交将其用Json格式化一下数据
  arr = JSON.stringify(arr)
  return axios({
    method: 'post',
    url:url,
    data:qs.stringify({
      id: id,
      title:title,
      article:article,
      arr:arr,
      time:time,
      image:image
    })
  }).then((res) => {
    return Promise.resolve(res)
  })
}
