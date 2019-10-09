<?php
namespace app\index\controller;
header('Access-Control-Allow-Origin:http://192.168.43.196:8000');  

class Index
{
    public function index()
    {
        $username = input('username'); //得到前端的参数
        $password = input('password');
        $select = db('admin')->where(['username'=>'555555'])->find();//单条
        // $insert = db('admin')->insert(['username'=>$username,'password'=>$password]);
        //$delete = db('admin')->where(['username'=>'999'])->delete();
        // $update = db('admin')->where(['username'=>'000'])->update(['password'=>'888']);
        return json($select);
    }

    public function checkusername()
    {
        $username = input('username');
        $select = db('admin')->where(['username'=>$username])->select();
        return $select ? 1: 0;
    }

    public function c_userpsw()
    {
        //如果有此用户，然检查密码
        $username = input('username');
        $password = input('password');
        $select = db('admin')->where(['username'=>$username,'password'=>$password])->find();     
        return $select?json($select): 1;
    }

    public function insertup()
    {
        $username = input('username');
        $password = input('password');
        $insert = db('admin')->insert(['username'=>$username,'password'=>$password]);
        $select = db('admin')->where(['username'=>$username])->find();
        return $select ? 0: 1;
    }

    //增加浏览量
    public function addLookNum()
    {
        $id = input('id');
        $count = input('count');
        $target = input('target');
        $insert = db('icontime')->where(['id'=>$id])->update([$target=>$count]);
        if($insert){
            return json(['status'=>'0']);
        }else{
            return json(['status'=>'1']);
        }
    }

    public function theme() 
    {
        $suitable = db('suitable')->select();
        $season = db('season')->select();
        $tripmode = db('tripmode')->select();
        $holiday = db('holiday')->select();
        return json(['code'=>0,'suitable'=>$suitable,'season'=>$season,'tripmode'=>$tripmode,'holiday'=>$holiday]);
    }

    public function getD() 
    {
        $suitable = db('suitable')->field('id,name')->select();
        $address = db('address')->field('id,address')->select();
        $area = db('area')->field('id,area,address_id')->select();
        $season = db('season')->field('id,name')->select();
        $tripmode = db('tripmode')->field('id,name')->select();
        $holiday = db('holiday')->field('id,name')->select();
        return json(
            ['code'=>0,
            'address'=>$address,
            'area'=>$area,
            'suitable'=>$suitable,
            'season'=>$season,
            'tripmode'=>$tripmode,
            'holiday'=>$holiday]
        );
    }


    //将文章的点赞，收藏，送花数据的改变
    public function changNum()
    {
        $userId = input('userId');
        $id = input('id');
        $target = input('target');
        $map['user_id']=$userId;
        $map['article_id']=$id;
        $map[$target] = 1;
        $k = ['article_id'=>$id,'user_id'=>$userId];
        //开始查找，如果有，则改变数据
        $select = db('individual')->where($k)->find();
        if($select){
            $val = $select[$target];
            if($val == 0){
                //自加
                $incc = db('icontime')->where(['id'=>$id])->setInc($target);
                $inc = db('individual')->where($k)->setInc($target);
                return json(['code'=>'5','msg'=>'自增成功']);
            }else{
                //自减   如果全为0 ，则删除
                $incc = db('icontime')->where(['id'=>$id])->setDec($target);
                $inc = db('individual')->where($k)->setDec($target);
                $selectC = db('individual')->where($k)->find();
                if($selectC['collect'] == 0 && $selectC['praise'] == 0 &&$selectC['flower'] == 0){
                    $delete = db('individual')->where($k)->delete();
                    $findD = db('individual')->where($k)->find();
                    if($findD){
                        return json(['code'=>'4','msg'=>'没有删除掉']);
                    }else{
                        return json(['code'=>'3','msg'=>'删除成功']);
                    }
                }else{
                    return json(['code'=>'2','msg'=>'修改成功']);
                }
            }
            //如果数据都为0 ，那么删除该数据
        }else{
            //如果没有则插入数据
            $inc = db('icontime')->where(['id'=>$id])->setInc($target);
            $insert = db('individual')->insert($map);
            $insertS = db('individual')->where($k)->find();
            if($insertS){
                return json(['code'=>'0','msg'=>'插入成功']);
            }else{
                return json(['code'=>'1','msg'=>'插入失败']);
            }
        } 
    }


    //目的地中的收藏，想去，去过数据的改变和插入
    public function changeWantGone()
    {
        $userId = input('userId');
        $id = input('id');
        $target = input('target');
        $map['user_id']=$userId;
        $map['area_id']=$id;
        $map[$target] = 1;
        //开始查找，如果有，则改变数据
        $select = db('wantgone')->where(['area_id'=>$id,'user_id'=>$userId])->find();
        if($select){
            $val = $select[$target];
            if($val == 0){
                //自加
                $inc = db('wantgone')->where(['area_id'=>$id,'user_id'=>$userId])->setInc($target);
                return json(['code'=>'5','msg'=>'自增成功']);
            }else{
                //自减   如果全为0 ，则删除
                $inc = db('wantgone')->where(['area_id'=>$id,'user_id'=>$userId])->setDec($target);
                $selectC = db('wantgone')->where(['area_id'=>$id,'user_id'=>$userId]);
                if($selectC['collect'] == 0 && $selectC['want'] == 0 &&$selectC['gone'] == 0){
                    $delete = db('wantgone')->where(['area_id'=>$id,'user_id'=>$userId])->delete();
                    $findD = db('wantgone')->where(['area_id'=>$id,'user_id'=>$userId])->find();
                    if($findD){
                        return json(['code'=>'4','msg'=>'没有删除掉']);
                    }else{
                        return json(['code'=>'3','msg'=>'删除成功']);
                    }
                }else{
                    return json(['code'=>'2','msg'=>'修改成功']);
                }
            }
            //如果数据都为0 ，那么删除该数据
        }else{
            //如果没有则插入数据
            $insert = db('wantgone')->insert($map);
            $insertS = db('wantgone')->where(['area_id'=>$id,'user_id'=>$userId])->find();
            if($insertS){
                return json(['code'=>'0','msg'=>'插入成功']);
            }else{
                return json(['code'=>'1','msg'=>'插入失败']);
            }
        } 
    }
}

