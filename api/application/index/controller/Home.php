<?php
namespace app\index\controller;
header('Access-Control-Allow-Origin:http://192.168.43.196:8000');  

class Home
{
    //轮播图部分
    public function slider() 
    {
        $sliders = db('icontime')
        ->alias('a')
        ->join('destination b', 'b.id=a.id')
        ->field('a.id,b.article_img')
        ->order('id desc')
        ->limit(4)
        ->select();
        return json($sliders);
    }

    //最新游记推荐部分
    public function newtravels() 
    {
        $newtravels = db('icontime')->alias('a')->join('destination b', 'b.id=a.id')->join('article c','c.id=a.id')->join('admin d','d.id=c.user_id')->field('a.id,a.time,b.article_img,c.title,c.article,d.author')->order('id desc')->limit(3)->select();
        return json($newtravels);
    }

    //最热游记推荐部分
    public function hottravels() 
    {
        $newtravels = db('icontime')->alias('a')->join('destination b', 'b.id=a.id')->join('article c','c.id=a.id')->join('admin d','d.id=c.user_id')->field('a.id,a.praise,b.article_img,c.title,c.article,d.author')->order('praise desc')->limit(3)->select();
        return json($newtravels);
    }

    //热门目的地
    public function hotDest()
    {
        $newtravels = db('icontime')
                    ->alias('a')
                    ->join('destination b', 'b.id=a.id')
                    ->join('area c','c.id=b.address_area_id')
                    ->join('address d','d.id=c.address_id')
                    ->field('a.praise,a.look,a.collect,a.flower,b.article_img,count(d.address) num,d.address,d.id')
                    ->group('d.address')
                    ->order('praise desc,num desc')
                    ->limit(8)
                    ->select();
        return json($newtravels);
    }

}