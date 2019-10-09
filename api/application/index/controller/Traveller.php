<?php
namespace app\index\controller;
header('Access-Control-Allow-Origin:http://192.168.43.196:8000');  
// http://qxu1606520494.my3w.com/api/public/index.php/index/destination/index
class Traveller
{
    //最新游记和最热游记
    public function getTraveller() 
    {
        $travller = db('article')
        ->alias('a')
        ->join('icontime b', 'b.id=a.id')
        ->join('admin c', 'c.id=a.user_id')
        ->field('c.id,c.authorImg,c.author,count(c.username) num,c.username,b.collect,b.praise,b.look,b.flower')
        ->group('c.username')
        ->order('praise desc,look desc,collect desc,flower desc')
        ->limit(4)
        ->select();
        return json($travller);
    }
    

    //旅游家部分
    public function findTravellers() 
    {
        $user = db('articlenum')->order('num desc')->field('user_id')->select();
        $array = array();
        foreach($user as $val){
            //我的关注
            $val = $val['user_id'];
            $select = db('concern')->where(['who'=>$val])->select();
            if($select){
                $concern = intval(count($select));
            }else{
                $concern = 0;
            }
            //我被关注
            $selectB = db('concern')->where(['beconcern'=>$val])->select();
            if($selectB){
                $beconcern = intval(count($selectB));
            }else{
                $beconcern = 0;
            }
            //我发表文章的数量
            $datas = db('admin')
                ->alias('a')
                ->join('articlenum b','b.user_id = a.id')
                ->field('a.authorImg,a.author,a.city,a.resume,b.num,b.user_id')
                ->where(['b.user_id'=>$val])
                ->order('num desc')
                ->select();
            array_push($array,['datas'=>$datas,'concern'=>$concern,'beconcern'=>$beconcern]);
        }
        return json(['code'=>0,'datas'=>$array]);
    }


    //旅游家部分
    public function findT() 
    {
        //此方法可以去除相同的键值
        // db('concern')->field('beconcern')->distinct('true')->select();
        //以下的方法可以根据数量分组排序
        $user = db('concern')->field('count(beconcern) num,beconcern,who')->group('beconcern')->order('num desc')->select();
        $array = array();
        foreach($user as $val){
            //我的关注
            $val = $val['beconcern'];
            $select = db('concern')->where(['who'=>$val])->select();
            if($select){
                $concern = intval(count($select));
            }else{
                $concern = 0;
            }
            //我被关注
            $selectB = db('concern')->where(['beconcern'=>$val])->select();
            if($selectB){
                $beconcern = intval(count($selectB));
            }else{
                $beconcern = 0;
            }
            //我发表文章的数量
            $datas = db('admin')
                ->alias('a')
                ->join('articlenum b','b.user_id = a.id')
                ->field('a.authorImg,a.author,a.city,a.resume,b.num,b.user_id')
                ->order('num desc')
                ->where(['b.user_id'=>$val])
                ->select();
            array_push($array,['datas'=>$datas,'concern'=>$concern,'beconcern'=>$beconcern]);
        }
        return json(['code'=>0,'datas2'=>$array]);
        
        // return json(['code'=>0,'datas'=>$array]);
    }

}