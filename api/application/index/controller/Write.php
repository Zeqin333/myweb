<?php
namespace app\index\controller;
header('Access-Control-Allow-Origin:http://192.168.43.196:8000');  
// http://qxu1606520494.my3w.com/api/public/index.php/index/destination/index
class Write
{
    //最新游记和最热游记
    public function inputDatas() 
    {
        $id = input('id');
        $title = input('title');
        $article = input('article');
        $array = input('arr');
        $reg='/(\d+)/';
        preg_match_all($reg,$array,$arr);
        $arr = $arr[0];
        $time = input('time');
        $img = input('image');
        $c1 = db('article')->count();
        $c2 = db('icontime')->count();
        $c3 = db('destination')->count();
        if(!$img){
            $img = '/api/public/uploads/20180430/998c1ae92ab9d9160ed22c9a6f0e5f81.jpg';
        }
        // return json(['id'=>$id,'title'=>$title,'article'=>$article,'arr'=>$match[0],'time'=>$time,'img'=>$img]);
        $insert = db('article')->insert(['user_id'=>$id,'title'=>$title,'article'=>$article]);
        $insertT = db('icontime')->insert(['time'=>$time]);
        $insertD =db('destination')->insert(['address_area_id'=>$arr[0],'day'=>$arr[1],'money'=>$arr[2],'suitable_id'=>$arr[3],'season_id'=>$arr[4],'tripmode_id'=>$arr[5],'holiday_id'=>$arr[6],'month'=>$arr[7],'article_img'=>$img]);
        $c11 = db('article')->count();
        $c22 = db('icontime')->count();
        $c33 = db('destination')->count();
        $select = db('article')->order('id desc')->field('id')->limit(1)->select();
        if($c1<$c11&&$c2<$c22&&$c3<$c33){
            //成功之后向文章数量中添加文章数量，如果没有，就需要插入数量
            $inputNum = db('articlenum')->where(['user_id'=>$id])->field('num')->find();
            if($inputNum){
                $count = intval($inputNum['num'])+1;
                $change = db('articlenum')->where(['user_id'=>$id])->update(['num'=>$count]);
            }else{
                $insertN = db('articlenum')->insert(['user_id'=>$id,'num'=>'1']);
            }
            return json($select);
        }else{
            return 0;
        }
    }
}
