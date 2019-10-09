<?php
namespace app\index\controller;
header('Access-Control-Allow-Origin:http://192.168.43.196:8000');  
// http://qxu1606520494.my3w.com/api/public/index.php/index/destination/index
class Travels
{
    //最新游记和最热游记
    public function newAndHot() 
    {
        $news = db('article')->alias('a')->join('destination b', 'b.id=a.id')->join('icontime c', 'c.id=a.id')->join('admin d', 'd.id=a.user_id')->field('a.id,a.title,a.article,b.article_img,c.collect,c.praise,c.look,c.flower,c.time,d.username')->order('time desc')->limit(4)->select();
        $hots = db('article')->alias('a')->join('destination b', 'b.id=a.id')->join('icontime c', 'c.id=a.id')->join('admin d', 'd.id=a.user_id')->field('a.id,a.title,a.article,b.article_img,c.collect,c.praise,c.look,c.flower,c.time,d.username')->order('praise desc,look desc')->limit(4)->select();
        $arr = [$hots,$news];
        return json($arr);
    }

    public function addTravels()
    {
        $morder = input('morder');
        $count = input('count');
        $limit = 4;
        $pre = $count *1;
        $news = db('article')->alias('a')->join('destination b', 'b.id=a.id')->join('icontime c', 'c.id=a.id')->join('admin d', 'd.id=a.user_id')->field('a.id,a.title,a.article,b.article_img,c.collect,c.praise,c.look,c.flower,c.time,d.username')->order($morder)->limit($pre,$limit)->select();
        return json($news);
    }

    // public function addHotTravels()
    // {
    //     $limit = 4;
    //     $pre = input('count');
    //     $news = db('article')->alias('a')->join('destination b', 'b.id=a.id')->join('icontime c', 'c.id=a.id')->join('admin d', 'd.id=a.user_id')->field('a.id,a.title,a.article,b.article_img,c.collect,c.praise,c.look,c.flower,c.time,d.username')->order('praise desc')->limit($pre,$limit)->select();
    //     return json($news);
    // }

}
