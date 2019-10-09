<?php
namespace app\index\controller;
header('Access-Control-Allow-Origin:http://192.168.43.196:8000');  

class Search
{
    public function search() 
    {
        $datas = db('icontime')->alias('a')->join('destination b', 'b.id=a.id')->join('article c','c.id=a.id')->join('admin d','d.id=c.user_id')->field('a.id,a.time,b.article_img,c.title,c.article,d.username')->order(['time'=>'DESC'])->limit(9)->select();
        return json($datas);
    }

    public function lists()
    {
        $holiday = db('holiday')->field('name,id')->select();
        $suitable = db('suitable')->field('name,id')->select();
        $season = db('season')->field('name,id')->select();
        $tripmode = db('tripmode')->field('name,id')->select();
        return json(['code'=>0,'holiday'=>$holiday,'suitable'=>$suitable,'season'=>$season,'tripmode'=>$tripmode]);
    }

    public function c_search()
    {
        //想要直接获取数组的信息需要再数组后面加/a
        $arr = input('arr/a');
        $count = input('count');
        $pre = $count*1;
        // return typeof($arr[0]);//输出数组
        if($arr[0] != ''){
            $map['month'] = $arr[0];
        }
        if($arr[1] != ''){
            $map['holiday_id'] = $arr[1];
        }
        if($arr[2] != ''){
            $map['suitable_id'] = $arr[2];
        }
        if($arr[3] != ''){
            $map['season_id'] = $arr[3];
        }
        if($arr[4] != ''){
            $map['tripmode_id'] = $arr[4];
        }
        if($arr[5] != ''){
            $day = [array('elt',1),array('between',array(2,3)),array('between',array(4,5)),array('between',array(6,9)),array('between',array(10,15)),array('gt',15)];
            $map['a.day'] = $day[$arr[5]];
        }
        if($arr[6] != ''){
            $money = [array('elt',500),array('between',array(500,1000)),array('between',array(1000,2500)),array('between',array(2500,4000)),array('between',array(4000,5500)),array('between',array(5500,7000)),array('between',array(7000,8000)),array('gt',8000)];
            $map['a.money'] = $money[$arr[6]];
        }
        if($arr[0]==''&&$arr[1]==''&&$arr[2]==''&&$arr[3]==''&&$arr[4]==''&& $arr[5]==''&&$arr[6]==''){
            $select = db('destination')
            ->alias('a')
            ->join('article b','b.id = a.id')
            ->join('admin c','c.id=b.user_id')
            ->join('icontime d','d.id =a.id')
            ->field('a.id,a.month,a.holiday_id,a.suitable_id,a.season_id,a.tripmode_id,a.money,a.day,a.article_img,b.title,b.article,c.author,d.time')
            ->order('time desc')
            ->limit($pre,9)
            ->select();
        }else{
            $select = db('destination')
            ->alias('a')
            ->join('article b','b.id = a.id')
            ->join('admin c','c.id=b.user_id')
            ->join('icontime d','d.id =a.id')
            ->field('a.id,a.month,a.holiday_id,a.suitable_id,a.season_id,a.tripmode_id,a.money,a.day,a.article_img,b.title,b.article,c.author,d.time')
            ->order('time desc')
            ->where($map)
            ->limit($pre,9)
            ->select();
        }
        return json($select);
    }
}
