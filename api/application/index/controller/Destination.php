<?php
namespace app\index\controller;
header('Access-Control-Allow-Origin:http://192.168.43.196:8000');  
// http://qxu1606520494.my3w.com/api/public/index.php/index/destination/index
class Destination
{
    //轮播
    public function slider() 
    {
        $sliders = db('icontime')->alias('a')->join('destination b', 'b.id=a.id')->field('a.id,a.time,a.look,a.praise,b.article_img')->order('praise desc,look desc')->limit(4)->select();
        return json($sliders);
    }
    //热门搜索
    public function hotLabels() 
    {
        $sliders = db('icontime')
        ->alias('a')
        ->join('destination b', 'b.id=a.id')
        ->join('area c', 'c.id=b.address_area_id')
        ->field('a.look,c.id,count(c.area) num,c.area')
        ->group('c.area')
        ->order('look desc,num desc')
        ->field('area')
        ->limit(4)
        ->select();
        return json($sliders);
    }

    //热门目的地
    public function hotDest() 
    {
        $sliders = db('icontime')
        ->alias('a')
        ->join('destination b', 'b.id=a.id')
        ->join('area c', 'c.id=b.address_area_id')
        ->field('a.praise,a.look,b.article_img,c.id,count(c.area) num,c.area')
        ->group('c.area')
        ->order('praise desc,look desc')
        ->limit(8)
        ->select();
        return json($sliders);
    }

    //当季推荐
    public function recommends() 
    {
        // function getmonth(){
        //     $m1 = db('destination')->alias('a')->join('area b', 'b.id=a.address_area_id')->field('a.month,a.id,a.article_img,b.area')->order('month')->where(['month'=>'1'])->limit(4)->select();
        //     return $m1;
        // } 
        $arr = [1,2,3,4,5,6,7,8,9,10,11,12];
        $array = [];
        foreach($arr as $key => $val){
            $m1 = db('destination')->alias('a')->join('area b', 'b.id=a.address_area_id')->field('a.month,a.id,a.article_img,b.area')->order('month')->where(['month'=>$val])->limit(4)->select();
            array_push($array,$m1);
        }
        return json($array);
    }

    public function getAddress()
    {
        $select = db('address')->field("address")->select();//����
        // $insert = db('admin')->insert(['username'=>$username,'password'=>$password]);
        //$delete = db('admin')->where(['username'=>'999'])->delete();
        // $update = db('admin')->where(['username'=>'000'])->update(['password'=>'888']);
        return json($select);
    }

    public function getAreas()
    {
        $select = db('area')->field("id,address_id,area")->select();//����
        // $insert = db('admin')->insert(['username'=>$username,'password'=>$password]);
        //$delete = db('admin')->where(['username'=>'999'])->delete();
        // $update = db('admin')->where(['username'=>'000'])->update(['password'=>'888']);
        return json($select);
    }

//目的地详情
    //地址
    public function getArea()
    {
        $id = input('mid');
        $data = db('area')
                ->where(['id'=>$id])
                ->find();
        if($data){
            return json(['code'=>0,'data'=>$data]);
        }
    }

    //第一个筛选
    public function info()
    {
        $id = input('mid');
        $count = input('count');
        $pre = $count*1;
        $arr = array();
        $array = input('order/a');
        if($array){
            foreach($array as $val){
                $data = db('article')
                    ->alias('a')
                    ->join('destination b','b.id= a.id')
                    ->join('icontime c','c.id=a.id')
                    ->join('admin d','d.id = a.user_id')
                    ->field('a.id,a.title,a.article,b.article_img,b.address_area_id,b.money,b.day,b.suitable_id,b.season_id,b.tripmode_id,b.holiday_id,c.time,c.look,c.praise,c.flower')
                    ->order($val)
                    ->where(['address_area_id'=>$id])
                    ->limit($pre,9)
                    ->select();
                array_push($arr,$data);
            }
            return json(['code'=>0,'data'=>$arr]);
        }
    }

    //第二个筛选
    public function modeType()
    {
        $id = input('mid');
        $count = input('count');
        $pre = $count*1;
        $arr = array();
        $array = input('order/a');
        $map['address_area_id'] = $id;
        if($array){
            foreach($array as $key=>$val){
                if($pre == 0){
                    if($key == 0){
                        $map['suitable_id'] = array('lt',12);
                    }else if($key == 1){
                        $map['suitable_id'] = array('eq',12);
                        $map['season_id'] = array('lt',13);
                    }else if($key == 2){
                        $map['suitable_id'] = array('eq',12);
                        $map['season_id'] = array('eq',13);
                        $map['tripmode_id'] = array('lt',11);
                    }else{
                        $map['suitable_id'] = array('between','1,12');
                        $map['season_id'] = array('between','1,13');
                        $map['tripmode_id'] = array('between','1,11');
                        $map['holiday_id'] = array('lt',11);
                    }
                }else {
                    if($val == 'suitable_id'){
                        $map['suitable_id'] = array('lt',12);
                    }else if($val == 'season_id'){
                        $map['season_id'] = array('lt',13);
                    }else if($val == 'tripmode_id'){
                        $map['tripmode_id'] = array('lt',11);
                    }else{
                        $map['holiday_id'] = array('lt',11);
                    }
                }
                $data = db('article')
                    ->alias('a')
                    ->join('destination b','b.id= a.id')
                    ->join('icontime c','c.id=a.id')
                    ->join('admin d','d.id = a.user_id')
                    ->field('a.id,a.title,a.article,b.article_img,b.address_area_id,b.money,b.day,b.suitable_id,b.season_id,b.tripmode_id,b.holiday_id,c.time,c.look,c.praise,c.flower')
                    ->order('time desc')
                    ->where($map)
                    ->limit($pre,9)
                    ->select();
                array_push($arr,$data);
            }
            return json(['code'=>0,'data'=>$arr]);
        }
    }

    //获取收藏，想去，去过的数据
    public function getWant()
    {
        $id = input('id');
        $collect = db('wantgone')->where(['area_id'=>$id,'collect'=>'1'])->select();
        if(!$collect){
            $collect = 0;
        }else {
            $collect = count($collect);
        }
        $want = db('wantgone')->where(['area_id'=>$id,'want'=>'1'])->select();
        if(!$want){
            $want = 0;
        }else{
            $want= count($want);
        }
        $gone = db('wantgone')->where(['area_id'=>$id,'gone'=>'1'])->select();
        if(!$gone){
            $gone = 0;
        }else{
            $gone= count($gone);
        }
        return json(['code'=>0,'collect'=>$collect,'want'=>$want,'gone'=>$gone]);
    }
    
}
