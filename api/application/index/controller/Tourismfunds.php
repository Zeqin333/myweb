<?php
namespace app\index\controller;
header('Access-Control-Allow-Origin:http://192.168.43.196:8000');  
// http://qxu1606520494.my3w.com/api/public/index.php/index/destination/index
class Tourismfunds
{
    //
    public function moneytype() 
    {  
        //['500元以下','500-1000元','1000-2500元','2500-4000元','4000-5500元','5500-7000元','7000-8000元','8000元以上']
        $array = array();
        $arr = [array('elt',500),array('between',array(500,1000)),array('between',array(1000,2500)),array('between',array(2500,4000)),array('between',array(4000,5500)),array('between',array(5500,7000)),array('between',array(7000,8000)),array('gt',8000)];
        foreach($arr as $val){
            $map['b.money'] = $val;
            $datas = db('article')
                    ->alias('a')
                    ->join('destination b', 'b.id=a.id')
                    ->join('icontime c', 'c.id=a.id')
                    ->join('admin d', 'd.id=a.user_id')
                    ->join('area e', 'e.id=b.address_area_id')
                    ->field('a.id,a.title,a.article,b.article_img,b.money,c.praise,c.look,c.flower,c.time,d.author,e.area')
                    ->order('time desc')
                    ->where($map)
                    ->limit(16)
                    ->select();
            array_push($array,$datas);
        }
        return json($array);
    }

    public function addTravels()
    {
        $count = input('count');
        $moneytype_index = input('moneytype');
        $limit = 6;
        $pre = $count*1;
        $arr = [array('elt',500),array('between',array(500,1000)),array('between',array(1000,2500)),array('between',array(2500,4000)),array('between',array(4000,5500)),array('between',array(5500,7000)),array('between',array(7000,8000)),array('gt',8000)];
        $map['b.money'] = $arr[$moneytype_index];
        $add = db('article')
            ->alias('a')
            ->join('destination b', 'b.id=a.id')
            ->join('icontime c', 'c.id=a.id')
            ->join('admin d', 'd.id=a.user_id')
            ->join('area e', 'e.id=b.address_area_id')
            ->field('a.id,a.title,a.article,b.article_img,b.money,c.praise,c.look,c.flower,c.time,d.username,e.area')
            ->order('time desc')
            ->where($map)
            ->limit($pre,$limit)
            ->select();
        return json($add);
    }

}
