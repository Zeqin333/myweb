<?php
namespace app\index\controller;
header('Access-Control-Allow-Origin:http://192.168.43.196:8000');  
// http://qxu1606520494.my3w.com/api/public/index.php/index/destination/index
class Set
{
    //获取我的头像信息
    public function user() 
    {   
        $id = input('id');
        $user = db('admin')->field('username,author,sex,birthday,authorImg,city,resume')->where(['id'=>$id])->find();
        return json(['code'=>0,'user'=>$user]);
    }

    //修改我的信息
    public function changeInfo() 
    {   
        $id = input('id');
        $author = input('author');
        $sex = input('sex');
        $city = input('city');
        $date = input('date');
        $resume = input('resume');
        if($author != ''){
            $map['author'] = $author;
        }
        if($sex != ''){
            $map['sex'] = $sex;
        }
        if($city != ''){
            $map['city'] = $city;
        }
        if($date != ''){
            $map['birthday'] = $date;
        }
        if($resume != ''){
            $map['resume'] = $resume;
        }
        $user = db('admin')->where(['id'=>$id])->update($map);
        $select = db('admin')->where(['id'=>$id,'author'=>$author])->select();
        return $select?0:1;
    }

    //修改我的头像
    public function changeImg() 
    {   
        $id = input('id');
        $img = input('img');
        if($img != ''){
            $map['authorImg'] = $img;
        }
        $user = db('admin')->where(['id'=>$id])->update($map);
        $select = db('admin')->where(['id'=>$id,'authorImg'=>$img])->select();
        return $select?0:1;
    }

    //修改我的密码
    public function changePsw() 
    {   
        $id = input('id');
        $pswO = input('pswO');
        $pswN = input('pswN');
        $check = db('admin')->where(['id'=>$id,'password'=>$pswO])->find();
        if($check){
            $check = db('admin')->where(['id'=>$id])->update(['password'=>$pswN]);
            return 0;
        }else{
            return 1;
        }
    }

}
