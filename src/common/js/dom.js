import {a_count,changeNum} from 'api/common'

export function hasClass (el, className) {
  let reg = new RegExp('(^|\\s)' + className + '(\\s|$)')
  return reg.test(el.className)
}
  
export function addClass (el, className) {
  if (hasClass(el, className)) {
    return
  }
  var newClass = el.className.split(' ')
  newClass.push(className)
  el.className = newClass.join(' ')
}

export function removeClass (el, className) {
  if (hasClass(el, className)) {
    var newClass = el.className.split(' ')
    var secondClass = []
    for (var i = 0; i < newClass.length; i++) {
      if (newClass[i] !== className) {
        secondClass.push(newClass[i])
      }
    }
    el.className = secondClass.join(' ')
  }
}

export function getData (el, name, val) {
  const prefix = 'data-'
  if (val) {
    return el.setAttribute(prefix + name, val)
  }
  return el.getAttribute(prefix + name)
}

let elementStyle = document.createElement('div').style

let vendor = (() => {
  let transformNames = {
    webkit: 'webkitTransform',
    Moz: 'MozTransform',
    O: 'OTransform',
    ms: 'msTransform',
    standard: 'transform'
  }

  for (let key in transformNames) {
    if (elementStyle[transformNames[key]] !== undefined) {
      return key
    }
  }

  return false
})()

export function prefixStyle (style) {
  if (vendor === false) {
    return false
  }

  if (vendor === 'standard') {
    return style
  }

  return vendor + style.charAt(0).toUpperCase() + style.substr(1)
}


//收藏，送花，点赞+1 -1的效果，以及数据库中数据的控制
export function check(params) {
  var userId = params.userId
  var id = params.id
  var $event = params.$event
  var className = params.className
  var i_index = params.i_index
  var object = $event.target
  var info = object.nextElementSibling
  if(hasClass(object,className)){
    removeClass(object,className)
    info.innerHTML = parseInt(info.innerHTML) - 1
    var num = info.innerHTML
    if(i_index == 1){
      a_count('praise',num,id)
      changeNum('praise',0,id,userId)
      //同时想另外一张表中删除点赞
    }else if(i_index ==2){
      a_count('flower',num,id)
      changeNum('flower',0,id,userId)
      //同时想另外一张表中删除送花
    }
    return false
  }
  addClass(object,className)
  info.innerHTML = parseInt(info.innerHTML)+ 1
  var count = info.innerHTML
  if(i_index == 1){
    //同时想另外一张表中插入点赞
    a_count('praise',count,id)
    changeNum('praise',1,id,userId)
    // a_Look('praise',count,id)
  }else if(i_index == 2){
    a_count('flower',count,id)
    changeNum('flower',1,id,userId)
    //同时向另外一张表中加入送花
  }
}

//增加浏览量
export function addLook(params) {
  var id= params.id
  var target = params.target
  var lookNum = target.children[0].children[1]
  lookNum.innerHTML = parseInt(lookNum.innerHTML) + 1
  a_count('look',lookNum.innerHTML,id)
}

//点击更多添加更多的游记
export function a_more(params){
  var datas = params.datas
  var target = params.target 
  var more = params.more
  if(datas.length != 0){
    for(var i =0;i<datas.length;i++){
      target.push(datas[i])
    }
  }else{
    return 1;
  }
}

export function userAgent() {
  var userAgent = navigator.userAgent; //取得浏览器的userAgent字符串
    var isOpera = userAgent.indexOf("Opera") > -1;
    if (isOpera) {
        return "Opera"
    }; //判断是否Opera浏览器
    if (userAgent.indexOf("Firefox") > -1) {
        return "FF";
    } //判断是否Firefox浏览器
    if (userAgent.indexOf("Chrome") > -1){
      return "Chrome";
    }
    if (userAgent.indexOf("Safari") > -1) {
        return "Safari";
    } //判断是否Safari浏览器
    if (userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1 && !isOpera) {
        return "IE";
    }; //判断是否IE浏览器
}

