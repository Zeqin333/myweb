<?php
namespace app\index\controller;
header('Access-Control-Allow-Origin:http://192.168.43.196:8000');  
// http://qxu1606520494.my3w.com/api/public/index.php/index/destination/index
class User
{
    //获取我的头像信息
    public function user() 
    {   
        $id = input('id');
        $user = db('admin')->field('author,authorImg,city')
        ->where(['id'=>$id])->find();
        return json(['code'=>0,'user'=>$user]);
    }

    //获取我的游记
    public function myTravels() 
    {   
        $id = input('id');
        $count = input('count');
        $pre = $count *1;
        $travel = db('article')
                ->alias('a')
                ->join('destination b', 'b.id=a.id')
                ->join('icontime c', 'c.id=a.id')
                ->join('admin d', 'd.id=a.user_id')
    ->field('a.id,a.title,a.article,b.article_img,c.praise,c.look,c.flower,c.time,d.author')
                ->where(['d.id'=>$id])
                ->order('time desc')
                ->limit($pre,4)
                ->select();
        return json(['code'=>0,'travel'=>$travel]);
    }

    //我的收藏，点赞，送花
    public function getCpf()
    {   
        $id = input('id');
        $count = input('count');
        $condition = input('condition');
        $pre = $count *1;
        $reg="/,/";
        $array = preg_split($reg,$condition);
        $arr = array();
        $map['e.user_id'] = $id;
        foreach($array as $key => $val){
            if($pre == 0){
                if($key == 0){
                    $map['e.collect'] = array('eq',1);
                }else if($key == 1){
                    $map['e.collect'] = array('elt',1);
                    $map['e.praise'] = array('eq',1);
                }else if($key == 2){
                    $map['e.collect'] = array('elt',1);
                    $map['e.praise'] = array('elt',1);
                    $map['e.flower'] = array('eq',1);
                }
            }else {
                if($val == 'collect'){
                    $map['e.collect'] = array('eq',1);
                }else if($val == 'praise'){
                    $map['e.praise'] = array('eq',1);
                }else if($val == 'flower'){
                    $map['e.flower'] = array('eq',1);
                }
            }
            $data = db('article')
                    ->alias('a')
                    ->join('destination b', 'b.id=a.id')
                    ->join('icontime c', 'c.id=a.id')
                    ->join('admin d', 'd.id=a.user_id')
                    ->join('individual e','e.article_id = a.id')
    ->field('a.id,a.title,a.article,b.article_img,c.praise,c.look,c.flower,c.time,d.author')
                    ->where($map)
                    ->order('time desc')
                    ->limit($pre,4)
                    ->select();
            array_push($arr,$data);
        }
        return json(['code'=>0,'arr'=>$arr]);
    }

    //我的想去，去过
    public function getArea() 
    {   
        $id = input('id');
        $c = input('c');
        $reg="/,/";
        $array = preg_split($reg,$c);
        $arr = array();
        $map['b.user_id'] = $id;
        foreach($array as $key => $val){
            if($key == 0){
                $map['b.want'] = array('eq',1);
            }else{
                $map['b.gone'] = array('eq',1);
            }
            $data = db('area')
            ->alias('a')
            ->join('wantgone b','b.area_id = a.id')
            ->field('a.id,a.area,a.image')
            ->where($map)
            ->order('id desc')
            ->select();
            array_push($arr,$data);
        }
        return json(['code'=>0,'arr'=>$arr]);
    }

    //添加关注
    public function concern()
    {
        $id = input('id');
        $userId = input('userId');
        $select = db('concern')->where(['who'=>$userId,'beconcern'=>$id])->find();
        if($select){
            $delete = db('concern')->where(['who'=>$userId,'beconcern'=>$id])->delete();
            $selectD = db('concern')->where(['who'=>$userId,'beconcern'=>$id])->find();
            if($selectD){
                return json(['status'=>3,'msg'=>'取消关注失败']);
            }else{
                return json(['status'=>2,'msg'=>'取消关注成功']);
            }
        }else{
            $insert = db('concern')->insert(['who'=>$userId,'beconcern'=>$id]);
            $selectI = db('concern')->where(['who'=>$userId,'beconcern'=>$id])->find();
            if($selectI){
                return json(['status'=>0,'msg'=>'关注成功']);
            }else{
                return json(['status'=>1,'msg'=>'关注失败']);
            }
        }
    }

    //获取被关注的数量
    public function getConcern()
    {
        $id = input('id');
        //我关注
        $select = db('concern')->where(['who'=>$id])->select();
        if($select){
            $concernNum = count($select);
        }else{
            $concernNum = 0;
        }
        //被关注
        $selectB = db('concern')->where(['beconcern'=>$id])->select();
        if($selectB){
            $beconcernNum = count($selectB);
        }else{
            $beconcernNum = 0;
        }
        return json(['code'=>0,'concern'=>$concernNum,'beconcern'=>$beconcernNum]);
    }

    //获取我的活动，关注，报名
    public function getActiveM()
    {
        $id = input('id');
        $pre = (input('pre'))*1;
        $limit = input('limit');
        $select =db('active')
        ->alias('a')
        ->join('area b','b.id = a.destination')
        ->join('admin c','c.id = a.user_id')
    ->field('a.id,a.user_id,a.destination,a.time,a.resume,a.concern,a.img,a.joinnum,b.area,c.authorImg,c.author')
        ->order('a.time desc')
        ->where(['a.user_id'=>$id])
        ->limit($pre,$limit)
        ->select();
        return json(['code'=>0,'datas'=>$select]);
    }
    public function getActiveC()
    {
        $id = input('id');
        $pre = (input('pre'))*1;
        $limit = input('limit');
        $select = db('activeconcern')
        ->alias('a')
        ->join('active b','b.id = a.active_id')
        ->join('area c','c.id = b.destination')
        ->join('admin d','d.id = b.user_id')
        ->field('b.id,b.user_id,b.destination,b.time,b.resume,b.concern,b.img,b.joinnum,c.area,d.authorImg,d.author')
        ->order('b.time desc')
        ->where(['a.user_id'=>$id])
        ->limit($pre,$limit)
        ->select();
        return json(['code'=>0,'datas'=>$select]);
    }
    public function getActiveJ()
    {
        $id = input('id');
        $pre = (input('pre'))*1;
        $limit = input('limit');
        $select = db('activejoin')
        ->alias('a')
        ->join('active b','b.id = a.active_id')
        ->join('area c','c.id = b.destination')
        ->join('admin d','d.id = b.user_id')
        ->field('b.id,b.user_id,b.destination,b.time,b.resume,b.concern,b.img,b.joinnum,c.area,d.authorImg,d.author')
        ->order('b.time desc')
        ->where(['a.user_id'=>$id])
        ->limit($pre,$limit)
        ->select();
        return json(['code'=>0,'datas'=>$select]);
    }
}
