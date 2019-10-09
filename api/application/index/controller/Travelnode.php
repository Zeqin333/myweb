<?php
namespace app\index\controller;
header('Access-Control-Allow-Origin:http://192.168.43.196:8000');  
// http://qxu1606520494.my3w.com/api/public/index.php/index/destination/index
class Travelnode
{
    //获取游记的详情
    public function info() 
    {   
        $id = input('mid');
        $travel =db('article')
        ->alias('a')
        ->join('destination b', 'b.id=a.id')
        ->join('icontime c', 'c.id=a.id')
        ->join('admin d', 'd.id=a.user_id')
        ->join('area e','e.id = b.address_area_id')
        ->join('tripmode f','f.id = b.tripmode_id')
        ->field('a.id,a.title,a.article,b.money,b.month,b.day,c.collect,c.praise,c.look,c.flower,c.time,d.author,d.authorImg,e.area,f.name')
        ->where(['a.id'=>$id])
        ->select();
        return json(['code'=>0,'travel'=>$travel]);
    }
}
