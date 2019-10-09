import axios from 'axios'

let origin = 'http://139.196.72.67/api/public/index.php/index/index/'


//收藏，送花，点赞+1 -1的效果，以及数据库中数据的控制
export function check(params) {
  var $event = params.$event
  var className = params.className
  var object = $event.target
  var info = object.nextElementSibling
  if(hasClass(object,className)){
    removeClass(object,className)
    info.innerHTML = parseInt(info.innerHTML) - 1
    return false
  }
  addClass(object,className)
  info.innerHTML = parseInt(info.innerHTML)+ 1
}

//增加浏览量
export function a_count(look,count,id) {
  var url = origin+ 'addLookNum'

  return axios.get(url,{
    params:{
       id:id,
       count: count,
       target: look
    }
  }).then((res) => {
    return Promise.resolve(res)
  })
}

//增加浏览量
export function getD() {
  var url = origin+ 'getD'

  return axios.get(url).then((res) => {
    return Promise.resolve(res)
  })
}

export function changeNum(look,count,id,userId){
  var url = origin+ 'changNum'

  return axios.get(url,{
    params:{
       id:id,
       count: count,
       target: look,
       userId: userId
    }
  }).then((res) => {
    return Promise.resolve(res)
  })
}

//目的地详情的，收藏，我想去，我去过
export function changeWantGone(id,target,userId,Murl){
  var url = origin+ Murl

  return axios.get(url,{
    params:{
       id:id,
       target: target,
       userId: userId
    }
  }).then((res) => {
    return Promise.resolve(res)
  })
}
