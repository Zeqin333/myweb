<?php
namespace app\index\controller;
header('Access-Control-Allow-Origin:http://192.168.43.196:8000');  
class Active
{
    //发布活动
    public function p_active() 
    {
        $id = input('id');
        $t = input('title');
        $c = input('contact');
        $a = input('address');
        $time = input('time');
        $d = input('day');
        $p = input('people');
        $r = input('resume');
        $img = input('img');
        $star = input('star');
        // return json(['id'=>$id,'title'=>$t,'contact'=>$c,'address'=>$a,'time'=>$time,'day'=>$d,'people'=>$p,'resume'=>$r,'img'=>$img,'star'=>$star]);
        $insert = db('active')->insert(['user_id'=>$id,'title'=>$t,'contact'=>$c,'star'=>$star,'destination'=>$a,'time'=>$time,'day'=>$d,'people'=>$p,'resume'=>$r]);
        $select = db('active')->where(['user_id'=>$id,'time'=>$time])->field('id')->find();
        if($select){
            $activeid = $select['id'];
            if($img != ''){
                $reg1 = "/\"|\[|\]/";
                $arr1 = preg_replace($reg1,'',$img);
                $reg="/,/";
                $arr = preg_split($reg,$arr1);
                // return json(['id'=>$id,'title'=>$t,'contact'=>$c,'address'=>$a,'time'=>$time,'day'=>$d,'people'=>$p,'resume'=>$r,'img'=>$arr,'star'=>$star]);
                $insertA = db('active')->where(['id'=>$activeid])->update(['img'=>$arr[0]]);
                foreach($arr as $val){
                    $inserti = db('activeimg')->insert(['active_id'=>$activeid,'img'=>$val]);
                }
                return json(['code'=>0,'msg'=>'发布成功','id'=>$activeid]);
            }else{
                return json(['code'=>2,'msg'=>'没有图片式的发布成功','id'=>$activeid]);
            }
        }else{
            return json(['code'=>1,'msg'=>'发布失败','id'=>$activeid]);
        }
    }

    //获取活动list5的信息
    public function getList()
    {
        //地点，时间，参加人数，最新出发，即将出发，可能有多个，可能只有一个
        $address = input('address');
        $num = input('num');
        $list = input('list');
        $count = input('count');
        $pre = (input('pre'))*1;
        $order = 'a.time desc';
        if($address == 0){
            $map = [];
        }else{
            $map['destination'] = $address;
        }
        switch ($num)
        {
            case 1:
                $c = date('Y-m-d');
                $map['time'] = array('eq',$c);
                break;
            case 2:
                $a = date('Y-m-01');
                $c = date('Y-m-t');
                $map['time'] = array('between',array($a,$c));
                break;
            case 3:
                $a = date('Y-m-01',strtotime("1 month"));
                $c = date("Y-m-t", strtotime("2 month"));
                $map['time'] = array('between',array($a,$c));
                break;
            case 4:
                $c = date("Y-m-01", strtotime("3 month"));
                $map['time'] = array('gt',$c);
                break;
        }
        switch ($list)
        {
            case 0:
                $order = 'a.joinnum desc,a.concern desc';
                break;
            case 1:
                $order = 'a.time desc';
                break;
            case 2:
                $order = 'a.time asc';
                break;
        }

        $datas = db('active')
                ->alias('a')
                ->join('area b','b.id = a.destination')
                ->join('admin c','c.id = a.user_id')
                ->field('a.id,a.user_id,a.destination,a.time,a.resume,a.concern,a.img,a.joinnum,b.area,c.authorImg,c.author')
                ->order($order)
                ->where($map)
                ->limit($pre,$count)
                ->select();
                return json(['code'=>0,'datas'=>$datas]);
    }

    //获取热门目的地
    public function hot()
    {
        //获取到热门目的地
        $datas = db('active')
                ->field('count(destination) num,destination')
                ->group('destination')
                ->order('num desc')
                ->limit(8)
                ->select();
        $array = array();
        foreach($datas as $key =>$val){
            $address = $val['destination']; 
            $num = $val['num']; 
            $concern = db('active')
                    ->field('concern')
                    ->where(['destination'=>$address])
                    ->sum('concern');
            $joinNum = db('active')
                    ->field('joinnum')
                    ->where(['destination'=>$address])
                    ->sum('joinnum');
            $areaS = db('area')->where(['id'=>$address])->field('id,area,image')->find();
            $area = $areaS['area'];
            $img = $areaS['image'];
            $id = $areaS['id'];
            array_push($array,['area_id'=>$id,'concern'=>$concern,'joinNum'=>$joinNum,'area'=>$area,'num'=>$num,'img'=>$img]);
        }
        return json(['code'=>0,'datas'=>$array]);
    }

    public function getD()
    {
        $id = input('id');
        $datas = db('active')
            ->alias('a')
            ->join('admin b','b.id = a.user_id')
            ->join('area c','c.id = a.destination')
            ->field('a.title,a.contact,a.star,a.destination,a.look,a.time,a.day,a.people,a.resume,a.concern,a.joinnum,b.author,b.authorImg,c.area')
            ->where(['a.id'=>$id])
            ->find();
        $star = db('active')
                ->alias('a')
                ->join('area b','b.id = a.star')
                ->where(['a.id'=>$id])
                ->field('area')
                ->find();
        $img = db('active')
            ->alias('a')
            ->join('activeimg b','b.active_id = a.id')
            ->where(['a.id'=>$id])
            ->field('b.img')
            ->select();
        return json(['code'=>0,'datas'=>$datas,'star'=>$star,'img'=>$img]);
    }

    //浏览量自增
    public function addLook()
    {
        $id = input('id');
        $update = db('active')
                ->where(['id'=>$id])
                ->setInc('look');
    }

    //添加爱心
    public function addConcern()
    {
        $id = input('id');
        $user_id = input('user_id');
        $select = db('activeconcern')->where(['active_id'=>$id,'user_id'=>$user_id])->find();
        if($select){
            $delete = db('activeconcern')->where(['active_id'=>$id,'user_id'=>$user_id])->delete();
            $selectD = db('activeconcern')->where(['active_id'=>$id,'user_id'=>$user_id])->find();
            if($selectD){
                return json(['code'=>2,'msg'=>'取消关注失败']);
            }else{
                $desc = db('active')->where(['id'=>$id])->setDec('concern');
                return json(['code'=>3,'msg'=>'取消关注成功']);
            }
        }else{
            $insert = db('activeconcern')->insert(['active_id'=>$id,'user_id'=>$user_id]);
            $selectI = db('activeconcern')->where(['active_id'=>$id,'user_id'=>$user_id])->find();
            if($selectI){
                $desc2 = db('active')->where(['id'=>$id])->setInc('concern');
                return json(['code'=>0,'msg'=>'关注成功']);
            }else{
                return json(['code'=>1,'msg'=>'关注失败']);
            }
        }
    }

    public function getC()
    {
        $num = db('active')->count();
        $concern = db('activeconcern')->count();
        $joinNum = db('activejoin')->count();
        //  return join(['code'=>0,'concern'=>$concern,'joinNum'=>$joinNum,'num'=>$num]); 017918
        return json(['code'=>0,'concern'=>$concern,'joinNum'=>$joinNum,'num'=>$num]);
    }

    public function getSlider()
    {
        $select = db('active')
                ->field('id,time,title,resume')
                ->order('time desc')
                ->limit(4)
                ->select();
        return json(['code'=>0,'datas'=>$select]);
    }
}