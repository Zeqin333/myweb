SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS  `active`;
CREATE TABLE `active` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `contact` int(11) NOT NULL DEFAULT '11111111',
  `star` int(11) NOT NULL DEFAULT '1',
  `destination` int(11) NOT NULL DEFAULT '1',
  `time` date NOT NULL,
  `day` smallint(2) NOT NULL DEFAULT '0',
  `people` smallint(2) NOT NULL DEFAULT '0',
  `resume` varchar(10000) NOT NULL DEFAULT '',
  `concern` int(11) NOT NULL DEFAULT '0',
  `joinnum` int(11) NOT NULL DEFAULT '0',
  `img` varchar(1000) NOT NULL DEFAULT '/api/public/uploads/20180501/998c1ae92ab9d9160ed22c9a6f0e5f81.jpg',
  `look` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=gbk;

insert into `active`(`id`,`user_id`,`title`,`contact`,`star`,`destination`,`time`,`day`,`people`,`resume`,`concern`,`joinnum`,`img`,`look`) values
('20','15','哎呀呀，陪我去西双版纳好吗','52345534','89','11','2018-06-14','4','7','我常想，不是人在放牛，简直是牛在牧人，而人放牛是更自由的。人与牛是在交换劳动，如果我们考虑的只是必须劳动的话，那末看来牛要占便宜得多，它们的农场也大得多。人担任的一部分交换劳动便是割上六个星期的干草，这可不是儿戏呢。自然没有一个在各方面的生活都很简单的国土，就是说，没有一个哲学家的国土，是愿意犯这种重大错误来叫畜生劳动的。确实世上从未有过，将来也未见得会有那么个哲学家的国土，就是有了，我也不敢说它一定是美满的。然而我绝对不愿意去驯一匹马或一头牛，束缚了它，叫它替我做任何它能做的工作，只因为我怕自己变成了马夫或牛倌；如果说这样做了，社会就得益非浅，那未难道能够肯定一个人的盈利就不是另一个人的损失，难道能够肯定马房里的马夫跟他的主人是同样地满足的吗？就算有些公共的工作没有牛马的帮助是建立不起来的，而且就让人类来和牛马一起分享这种光荣；是否能推理说，那样的话，他就不可能用更加对得起自己的方式来完成这种工作了呢？当人们利用了牛马帮助，开始做了许多不仅是不需要的和艺术的，而且还是奢侈的和无用的工作，这就不可避免的要有少数人得和牛马做交换工作，换句话说，这些人便成了最强者的奴隶。所以，人不仅为他内心的兽性而工作，而且，这像是一个象征，他还为他身外的牲畜而劳动。虽然我们已经有了许多砖瓦或石头砌造的屋子，一个农夫的殷实与否，还得看看他的兽厩在什么程度上盖过了他的住屋。据说城市里有最大的房屋，供给这儿的耕牛、奶牛和马匹居住；公共大厦这一方面毫不落后；可是在这个县里，可供言论自由与信仰自由用的大厅反倒很少呢。国家不应该用高楼大厦来给它们自己树立起纪念碑，为什么不用抽象的思维力来纪念呢？东方的全部废墟，也决不比一卷《对话录》更可赞叹！高塔与寺院是帝王的糜侈。','2','0','/api/public/uploads/20180428/8fc69fc82b4c798b47cf211a52ea5cfb.jpeg','20'),
('19','15','一起去拉萨吧','32423423','77','57','2018-05-30','6','9','我本想给我造一座房子，论宏伟与华丽，要超过康科德大街上任何一座房子的，只要它能够像目前的这间使我这样高兴，而且花费也不更多的话。这样我发现，只想住宿舍的学生完全能够得到一座终身受用的房子，所花的费用还不比他现在每年付的住宿费大呢，如果说，我似乎夸大得有点过甚其辞，那未我的解释是我并非为自己，是为人类而夸大；我的短处和前后不一致并不能影响我言论的真实性，尽管我有不少虚假和伪善的地方——那好像是难于从麦子上打掉的糠秕，我也跟任何人一样为此感到遗憾，——我还是要自由地呼吸，在这件事上挺起我的腰杆子来，这对于品德和身体都是一个极大的快乐；而且我决定，决不屈辱地变成魔鬼的代言人，我要试着为真理说一句好话。在剑桥学院，一个学生住比我那房稍大一点儿的房间，光住宿费就是每年三十元，那家公司却在一个屋顶下造了毗连的三十二个房间，占尽了便宜，房客却因邻居众多而嘈杂，也许还不得不住在四层楼上，因而深感不便。我就不得不想着，如果我们在这些方面有更多的真知的见，不仅教育的需要可以减少，因为更多的教育工作早就可以完成了，而且为了受教育而必需有钱交费那样的事情一定已经大部分都消灭掉了。
      有一个人对我说，“我很奇怪你怎么不积几个钱；你很爱旅行；你应该坐上车，今天就上菲茨堡去，见见世面嘛。”可是我比这更聪明些。我已经明白最快的旅行是步行。我对我的朋友说，假定我们试一试，谁先到那里。距离是三十英里，车票是九角钱。这差不多是一天的工资，我还记得，在这条路上做工的人一天只拿六角钱。','2','0','/api/public/uploads/20180428/ee8e4ff0092d47048190f1f81f112d70.jpg','23'),
('21','7','相约阿尔山','3453453','5','107','2018-06-12','4','8','测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试。','0','0','/api/public/uploads/20180501/998c1ae92ab9d9160ed22c9a6f0e5f81.jpg','1'),
('22','7','相约阿尔山','3453453','5','107','2018-06-12','4','8','测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试。','0','0','/api/public/uploads/20180501/998c1ae92ab9d9160ed22c9a6f0e5f81.jpg','0'),
('23','7','相约阿尔山','3453453','5','107','2018-06-12','4','8','测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试。','0','0','/api/public/uploads/20180501/998c1ae92ab9d9160ed22c9a6f0e5f81.jpg','0'),
('24','7','测试','565464','7','23','2018-06-20','5','7','测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试。','1','0','/api/public/uploads/20180503/9647344f11fafae389c6a33b70dcd42b.png','3'),
('25','17','相约青海湖','6456546','3','66','2018-06-30','6','8','一起相约青海湖。
    下面是我们的小伙伴。','1','0','/api/public/uploads/20180503/0c0fecffaa68f6e5c8562c3e84d56883.jpg','11'),
('26','17','测试','35345','4','12','2018-05-24','6','8','测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试。','1','0','/api/public/uploads/20180503/7c279dbac0123a7d5d2857b58cadafdb.png','4');
DROP TABLE IF EXISTS  `activeimg`;
CREATE TABLE `activeimg` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `active_id` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=gbk;

insert into `activeimg`(`id`,`active_id`,`img`) values
('19','20','/api/public/uploads/20180428/8fc69fc82b4c798b47cf211a52ea5cfb.jpeg'),
('18','19','/api/public/uploads/20180428/ee8e4ff0092d47048190f1f81f112d70.jpg'),
('20','24','/api/public/uploads/20180503/9647344f11fafae389c6a33b70dcd42b.png'),
('21','25','/api/public/uploads/20180503/0c0fecffaa68f6e5c8562c3e84d56883.jpg'),
('22','26','/api/public/uploads/20180503/7c279dbac0123a7d5d2857b58cadafdb.png'),
('23','26','/api/public/uploads/20180503/242c52a0d72e578bc2870f8b4149d6ca.jpg');
DROP TABLE IF EXISTS  `activeconcern`;
CREATE TABLE `activeconcern` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `active_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=gbk;

insert into `activeconcern`(`id`,`active_id`,`user_id`) values
('55','20','15'),
('54','19','15'),
('60','19','7'),
('63','24','7'),
('57','20','13'),
('58','19','13'),
('64','25','17'),
('69','20','7'),
('68','26','18');
DROP TABLE IF EXISTS  `activejoin`;
CREATE TABLE `activejoin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `active_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `phone` int(11) NOT NULL,
  `man` int(11) DEFAULT '0',
  `woman` int(11) DEFAULT '0',
  `list` varchar(1000) DEFAULT '',
  `resume` varchar(10000) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS  `address`;
CREATE TABLE `address` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `address` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=gbk;

insert into `address`(`id`,`address`) values
('1','北京'),
('2','上海'),
('3','重庆'),
('4','天津'),
('5','云南'),
('6','四川'),
('7','浙江'),
('8','海南'),
('9','江苏'),
('10','广东'),
('11','西藏'),
('12','西北'),
('13','山东'),
('14','湖南'),
('15','湖北'),
('16','安徽'),
('17','江西'),
('18','河北'),
('19','河南'),
('20','内蒙古'),
('21','东北');
DROP TABLE IF EXISTS  `admin`;
CREATE TABLE `admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` int(20) NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT '',
  `author` varchar(255) DEFAULT '',
  `authorImg` varchar(255) DEFAULT '',
  `sex` int(1) DEFAULT '0',
  `birthday` varchar(32) DEFAULT '2018/01/01',
  `city` varchar(255) DEFAULT '',
  `resume` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=gbk;

insert into `admin`(`id`,`username`,`password`,`author`,`authorImg`,`sex`,`birthday`,`city`,`resume`) values
('7','333','310dcbbf4cce62f762a2aaa148d556bd','无厘头的小MOMO','/api/public/authorImg/20180508/df020e702bfa98f9433f7b2b009b79d0.png','0','2018-01-01','武汉','我最喜欢热巴小姐姐,就是这么任性。哈哈哈。'),
('13','111','698d51a19d8a121ce581499d7b701668','小小默默','/api/public/authorImg/20180428/f33cc04bf2412b66bb6b835bad76aaf2.png','0','2004-06-09','天津','一个奇特的人。'),
('14','222','bcbe3365e6ac95ea2c0343a2395834dd','依一','/api/public/authorImg/20180428/9fbc7dc0ad9a6ca15fc4b6e078c2d6ad.png','0','1998-12-20','重庆','一个热爱旅游的人。哈哈哈，有快乐，来找我呀。'),
('11','888','0a113ef6b61820daa5611c870ed8d5ee','依依','/api/public/authorImg/20180422/15.jpg
','0','2018/01/01','北京','我就是我呀'),
('15','666','fae0b27c451c728867a567e8c1bb4e53','小不点儿','/api/public/authorImg/20180428/25dfa3192d73e39fe099c77133726180.png','0','2002-06-23','深圳','今天有点漂亮。'),
('16','777','f1c1592588411002af340cbaedd6fc33','河豚','/api/public/authorImg/20180428/66a60c2436296903dffb2e34e6f841fc.png','1','2008-12-28','杭州','我是一个小鲜肉呀。'),
('17','999','b706835de79a2b4e80506f582af3676a','','','0','2018/01/01','',''),
('18','0','c6f057b86584942e415435ffb1fa93d4','','','0','2018/01/01','',''),
('19','56','9f61408e3afb633e50cdf1b20de6f466','','/api/public/authorImg/20180508/c0514cdde9ee353b55309a8f6c7a2491.png','0','2018/01/01','','');
DROP TABLE IF EXISTS  `area`;
CREATE TABLE `area` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `address_id` int(11) NOT NULL,
  `area` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT '/api/public/static/image/christmas-cold-friends-269370.jpg',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=gbk;

insert into `area`(`id`,`address_id`,`area`,`image`) values
('1','1','故宫','/api/public/static/image/aershan.jpg'),
('2','2','浦东','/api/public/static/image/pudong.jpg'),
('3','3','重庆','/api/public/static/image/aershan.jpg'),
('4','4','天津','/api/public/static/image/tianjin.jpg'),
('5','5','丽江','/api/public/static/image/aershan.jpg'),
('6','5','大理','/api/public/static/image/aershan.jpg'),
('7','5','昆明','/api/public/static/image/aershan.jpg'),
('8','5','香格里拉','/api/public/static/image/aershan.jpg'),
('9','5','泸沽湖','/api/public/static/image/aershan.jpg'),
('10','5','双廊','/api/public/static/image/aershan.jpg'),
('11','5','西双版纳','/api/public/static/image/xishuangbanna.jpg'),
('12','5','束河','/api/public/static/image/shuhe.jpg'),
('13','5','腾冲','/api/public/static/image/aershan.jpg'),
('14','5','雨崩','/api/public/static/image/aershan.jpg'),
('15','6','成都','/api/public/static/image/aershan.jpg'),
('16','6','九寨沟','/api/public/static/image/aershan.jpg'),
('17','6','稻城','/api/public/static/image/aershan.jpg'),
('18','6','色达','/api/public/static/image/aershan.jpg'),
('19','6','若尔盖','/api/public/static/image/aershan.jpg'),
('20','6','都江堰','/api/public/static/image/aershan.jpg'),
('21','6','亚丁','/api/public/static/image/aershan.jpg'),
('22','6','阿坝','/api/public/static/image/aershan.jpg'),
('23','6','峨眉山','/api/public/static/image/emeishan.jpg'),
('24','6','牛背山','/api/public/static/image/aershan.jpg'),
('25','7','杭州','/api/public/static/image/aershan.jpg'),
('26','7','乌镇','/api/public/static/image/aershan.jpg'),
('27','7','西塘','/api/public/static/image/aershan.jpg'),
('28','7','千岛湖','/api/public/static/image/aershan.jpg'),
('29','7','普陀山','/api/public/static/image/aershan.jpg'),
('30','7','东极岛','/api/public/static/image/aershan.jpg'),
('31','7','南浔','/api/public/static/image/aershan.jpg'),
('32','8','三亚','/api/public/static/image/aershan.jpg'),
('33','8','蜈支洲岛','/api/public/static/image/aershan.jpg'),
('34','8','海口','/api/public/static/image/aershan.jpg'),
('35','8','厦门','/api/public/static/image/aershan.jpg'),
('36','8','鼓浪屿','/api/public/static/image/aershan.jpg'),
('37','8','武夷山','/api/public/static/image/aershan.jpg'),
('38','8','泉州','/api/public/static/image/aershan.jpg'),
('39','9','南京','/api/public/static/image/aershan.jpg'),
('40','9','苏州','/api/public/static/image/aershan.jpg'),
('41','9','无锡','/api/public/static/image/aershan.jpg'),
('42','9','扬州','/api/public/static/image/aershan.jpg'),
('43','9','周庄','/api/public/static/image/aershan.jpg'),
('44','9','常州','/api/public/static/image/aershan.jpg'),
('45','9','连云港','/api/public/static/image/aershan.jpg'),
('46','9','同里','/api/public/static/image/aershan.jpg'),
('47','10','广州','/api/public/static/image/aershan.jpg'),
('48','10','深圳','/api/public/static/image/aershan.jpg'),
('49','10','珠海','/api/public/static/image/aershan.jpg'),
('50','10','汕头','/api/public/static/image/aershan.jpg'),
('51','10','桂林','/api/public/static/image/aershan.jpg'),
('52','10','阳朔','/api/public/static/image/aershan.jpg'),
('53','10','北海','/api/public/static/image/aershan.jpg'),
('54','10','黄姚古镇','/api/public/static/image/aershan.jpg'),
('55','10','涠洲岛','/api/public/static/image/aershan.jpg'),
('56','10','龙脊梯田','/api/public/static/image/aershan.jpg'),
('57','11','拉萨','/api/public/static/image/lasha.jpg'),
('58','11','林芝','/api/public/static/image/aershan.jpg'),
('59','11','阿里','/api/public/static/image/aershan.jpg'),
('60','11','黔东南','/api/public/static/image/aershan.jpg'),
('61','11','荔波','/api/public/static/image/aershan.jpg'),
('62','11','镇远','/api/public/static/image/aershan.jpg'),
('63','11','西江','/api/public/static/image/aershan.jpg'),
('64','11','黄果树','/api/public/static/image/aershan.jpg'),
('65','12','西安','/api/public/static/image/aershan.jpg'),
('66','12','青海湖','/api/public/static/image/qinghaihu.jpg'),
('67','12','西宁','/api/public/static/image/aershan.jpg'),
('68','12','祁连','/api/public/static/image/aershan.jpg'),
('69','12','敦煌','/api/public/static/image/aershan.jpg'),
('70','12','兰州','/api/public/static/image/aershan.jpg'),
('71','12','甘南','/api/public/static/image/aershan.jpg'),
('72','12','张掖','/api/public/static/image/aershan.jpg'),
('73','12','嘉谷关','/api/public/static/image/aershan.jpg'),
('74','12','新疆','/api/public/static/image/aershan.jpg'),
('75','13','青岛','/api/public/static/image/aershan.jpg'),
('76','13','泰山','/api/public/static/image/aershan.jpg'),
('77','13','日照','/api/public/static/image/aershan.jpg'),
('78','13','威海','/api/public/static/image/aershan.jpg'),
('79','13','烟台','/api/public/static/image/aershan.jpg'),
('80','13','长鸟','/api/public/static/image/aershan.jpg'),
('81','13','蓬莱','/api/public/static/image/aershan.jpg'),
('82','13','平遥','/api/public/static/image/aershan.jpg'),
('83','13','大同','/api/public/static/image/aershan.jpg'),
('84','13','五台山','/api/public/static/image/aershan.jpg'),
('85','13','壶口瀑布','/api/public/static/image/aershan.jpg'),
('86','14','张家界','/api/public/static/image/aershan.jpg'),
('87','14','凤凰','/api/public/static/image/aershan.jpg'),
('88','14','郴州','/api/public/static/image/aershan.jpg'),
('89','15','武汉','/api/public/static/image/aershan.jpg'),
('90','15','恩施','/api/public/static/image/aershan.jpg'),
('91','15','神农架','/api/public/static/image/aershan.jpg'),
('92','16','黄山','/api/public/static/image/aershan.jpg'),
('93','17','宏村','/api/public/static/image/aershan.jpg'),
('94','17','婺源','/api/public/static/image/aershan.jpg'),
('95','17','景德镇','/api/public/static/image/aershan.jpg'),
('96','17','三清山','/api/public/static/image/aershan.jpg'),
('97','17','南昌','/api/public/static/image/aershan.jpg'),
('98','17','庐山','/api/public/static/image/aershan.jpg'),
('99','18','北戴河','/api/public/static/image/aershan.jpg'),
('100','18','秦皇岛','/api/public/static/image/aershan.jpg'),
('101','18','承德','/api/public/static/image/aershan.jpg'),
('102','18','张北','/api/public/static/image/aershan.jpg'),
('103','19','少林寺','/api/public/static/image/aershan.jpg'),
('104','19','洛阳','/api/public/static/image/luoyang.jpg'),
('105','19','龙门石窟','/api/public/static/image/aershan.jpg'),
('106','20','呼伦贝尔','/api/public/static/image/aershan.jpg'),
('107','20','阿尔山','/api/public/static/image/aershan.jpg'),
('108','20','海拉尔','/api/public/static/image/aershan.jpg'),
('109','21','哈尔滨','/api/public/static/image/aershan.jpg'),
('110','21','漠河','/api/public/static/image/aershan.jpg'),
('111','21','雪乡','/api/public/static/image/aershan.jpg'),
('112','21','大连','/api/public/static/image/aershan.jpg'),
('113','21','丹东','/api/public/static/image/aershan.jpg'),
('114','21','盘锦','/api/public/static/image/aershan.jpg');
DROP TABLE IF EXISTS  `article`;
CREATE TABLE `article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '1',
  `title` varchar(100) NOT NULL,
  `article` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=gbk;

insert into `article`(`id`,`user_id`,`title`,`article`) values
('81','13','测试','<p class="MsoNormal" style="margin-left:-.75pt">&nbsp; &nbsp; &nbsp;我想，我们可以泰然相信，比我们实际上相信的，更加多的事物。我们对自己的关怀能放弃多少，便可以忠实地给别人多少的关怀。大自然既能适应我们的长处，也能适应我们的弱点。有些人无穷无尽的忧患焦虑，成了一种几乎医治不好的疾病。我们又生就的爱夸耀我们所做工作的重要性；然而却有多少工作我们没有做！要是我们病倒了，怎么办呢？我们多么谨慎！决心不依照信仰而生活，我们尽可能避免它，从早到晚警戒着，到夜晚违心地析祷着，然后把自己交托给未定的运数。我们被迫生活得这样周到和认真，崇奉自己的生活，而否定变革的可能。我们说，只能这样子生活呵；可是从圆心可以画出多少条半径来，而生活方式就有这样的多。一切变革，都是值得思考的奇迹，每一刹那发生的事都可以是奇迹。孔夫予曾说：<span lang="EN-US" style="font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:微软雅黑">“</span>知之为知之，不知为不知，是知也。<span lang="EN-US" style="font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:微软雅黑">”</span>当一个人把他想象的事实提炼为他的理论之时，我预见到，一切人最后都要在这样的基础上建筑起他们的生活来。</p><p class="MsoNormal" style="margin-left:-.75pt"><span lang="EN-US"><o:p><br></o:p></span></p><p class="MsoNormal" style="text-align: center; margin-left: -0.75pt;"><img src="http://qxu1606520494.my3w.com/api/public/uploads/20180428/6ce43c879f352d649fc78d17520108bf.jpg" style="width: 508.448px; height: 339px;"><span lang="EN-US"><o:p><br></o:p></span></p><p class="MsoNormal" style="text-align: center; margin-left: -0.75pt;"><span lang="EN-US"><o:p><br></o:p></span></p><p class="MsoNormal" style="text-align: left; margin-left: -0.75pt;"><span lang="EN-US"><o:p></o:p></span></p><p class="MsoNormal" style="margin-left:-.75pt">&nbsp; &nbsp; &nbsp;让我们思考一下，我前面所说的大多数人的忧虑和烦恼又是些什么，其中有多少是必须忧虑的，至少是值得小心对待的呢？虽然生活在外表的文明中，我们若能过一过原始性的、新开辟的垦区生活还是有益处的，即使仅仅为了明白生活必需品大致是些什么，及如何才能得到这些必需品，甚至翻一翻商店里的古老的流水账，看看商店里经常出售些什么，又存积哪些货物，就是看看最杂的杂货究竟是一些什么也好。时代虽在演进，对人类生存的基本原则却还没有发生多少影响：好比我们的骨骼，跟我们的祖先的骨骼，大约是区别不出来的。<span lang="EN-US"><o:p></o:p></span></p>'),
('82','13','','<p class="MsoNormal" style="margin-left:-.75pt">&nbsp; &nbsp; 大部分的奢侈品，大部分的所谓生活的舒适，非但没有必要，而且对人类进步大有妨碍。所以关于奢侈与舒适，最明智的人生活得甚至比穷人更加简单和朴素。中国、印度、波斯和希腊的古哲学家都是一个类型的人物，外表生活再穷没有，而内心生活再富不过。我们都不够理解他们。然而可惊的一点是，我们居然对于他们知道得不少呢。近代那些改革家，各民族的救星，也都如此。唯有站在我们所谓的甘贫乐苦这有利地位上，才能成为大公无私的聪明的观察者。无论在农业，商业，文学或艺术中，奢侈生活产生的果实都是奢侈的。近来是哲学教授满天飞，哲学家一个没有。然而教授是可羡的，因为教授的生活是可羡的。但是，要做一个哲学家的活，不但要有精美的思想，不但要建立起一个学派来，而且要这样地爱智慧，从而按照了智慧的指示，过着一种简单、独立、大度、信任的生活。解决生命的一些问题，不但要在理论上，而且要在实践中。大学问家和思想家的成功，通常不是帝王式的，也不是英豪式的，反而是朝臣式的成功。他们应付生活，往往求其与习俗相符合，像他们的父辈一般，所以一点不能成为更好的人类的始祖。可是，为什么人类总在退化？是什么使得那些家族没落的？使国家衰亡的糜侈是什么性质的呢？在我们的生活中，我们能否确定自己并未这样？哲学家甚至在生活的外形上也是处在时代前列的。他不像他同时代人那样地吃喝、居住、穿着、取暖。一个人既是哲学家，怎会没有比别人更好的养身的保持体温的方法呢？</p><p class="MsoNormal" style="margin-left:-.75pt"><span lang="EN-US"><o:p><br></o:p></span></p><p class="MsoNormal" style="text-align: center; margin-left: -0.75pt;"><img src="http://qxu1606520494.my3w.com/api/public/uploads/20180428/0d3ef9ec06fd4a47a96142896b2c396e.jpg" style="width: 630.495px; height: 420px;"><span lang="EN-US"><o:p><br></o:p></span></p><p class="MsoNormal" style="text-align: center; margin-left: -0.75pt;"><span lang="EN-US"><o:p><br></o:p></span></p><p class="MsoNormal" style="text-align: left; margin-left: -0.75pt;"><span lang="EN-US"><o:p></o:p></span></p><p class="MsoNormal" style="margin-left:-.75pt">&nbsp; &nbsp; &nbsp;人已在我所描写的几种方式下暖和了，其次他要干什么呢？当然不会是同等样的更多的温暖。他不会要求更多更富足的食物，更大更光耀的房屋，更丰富更精美的衣服，更多更持久更灼热的火炉等等了。他在得到了这些生命所必需的事物之后，就不会要过剩品而要有另一些东西；那就是说免于卑微工作的假期开始了，现在他要向生命迈进了。泥土看来是适宜于种子的，因为泥土使它的胚根向下延伸，然后它可以富有自信地使茎向上茁长。为什么人在泥土里扎了根之后，不能援例向天空伸展呢？<span lang="EN-US">——</span>因为那些更高贵的植物的价值是由远离地面的、最后在空气和日光中结成的果实来评定的，而不是像对待那低卑蔬菜的那样。蔬菜就算是两年生的植物，那也只是被培植到生好根以后，而且常被摘去顶枝，使得许多人在开花的季节都认不得它们。<span lang="EN-US"><o:p></o:p></span></p>'),
('83','14','多少个秋天','<p><p class="MsoNormal" style="margin-left:-.75pt">&nbsp; &nbsp; &nbsp;多少个秋天的，嗳，还有冬天的日子，在城外度过，试听着风声，听了把它传布开来！我在里面几乎投下全部资金，为这笔生意而迎着寒风，使我连气都喘不过来了。如果风声中有两党政治的信息，一定是一些党的机关报上抢先发表了的。别些时候，守望在高岗或树梢的观察台上，用电信宣布有任何新的客人到来，或守候在山巅黄昏中，等待夜幕降落，好让我抓到一些东西，我抓到的从来就不多，这不多的却好像是<span lang="EN-US" style="font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:微软雅黑">“</span>天粮<span lang="EN-US" style="font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:微软雅黑">”</span>一样，那是会在太阳底下消溶的。</p><p class="MsoNormal" style="margin-left:-.75pt"><span lang="EN-US"><o:p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; 有很长一段时间，我是一家报纸的记者，报纸销路不广，而编辑从来不觉得我写的一大堆东西是可用的，所以，作家们都有同感，我忍受了很大苦痛，换来的只是我的劳动。然而在这件事上，苦痛又是它自身的报酬。</span></o:p></span></p><p class="MsoNormal" style="margin-left:-.75pt">&nbsp; &nbsp;&nbsp;<span lang="EN-US"><o:p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"><span style="font-size: 10.5pt; line-height: 93%; font-family: &quot;Microsoft YaHei UI&quot;, sans-serif;">很多年来，我委任我自己为暴风雪与暴风雨的督察员，我忠心称职；又兼测量员，虽不测量公路，却测量森林小径和捷径，并保它们畅通，我还测量了一年四季都能通行的岩石桥梁，自有大众的足踵走来，证实它们的便利。</span></span></o:p></span></p><p class="MsoNormal" style="margin-left:-.75pt"><span lang="EN-US"><o:p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"><span style="font-size: 10.5pt; line-height: 93%; font-family: &quot;Microsoft YaHei UI&quot;, sans-serif;"><br></span></span></o:p></span></p><p class="MsoNormal" style="margin-left:-.75pt"></p><div style="text-align: center;"><img src="http://qxu1606520494.my3w.com/api/public/uploads/20180428/dd4bc81dde3671c04986a3c205527e34.jpg" style="width: 599.939px; height: 400px;"></div><div style="text-align: left;"><br></div><span lang="EN-US"><o:p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"><span style="font-size: 10.5pt; line-height: 93%; font-family: &quot;Microsoft YaHei UI&quot;, sans-serif;">&nbsp; &nbsp; &nbsp;我也曾守护过城区的野兽，使忠于职守的牧人要跳过篱笆，遇到过许多的困难；我对于人迹罕到的田庄的角隅也特别注意：却不大知道约那斯或所罗门今天在哪一块田地上工作；因为这已不是我份内的事了。我给红色的越橘，沙地上的樱桃树和荨麻，红松和黑愕，白葡萄藤和黄色的紫罗兰花都浇过水，否则在天气干燥的季节中，它们可能会枯萎的。</span></span></o:p></span></p><p><span lang="EN-US"><o:p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"><span style="font-size: 10.5pt; line-height: 93%; font-family: &quot;Microsoft YaHei UI&quot;, sans-serif;"><span style="font-size: 10.5pt; line-height: 93%; font-family: &quot;Microsoft YaHei UI&quot;, sans-serif;">&nbsp; &nbsp; &nbsp;简单他说，我这样子干了很久（我一点不夸耀），我忠心耿耿地管理我的这些事，直到后来越来越明白了，市民们是不愿意把我包括在公职人员的名单之内，也不愿意给我一笔小小的薪俸，让我有个挂名职务的。我记的账，我可以赌咒是很仔细的，真是从未被查对过，也不用说核准了，更不用说付款，结清账目了，好在我的心思也不放在这上面。</span><br></span><br></span><br></o:p></span><p></p></p>'),
('84','14','你好，旅行','<p class="MsoNormal" style="margin-left: -0.75pt;"><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; &nbsp;不久以前，一个闲步的印第安人到我的邻舍一位著名律师家中兜卖篮子。</span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;微软雅黑&quot;,sans-serif;
mso-bidi-font-family:微软雅黑;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">“</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">你们要买篮子吗？</span><span lang="EN-US" style="font-size:10.5pt;line-height:
93%;font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:微软雅黑;color:#767171;
mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">”</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">他说。口答是</span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;
font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:微软雅黑;color:#767171;
mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">“</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">不，我们不要</span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;
font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:微软雅黑;color:#767171;
mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">”</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">。</span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;
font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:微软雅黑;color:#767171;
mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">“</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">什么！</span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;
font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:微软雅黑;color:#767171;
mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">”</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">印第安人出门叫道，</span><span lang="EN-US" style="font-size:10.5pt;line-height:
93%;font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:微软雅黑;color:#767171;
mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">“</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">你们想要饿死我们吗？</span><span lang="EN-US" style="font-size:10.5pt;line-height:
93%;font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:微软雅黑;color:#767171;
mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">”</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">看到他的勤劳的白种人邻居，生活得如此富裕<span lang="EN-US">——</span>因为律师只要把辩论之词编织起来，就像有魔术似的，富裕和地位都跟着来了<span lang="EN-US">——</span>因而这印第安人曾自言自语：我也要做生意了；我编织篮子；这件事是我能做的。他以为编织好篮子就完成了他的一份，轮下来就应该是自种人向他购买了。他却不知道，他必须使人感到购买他的篮于是值得的，至少得使别人相信，购买这一只篮于是值得的，要不然他应该制造别一些值得叫人购买的东西。我也曾编织了一种精巧的篮子，我并没有编造得使人感到值得购买它。在我这方页，我一点不觉得我犯不着编织它们，非但没有去研究如何编织得使人们觉得更加值得购买，我倒是研究了如何可以避免这</span><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; font-size: 10.5pt;">买卖的勾当。人们赞美而认为成功的生活，只不过是生活中的这么一种。为什么我们要夸耀这一种而贬低别一种生活呢？</span></p><p class="MsoNormal" style="margin-left: -0.75pt;"><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; &nbsp;发现市民同胞们大约是不会在法院中，教堂中，或任何别的地方给我一个职位的了，我只得自己改道，于是我比以往更专心地把脸转向了森林，那里的一切都很熟识我。我决定立刻就开业，不必等候通常的所谓经费了，就动用我手上已经有的一点儿微薄的资财吧。我到瓦尔登湖上去的目的，并不是去节俭地生活，也不是去挥霍，而是去经营一些私事，为的是在那儿可以尽量少些麻烦；免得我因为缺乏小小的常识，事业又小，又不懂得生意经，做出其傻甚于凄惨的事情来。</span></p><p class="MsoNormal" style="margin-left: -0.75pt;"><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"><br></span></p><p class="MsoNormal" style="margin-left: -0.75pt;"><div style="text-align: center;"><img src="http://qxu1606520494.my3w.com/api/public/uploads/20180428/9101e4e38e70345b15760371e5796d4d.jpg" style="width: 525px; height'),
('85','15','小不点儿的舒心','<p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; &nbsp;一个人，到后来，找到工作做了，其实并不要他穿上新衣服去上工的；旧衣服就行了，就是那些很久地放在阁楼中，积起了灰尘的</span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;微软雅黑&quot;,sans-serif;
mso-bidi-font-family:微软雅黑;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">fH</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">衣服。一个英雄穿</span><span lang="EN-US" style="font-size:10.5pt;line-height:
93%;font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:微软雅黑;color:#767171;
mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">IR</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">鞋子的时间倒要比他的跟班穿它们的时间长<span lang="EN-US">——</span>如果说，英雄也有限班的活<span lang="EN-US">——</span>至于赤脚的历史比穿鞋子更悠久了，而英雄是可以赤脚的。只有那些赴夜宴，到立法院去的人必须穿上新衣服，他们换了一件又一件，正如那些地方换了一批又一批人。可是，如果把我的短上衣和裤子穿上身，帽子戴上鞋子穿上，便可以礼拜上帝的话，那未有这些也就够了，不是吗？谁曾注意到他的破衣服<span lang="EN-US">— —</span>真的已经穿得破敝不堪了，变成了当初的原料，就是送给一个乞儿也算不得行善了，说不定那乞儿还要拿它转送给一个比他更贫苦的人，那人倒可以说是最富有的，因为最后还是他什么都不要还可以过活的呢。我说你得提防那些必须穿新</span><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; font-size: 10.5pt;">衣服的事业，尽可不提防那些穿新衣服的人。如果没有新的人，新衣服怎么能做得合他的身？如果你有什么事业要做，穿上旧衣服试试看。人之所需，并不是要做些事，而是要有所为，或是说，需有所是。也许我们是永远不必添置新衣服的，不论旧衣服已如何破敝和肮脏，除非我们已经这般地生活了，或经营了，或者说，已向着什么而航行了，在我们这古老的躯壳里已有着新的生机了，那时若还是依然故我，便有旧瓶装新酒之感了。我们的换羽毛的季节，就像飞禽的，必然是生命之中一个大的转折点。潜鸟退到僻静的池塘边去脱毛。蛇蜕皮的情形也是如此，同样的是蛹虫的出茧。都是内心里孜孜扩展着的结果；衣服不过是我们的最表面的角质，或者说，尘世之烦恼而已。要不然我们将发现我们在伪装底下行进，到头来必不可兔地将披人类及我们自己的意见所唾弃。</span></p><p><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; font-size: 10.5pt;"><br></span><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; &nbsp;我们穿上一件衣服又一件，好像我们是外生植物一样，靠外加物来生长的。穿在我们最外面的，常常是很薄很花巧的衣服，那只是我们的表皮，或者说，假皮肤，并不是我们的生命的一部分，这里那里剥下来也并不是致命伤；我们经常穿着的、较厚的衣服，是我们的细胞壁，或者说，皮层；我们的衬衣可是我们的韧皮，或者说，真正的树皮，剥下来的话，不能不连皮带肉，伤及身体的。我相信所有的物种，在某些季节里都穿着有类似衬衣的东西。一个人若能穿得这样简单，以至在黑暗中都能摸到自己，而且他在各方面都能生活得周密，有备而无恐，那未，即使敌人占领了城市，他也能像古代哲学家一样，空手徒步出城，不用担什么心思。一件厚衣服的用处，大体上可跟三件薄的衣服相同，便宜的衣服可以用真正适合顾客财力的价格买到，一件厚厚的上衣五元就可以买到了，它可以穿上好几年，厚厚的长裤两元钱，牛皮靴一元半，夏天的帽子不过一元的四分之一，冬天的帽子六毛两分半，或许还可以花上一笔极少的钱，自己在家里制一顶更好的帽子，那穿上了这样的一套自己辛勤劳动赚来的衣服，哪里还是贫穷，难道会没有聪明人来向他表示敬意吗？</span></p><p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"><br></span></p><p style="text-align: center; ">&nbsp;<img src="http://qxu1606520494.my3w.com/api/public/uploads/20180428/bdfed5e4a89ef7c11bf85d1cedb9c771.jpg" style="width: 752.121px; height: 390px; float: none;"><br></p><p><br></p>'),
('86','15','自由的生活','<p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; &nbsp;也许有人猜想，拥有这样的多余房屋，是为了未雨绸缪，防患于未然，我认为对个人而言，这样做的好处不过是可以够他偿付他的丧葬费罢了。但是人也许是用不到安葬自己的。然而，这里面就指出了文明人和野蛮人中间的一个重要区别；有人给文明人的生活设计了一套制度，无疑是为了我们的好处，这套制度为了保存种族的生活，能使种族的生活更臻完美，却大大牺牲了个人的生活。可是我希望指出，为了得到这好处，我们目前作出何等样的牺牲，我还要建议，我们是可以不作出任何牺牲就得到很多好处的。你说可怜的穷人经常和你在一起，父亲吃了酸葡萄，孩子的牙齿也发酸，说这些话有什么意思呢？</span></p><p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"><br></span><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; text-align: center;">&nbsp;</span></p><p>&nbsp;<img src="http://qxu1606520494.my3w.com/api/public/uploads/20180428/d4f7a087b8d58d246f6529984255db33.jpg" style="width: 715.233px; height: 476px;"></p><p><span lang="EN-US" style="font-size:10.5pt;line-height:
93%;font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:微软雅黑;color:#767171;
mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; “</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">主那和华说，我指着我的永生起誓，你们在以色列中必不再有用这俗语的因由。</span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;微软雅黑&quot;,sans-serif;
mso-bidi-font-family:微软雅黑;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">”</span></p><p class="MsoNormal" style="margin-left:-.75pt"><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;微软雅黑&quot;,sans-serif;
mso-bidi-font-family:微软雅黑;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">&nbsp; &nbsp; “</span></span><span style="font-size:10.5pt;line-height:93%;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">看啊，世人都是属于我的，为父的怎样属我，为子的也照样属我，犯罪的他必死亡。</span></span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;微软雅黑&quot;,sans-serif;
mso-bidi-font-family:微软雅黑;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">”</span></span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><o:p></o:p></span></p><p><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;微软雅黑&quot;,sans-serif;
mso-bidi-font-family:微软雅黑;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">

<span style="font-size: 10.5pt; line-height: 93%; font-family: &quot;Microsoft YaHei UI&quot;, sans-serif;">当我想到我的邻居时，那些康科德的农夫们，他们的境遇至少同别的阶级一样好，我发现他们中间的大部分人都已工作了二十年三十年或四十年了，为的是他们可以成为他们农场的真正主人，通常这些农场是附带了抵押权而传给他们的遗产，或许是借了钱买下来的，<span lang="EN-US">— —</span>我们不妨把他们的劳力中的三分之一，作为房屋的代价，<span lang="EN-US">——</span>通常总是他们还没有付清那一笔借款。真的，那抵押权有时还超过了农场的原价，结果农场自身已成了一个大累赘，然而到最后总是有承继的人，正如他自己说的，因为他这个承继人和农场太亲近了。我找评价课税官谈过话，惊诧地发现他们竟然不能够一口气背出十二个拥有农场，。</span><br></span><br></p>'),
('87','16','好玩呀，可不咋的','<p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; 大多数人似乎从来没有想过，一座房屋算什么，虽然他们不该穷困，事实上却终身穷困了，因为他们总想有一座跟他们邻人的房屋一样的房屋。好像你只能穿上裁缝给你制成的任何衣服，你逐渐放弃了棕桐叶的帽子或上拨鼠皮的软帽，你只能对这时代生活的艰难感慨系之了，因为你买不起一顶皇冠！要发明一座比我们所已经有的，更便利、更华美的房屋是可能的，但大家承认，已有的房屋我们都还买不起。难道我们老要研究怎样得到越来越多的东西，而不能有时满足于少弄一点东西呢？难道要那些可尊敬的公民们，庄严地用他们的言教和身教，来教育年轻人早在老死以前就置备好若干双多余的皮鞋和若干把雨伞，以及空空的客房，来招待不存在的客人吗？我们的家具为什么不能像阿拉伯人或印第安人那样地简单呢？我们把民族的救星尊称为天上的信使，给人类带来神灵礼物的使者，当我想到他们的时候，我想来想去，想不出他们的足踵后面，会有仆役随从，会有什么满</span><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; font-size: 10.5pt;">载着时式家具的车辆。如果我同意下面这种说法，那会怎么样呢</span><span lang="EN-US" style="color: rgb(118, 113, 113); font-size: 10.5pt;">——</span><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; font-size: 10.5pt;">那不是一种奇怪的同意吗？</span><span lang="EN-US" style="color: rgb(118, 113, 113); font-size: 10.5pt;">——</span><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; font-size: 10.5pt;">那说法就是我们在道德上和智慧上如果比阿拉伯人更为优越，那未我们的家具也应该比他们的更复杂！目前，我们的房屋正堆满了家具，都给家具弄脏了呢，一位好主妇宁愿把大部分家具扫入垃圾坑，也不愿让早上的工作放着不干。早上的工作呵！在微红色的曙光中，在曼依的音乐里，世界上的人该做什么样的早晨的工作呢？我桌上，有三块石灰石，非得天天拂拭它们不可，真叫我震惊，我头脑中的灰尘还来不及拂拭呢，赶快嫌恶地把它们扔出窗子去。你想，我怎么配有一个有家具的房屋呢？我宁可坐在露天，因为草叶之上，没有灰尘，除非是人类已经玷辱过了的地方。</span></p><p style="text-align: center; "><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; font-size: 10.5pt;"><br></span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="http://qxu1606520494.my3w.com/api/public/uploads/20180428/d8aa84e79ff836c7133c65a05af222cb.jpg" style="width: 660.519px; height: 440px;"><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; font-size: 10.5pt;"><br></span></p><p><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; font-size: 10.5pt;"><br></span></p><p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; &nbsp;骄奢淫逸的人创设了时髦翻新，让成群的人勤谨地追随。一个旅行者，投宿在所谓最漂亮的房间里，他就会发现这点，因为旅店主人们当他萨达拿泼勒斯来招待了，要是他接受了他们的盛情，不多久他就会完全失去男性的精神。我想到铁路车厢，我们是宁愿花更多的钱于布置的奢侈上，而不在乎行车的安全和便捷的，结果安全和便捷都谈不到，车厢成了一个摩登客厅，有软褥的睡椅，土耳其式的厚榻，遮阳的帘予，还有一百种另外的东方的花样，我们把它们搬到西方来了，那些花样，原先是为天朝帝国的六宫粉黛，天子的后妃，后宫中的妻妾而发明的，那是约拿单听到名称都要难为情的东西。我宁可坐在一只大南瓜上，由我一个人占有它，不愿意挤在天鹅绒的垫子上。我宁可坐一辆牛车，自由自在来去，不愿意坐什么花哨的游览污去天堂，一路上呼吸着污浊的空气。</span><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; font-size: 10.5pt;"><br></span><br></p>'),
('88','15','白白的天空','<p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; &nbsp;也许有人猜想，拥有这样的多余房屋，是为了未雨绸缪，防患于未然，我认为对个人而言，这样做的好处不过是可以够他偿付他的丧葬费罢了。但是人也许是用不到安葬自己的。然而，这里面就指出了文明人和野蛮人中间的一个重要区别；有人给文明人的生活设计了一套制度，无疑是为了我们的好处，这套制度为了保存种族的生活，能使种族的生活更臻完美，却大大牺牲了个人的生活。可是我希望指出，为了得到这好处，我们目前作出何等样的牺牲，我还要建议，我们是可以不作出任何牺牲就得到很多好处的。你说可怜的穷人经常和你在一起，父亲吃了酸葡萄，孩子的牙齿也发酸，说这些话有什么意思呢？</span></p><p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"><br></span><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; text-align: center;">&nbsp;</span></p><p>&nbsp;<img src="http://qxu1606520494.my3w.com/api/public/uploads/20180428/d4f7a087b8d58d246f6529984255db33.jpg" style="width: 715.233px; height: 476px;"></p><p><span lang="EN-US" style="font-size:10.5pt;line-height:
93%;font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:微软雅黑;color:#767171;
mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; “</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">主那和华说，我指着我的永生起誓，你们在以色列中必不再有用这俗语的因由。</span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;微软雅黑&quot;,sans-serif;
mso-bidi-font-family:微软雅黑;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">”</span></p><p class="MsoNormal" style="margin-left:-.75pt"><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;微软雅黑&quot;,sans-serif;
mso-bidi-font-family:微软雅黑;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">&nbsp; &nbsp; “</span></span><span style="font-size:10.5pt;line-height:93%;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">看啊，世人都是属于我的，为父的怎样属我，为子的也照样属我，犯罪的他必死亡。</span></span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;微软雅黑&quot;,sans-serif;
mso-bidi-font-family:微软雅黑;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">”</span></span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><o:p></o:p></span></p><p><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;微软雅黑&quot;,sans-serif;
mso-bidi-font-family:微软雅黑;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">

<span style="font-size: 10.5pt; line-height: 93%; font-family: &quot;Microsoft YaHei UI&quot;, sans-serif;">当我想到我的邻居时，那些康科德的农夫们，他们的境遇至少同别的阶级一样好，我发现他们中间的大部分人都已工作了二十年三十年或四十年了，为的是他们可以成为他们农场的真正主人，通常这些农场是附带了抵押权而传给他们的遗产，或许是借了钱买下来的，<span lang="EN-US">— —</span>我们不妨把他们的劳力中的三分之一，作为房屋的代价，<span lang="EN-US">——</span>通常总是他们还没有付清那一笔借款。真的，那抵押权有时还超过了农场的原价，结果农场自身已成了一个大累赘，然而到最后总是有承继的人，正如他自己说的，因为他这个承继人和农场太亲近了。我找评价课税官谈过话，惊诧地发现他们竟然不能够一口气背出十二个拥有农场，。</span><br></span><br></p>'),
('79','13','测试','<p>&nbsp; &nbsp; &nbsp;测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试。</p><p><br></p><p><img src="http://qxu1606520494.my3w.com/api/public/uploads/20180428/2276ca4c9aecfae92cccca584c3f6c5b.jpg" style="width: 924px;"></p><p><br></p><p>&nbsp; &nbsp; &nbsp;测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试。<br></p>'),
('80','13','开心的一天','<p class="MsoNormal" style="margin-left:-.75pt">&nbsp; &nbsp; &nbsp;有人以为人生的全部，无论在高峰之巅或低陷之谷，都已给先驱者走遍，一切都已被注意到了。依熙爱芙琳的话：<span lang="EN-US" style="font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:微软雅黑">“</span>智慧的所罗门曾下令制定树木中间应有的距离；罗马地方官也曾规定，你可以多少次到邻家的地上去拣拾那落下来的橡实而不算你乱闯的，并曾规定多少份橡实属于邻人。<span lang="EN-US" style="font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:微软雅黑">”</span>希波克拉底甚至传下了剪指甲的方法，剪得不要太短或太长，要齐手指头。无疑问的，认为把生命的变易和欢乐都消蚀殆尽的那种烦谦和忧闷，是跟亚当同样地古老的。但人的力量还从未被衡量出来呢；我们不能根据他已经完成的事来判断他的力量，人做得少极了。不论你以前如何失败过，<span lang="EN-US" style="font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:微软雅黑">“</span>别感伤，我的孩子，谁能指定你去做你未曾做完的事呢？<span lang="EN-US" style="font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:微软雅黑">”</span></p><p style="margin-left:-.75pt"><span lang="EN-US" style="font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:微软雅黑"><span style="font-size:10.0pt;mso-bidi-font-size:11.0pt;
line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:
&quot;Microsoft YaHei UI&quot;;color:black;mso-ansi-language:EN-US;mso-fareast-language:
ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; &nbsp;</span></span>我们可以用一千种简单的方法来测定我们的生命；举例以明之，这是同一个太阳，它使我种的豆子成熟，同时竟然照耀了像我们的地球之类的整个太阳系。如果我记住了这一点，那就能预防若干的错误。可是我锄草时并没有这样去想。星星是何等神奇的三角形的尖顶！字宙各处，有多少远远隔开的不同的物种在同时思考着同一事实啊！正如我们的各种体制一样，大自然和人生也是变化多端的。谁能预知别人的生命有着什么远景？难道还有比一瞬之间通过彼此的眼睛来观察更伟大的奇迹吗？我们本应该在一小时之内就经历了这人世的所有时代；是的，甚至经历了所有时代中所有的世界。历史、诗歌、神话！<span lang="EN-US">——</span>我不知道读别人的经验还有什么能像读这些这样地惊人而又详尽的。</p><p style="margin-left:-.75pt"><br></p><p style="text-align: center; margin-left: -0.75pt;"><img src="http://qxu1606520494.my3w.com/api/public/uploads/20180428/4451ef36d14166ae142103e9a0b696cb.jpg" style="width: 519.266px; height: 310px;"></p><p style="text-align: center; margin-left: -0.75pt;"><br></p><p class="MsoNormal" style="margin-top:0cm;margin-right:5.0pt;margin-bottom:3.7pt;
margin-left:-.75pt;text-align:justify;text-justify:inter-ideograph;line-height:
92%">&nbsp; &nbsp; &nbsp;凡我的邻人说是好的，有一大部分在我灵魂中却认为是坏的，至于我，如果要有所仟悔，我悔恨的反而是我的善良品</p><p class="MsoNormal" style="margin-top:0cm;margin-right:5.0pt;margin-bottom:3.7pt;
margin-left:-.75pt;text-align:justify;text-justify:inter-ideograph;line-height:
92%">行。是什么魔鬼攫住了我，使我品行这样善良的呢？老年人啊，你说了那些最聪明的话，你已经活了七十年了，而且活得</p><p class="MsoNormal" style="margin-top:0cm;margin-right:5.0pt;margin-bottom:3.7pt;
margin-left:-.75pt;text-align:justify;text-justify:inter-ideograph;line-height:
92%">很光荣，我却听到一个不可抗拒的声音，要求我不听你的话。新的世代抛弃前一代的业绩，好像它们是些搁浅的船。<span lang="EN-US"><o:p></o:p></span></p><p class="MsoNormal" style="margin-left:-.75pt"><span lang="EN-US"><o:p></o:p></span></p><p class="MsoNormal" style="margin-left:-.75pt"><span lang="EN-US"><o:p></o:p></span></p>'),
('89','7','蓝色','<p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; &nbsp;也许有人猜想，拥有这样的多余房屋，是为了未雨绸缪，防患于未然，我认为对个人而言，这样做的好处不过是可以够他偿付他的丧葬费罢了。但是人也许是用不到安葬自己的。然而，这里面就指出了文明人和野蛮人中间的一个重要区别；有人给文明人的生活设计了一套制度，无疑是为了我们的好处，这套制度为了保存种族的生活，能使种族的生活更臻完美，却大大牺牲了个人的生活。可是我希望指出，为了得到这好处，我们目前作出何等样的牺牲，我还要建议，我们是可以不作出任何牺牲就得到很多好处的。你说可怜的穷人经常和你在一起，父亲吃了酸葡萄，孩子的牙齿也发酸，说这些话有什么意思呢？</span></p><p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"><br></span><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; text-align: center;">&nbsp;</span></p><p>&nbsp;<img src="http://qxu1606520494.my3w.com/api/public/uploads/20180428/d4f7a087b8d58d246f6529984255db33.jpg" style="width: 715.233px; height: 476px;"></p><p><span lang="EN-US" style="font-size:10.5pt;line-height:
93%;font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:微软雅黑;color:#767171;
mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; “</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">主那和华说，我指着我的永生起誓，你们在以色列中必不再有用这俗语的因由。</span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;微软雅黑&quot;,sans-serif;
mso-bidi-font-family:微软雅黑;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">”</span></p><p class="MsoNormal" style="margin-left:-.75pt"><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;微软雅黑&quot;,sans-serif;
mso-bidi-font-family:微软雅黑;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">&nbsp; &nbsp; “</span></span><span style="font-size:10.5pt;line-height:93%;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">看啊，世人都是属于我的，为父的怎样属我，为子的也照样属我，犯罪的他必死亡。</span></span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;微软雅黑&quot;,sans-serif;
mso-bidi-font-family:微软雅黑;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">”</span></span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><o:p></o:p></span></p><p><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;微软雅黑&quot;,sans-serif;
mso-bidi-font-family:微软雅黑;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">

<span style="font-size: 10.5pt; line-height: 93%; font-family: &quot;Microsoft YaHei UI&quot;, sans-serif;">当我想到我的邻居时，那些康科德的农夫们，他们的境遇至少同别的阶级一样好，我发现他们中间的大部分人都已工作了二十年三十年或四十年了，为的是他们可以成为他们农场的真正主人，通常这些农场是附带了抵押权而传给他们的遗产，或许是借了钱买下来的，<span lang="EN-US">— —</span>我们不妨把他们的劳力中的三分之一，作为房屋的代价，<span lang="EN-US">——</span>通常总是他们还没有付清那一笔借款。真的，那抵押权有时还超过了农场的原价，结果农场自身已成了一个大累赘，然而到最后总是有承继的人，正如他自己说的，因为他这个承继人和农场太亲近了。我找评价课税官谈过话，惊诧地发现他们竟然不能够一口气背出十二个拥有农场，。</span><br></span><br></p>'),
('90','7','多里安','<p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; &nbsp;也许有人猜想，拥有这样的多余房屋，是为了未雨绸缪，防患于未然，我认为对个人而言，这样做的好处不过是可以够他偿付他的丧葬费罢了。但是人也许是用不到安葬自己的。然而，这里面就指出了文明人和野蛮人中间的一个重要区别；有人给文明人的生活设计了一套制度，无疑是为了我们的好处，这套制度为了保存种族的生活，能使种族的生活更臻完美，却大大牺牲了个人的生活。可是我希望指出，为了得到这好处，我们目前作出何等样的牺牲，我还要建议，我们是可以不作出任何牺牲就得到很多好处的。你说可怜的穷人经常和你在一起，父亲吃了酸葡萄，孩子的牙齿也发酸，说这些话有什么意思呢？</span></p><p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"><br></span><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; text-align: center;">&nbsp;</span></p><p>&nbsp;<img src="http://qxu1606520494.my3w.com/api/public/uploads/20180428/d4f7a087b8d58d246f6529984255db33.jpg" style="width: 715.233px; height: 476px;"></p><p><span lang="EN-US" style="font-size:10.5pt;line-height:
93%;font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:微软雅黑;color:#767171;
mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; “</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">主那和华说，我指着我的永生起誓，你们在以色列中必不再有用这俗语的因由。</span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;微软雅黑&quot;,sans-serif;
mso-bidi-font-family:微软雅黑;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">”</span></p><p class="MsoNormal" style="margin-left:-.75pt"><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;微软雅黑&quot;,sans-serif;
mso-bidi-font-family:微软雅黑;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">&nbsp; &nbsp; “</span></span><span style="font-size:10.5pt;line-height:93%;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">看啊，世人都是属于我的，为父的怎样属我，为子的也照样属我，犯罪的他必死亡。</span></span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;微软雅黑&quot;,sans-serif;
mso-bidi-font-family:微软雅黑;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">”</span></span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><o:p></o:p></span></p><p><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;微软雅黑&quot;,sans-serif;
mso-bidi-font-family:微软雅黑;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">

<span style="font-size: 10.5pt; line-height: 93%; font-family: &quot;Microsoft YaHei UI&quot;, sans-serif;">当我想到我的邻居时，那些康科德的农夫们，他们的境遇至少同别的阶级一样好，我发现他们中间的大部分人都已工作了二十年三十年或四十年了，为的是他们可以成为他们农场的真正主人，通常这些农场是附带了抵押权而传给他们的遗产，或许是借了钱买下来的，<span lang="EN-US">— —</span>我们不妨把他们的劳力中的三分之一，作为房屋的代价，<span lang="EN-US">——</span>通常总是他们还没有付清那一笔借款。真的，那抵押权有时还超过了农场的原价，结果农场自身已成了一个大累赘，然而到最后总是有承继的人，正如他自己说的，因为他这个承继人和农场太亲近了。我找评价课税官谈过话，惊诧地发现他们竟然不能够一口气背出十二个拥有农场，。</span><br></span><br></p>'),
('91','7','向往的生活','<p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; &nbsp;也许有人猜想，拥有这样的多余房屋，是为了未雨绸缪，防患于未然，我认为对个人而言，这样做的好处不过是可以够他偿付他的丧葬费罢了。但是人也许是用不到安葬自己的。然而，这里面就指出了文明人和野蛮人中间的一个重要区别；有人给文明人的生活设计了一套制度，无疑是为了我们的好处，这套制度为了保存种族的生活，能使种族的生活更臻完美，却大大牺牲了个人的生活。可是我希望指出，为了得到这好处，我们目前作出何等样的牺牲，我还要建议，我们是可以不作出任何牺牲就得到很多好处的。你说可怜的穷人经常和你在一起，父亲吃了酸葡萄，孩子的牙齿也发酸，说这些话有什么意思呢？</span></p><p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"><br></span><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; text-align: center;">&nbsp;</span></p><p>&nbsp;<img src="http://qxu1606520494.my3w.com/api/public/uploads/20180428/d4f7a087b8d58d246f6529984255db33.jpg" style="width: 715.233px; height: 476px;"></p><p><span lang="EN-US" style="font-size:10.5pt;line-height:
93%;font-family:&quot;微软雅黑&quot;,sans-serif;mso-bidi-font-family:微软雅黑;color:#767171;
mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; “</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">主那和华说，我指着我的永生起誓，你们在以色列中必不再有用这俗语的因由。</span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;微软雅黑&quot;,sans-serif;
mso-bidi-font-family:微软雅黑;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">”</span></p><p class="MsoNormal" style="margin-left:-.75pt"><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;微软雅黑&quot;,sans-serif;
mso-bidi-font-family:微软雅黑;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">&nbsp; &nbsp; “</span></span><span style="font-size:10.5pt;line-height:93%;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">看啊，世人都是属于我的，为父的怎样属我，为子的也照样属我，犯罪的他必死亡。</span></span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;微软雅黑&quot;,sans-serif;
mso-bidi-font-family:微软雅黑;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">”</span></span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><o:p></o:p></span></p><p><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;微软雅黑&quot;,sans-serif;
mso-bidi-font-family:微软雅黑;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">

<span style="font-size: 10.5pt; line-height: 93%; font-family: &quot;Microsoft YaHei UI&quot;, sans-serif;">当我想到我的邻居时，那些康科德的农夫们，他们的境遇至少同别的阶级一样好，我发现他们中间的大部分人都已工作了二十年三十年或四十年了，为的是他们可以成为他们农场的真正主人，通常这些农场是附带了抵押权而传给他们的遗产，或许是借了钱买下来的，<span lang="EN-US">— —</span>我们不妨把他们的劳力中的三分之一，作为房屋的代价，<span lang="EN-US">——</span>通常总是他们还没有付清那一笔借款。真的，那抵押权有时还超过了农场的原价，结果农场自身已成了一个大累赘，然而到最后总是有承继的人，正如他自己说的，因为他这个承继人和农场太亲近了。我找评价课税官谈过话，惊诧地发现他们竟然不能够一口气背出十二个拥有农场，。</span><br></span><br></p>'),
('92','17','静静的看着你','<p class="MsoNormal" style="margin-left:-.75pt">&nbsp; &nbsp; &nbsp;人类在过着静静的绝望的生活。所谓听天由命，正是肯定的绝望。你从绝望的城市走到绝望的村庄，以水貂和麝鼠的勇敢来安慰自己。在人类的所谓游戏与消遣底下，甚至都隐藏着一种凝固的、不知又不觉的绝望。两者中都没有娱乐可言，因为工作之后才能娱乐。可是不做绝望的事，才是智慧的一种表征。</p><p><font color="#000000"><span style="font-size: 13.3333px;">&nbsp; &nbsp; &nbsp; 人类在过着静静的绝望的生活。所谓听天由命，正是肯定的绝望。你从绝望的城市走到绝望的村庄，以水貂和麝鼠的勇敢来安慰自己。在人类的所谓游戏与消遣底下，甚至都隐藏着一种凝固的、不知又不觉的绝望。两者中都没有娱乐可言，因为工作之后才能娱乐。可是不做绝望的事，才是智慧的一种表征。</span></font></p><p><font color="#000000"><span style="font-size: 13.3333px;">&nbsp; &nbsp; &nbsp;当我们用教义问答法的方式，思考着什么是人生的宗旨，什么是生活的真正的必需品与资料时，仿佛人们还曾审慎从事地选择了这种生活的共同方式，而不要任何别的方式似的。其实他们也知道，舍此而外，别无可以挑选的方式。但清醒健康的人都知道，太阳终古常新。抛弃我们的偏见，是永远不会来不及的。无论如何古老的思想与行为，除非有确证，便不可以轻信。在今天人人附和或以为不妨默认的真理，很可能在明天变成虚无缥缈的氤氲，但还会有人认为是乌云，可以将一阵甘霖洒落到大地上来。把老头子认为办不到的事来试办一下，你往往办成功了.</span></font></p><p><font color="#000000"><span style="font-size: 13.3333px;"><br></span></font></p><p><img style="width: 788.392px; height: 361px;" src="http://120.79.8.48/api/public/uploads/20180503/51e11fd06d75c1fa911fff6b3c1805b4.jpg"><font color="#000000"><span style="font-size: 13.3333px;"><br></span></font></p>'),
('93','7','静夜','<p><font color="#000000" face="宋体" size="3">

</font></p><p style="margin: 0cm 0cm 3.65pt -0.75pt;"><font color="#000000" face="Microsoft YaHei UI" size="2">&nbsp;&nbsp;&nbsp;&nbsp; 人类在过着静静的绝望的生活。所谓听天由命，正是肯定的绝望。你从绝望的城市走到绝望的村庄，以水貂和麝鼠的勇敢来安慰自己。在人类的所谓游戏与消遣底下，甚至都隐藏着一种凝固的、不知又不觉的绝望。两者中都没有娱乐可言，因为工作之后才能娱乐。可是不做绝望的事，才是智慧的一种表征。</font></p><p><font color="#000000" face="宋体" size="3">

</font><span style=\'color: black; line-height: 93%; font-family: "Microsoft YaHei UI",sans-serif; font-size: 10pt; mso-bidi-font-family: "Microsoft YaHei UI"; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 11.0pt;\'>当我们用教义问答法的方式，思考着什么是人生的宗旨，什么是生活的真正的必需品与资料时，仿佛人们还曾审慎从事地选择了这种生活的共同方式，而不要任何别的方式似的。其实他们也知道，舍此而外，别无可以挑选的方式。但清醒健康的人都知道，太阳终古常新。抛弃我们的偏见，是永远不会来不及的。无论如何古老的思想与行为，除非有确证，便不可以轻信。在今天人人附和或以为不妨默认的真理，很可能在明天变成虚无缥缈的氤氲，但还会有人认为是乌云，可以将一阵甘霖洒落到大地上来。把老头子认为办不到的事来试办一下，你往往办成功了。老人有旧的一套，新人有新的一套。古人不知添上燃料便。</span></p><p><span style=\'color: black; line-height: 93%; font-family: "Microsoft YaHei UI",sans-serif; font-size: 10pt; mso-bidi-font-family: "Microsoft YaHei UI"; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 11.0pt;\'><br><span style=\'color: black; line-height: 93%; font-family: "Microsoft YaHei UI",sans-serif; font-size: 10pt; mso-bidi-font-family: "Microsoft YaHei UI"; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 11.0pt;\'><span style=\'color: black; line-height: 93%; font-family: "Microsoft YaHei UI",sans-serif; font-size: 10pt; mso-bidi-font-family: "Microsoft YaHei UI"; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 11.0pt;\'><br></span><img style="width: 924px;" src="http://120.79.8.48/api/public/uploads/20180508/837d87455720c20be1cd7ed040c64954.jpg"><br></span></span></p>');
DROP TABLE IF EXISTS  `articlenum`;
CREATE TABLE `articlenum` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '1',
  `num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=gbk;

insert into `articlenum`(`id`,`user_id`,`num`) values
('11','13','4'),
('12','14','2'),
('13','15','3'),
('14','16','1'),
('15','17','1'),
('16','7','1');
DROP TABLE IF EXISTS  `concern`;
CREATE TABLE `concern` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `who` int(11) NOT NULL DEFAULT '1',
  `beconcern` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=gbk;

insert into `concern`(`id`,`who`,`beconcern`) values
('22','15','14'),
('21','15','13'),
('23','15','16'),
('26','18','13'),
('28','7','15');
DROP TABLE IF EXISTS  `destination`;
CREATE TABLE `destination` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `holiday_id` int(11) DEFAULT NULL,
  `month` tinyint(2) DEFAULT NULL,
  `suitable_id` int(11) DEFAULT NULL,
  `season_id` int(11) DEFAULT NULL,
  `tripmode_id` smallint(11) DEFAULT NULL,
  `money` varchar(25) NOT NULL,
  `day` int(11) NOT NULL DEFAULT '1',
  `address_area_id` int(11) NOT NULL DEFAULT '1',
  `article_img` varchar(255) NOT NULL DEFAULT '/api/public/static/image/pexels-photo-247114.jpeg',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=gbk;

insert into `destination`(`id`,`holiday_id`,`month`,`suitable_id`,`season_id`,`tripmode_id`,`money`,`day`,`address_area_id`,`article_img`) values
('88','11','1','3','13','2','1300','7','113','/api/public/uploads/20180428/ed145661ceea5a8ed07a10cc567ee3c0.jpeg'),
('79','11','1','1','13','11','1000','10','1','/api/public/uploads/20180428/2276ca4c9aecfae92cccca584c3f6c5b.jpg'),
('80','11','2','12','13','2','800','5','2','/api/public/uploads/20180428/4451ef36d14166ae142103e9a0b696cb.jpg'),
('81','11','4','12','13','7','900','3','3','/api/public/uploads/20180428/6ce43c879f352d649fc78d17520108bf.jpg'),
('82','11','5','3','13','11','600','3','4','/api/public/uploads/20180428/0d3ef9ec06fd4a47a96142896b2c396e.jpg'),
('83','11','6','6','13','11','1300','6','5','/api/public/uploads/20180428/dd4bc81dde3671c04986a3c205527e34.jpg'),
('84','11','8','12','13','8','500','4','2','/api/public/uploads/20180428/9101e4e38e70345b15760371e5796d4d.jpg'),
('85','11','10','3','13','11','2000','7','7','/api/public/uploads/20180428/bdfed5e4a89ef7c11bf85d1cedb9c771.jpg'),
('86','11','11','12','13','9','1600','6','92','/api/public/uploads/20180428/d4f7a087b8d58d246f6529984255db33.jpg'),
('87','11','12','1','13','11','600','5','104','/api/public/uploads/20180428/d8aa84e79ff836c7133c65a05af222cb.jpg'),
('89','5','13','12','5','11','300','2','50','/api/public/uploads/20180501/998c1ae92ab9d9160ed22c9a6f0e5f81.jpg'),
('90','11','5','12','13','6','400','2','32','/api/public/uploads/20180501/tourismFunds.jpg'),
('91','8','6','4','9','3','760','4','66','/api/public/uploads/20180501/animals-avian-beach-760984.jpg'),
('92','11','1','3','10','1','1000','6','5','/api/public/uploads/20180503/51e11fd06d75c1fa911fff6b3c1805b4.jpg'),
('93','11','13','12','13','11','2000','5','1','/api/public/uploads/20180508/016dce81c234d3f2adecd2db1426599f.jpg');
DROP TABLE IF EXISTS  `icontime`;
CREATE TABLE `icontime` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `collect` int(11) NOT NULL DEFAULT '0',
  `praise` int(11) NOT NULL DEFAULT '0',
  `look` int(11) NOT NULL DEFAULT '0',
  `flower` int(11) NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '2018-04-13 12:03:01',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=gbk;

insert into `icontime`(`id`,`collect`,`praise`,`look`,`flower`,`time`) values
('79','0','4','9','2','2018-04-28 18:23:27'),
('80','0','1','8','0','2018-04-28 18:40:53'),
('81','0','0','1','0','2018-04-28 18:43:52'),
('82','0','0','9','0','2018-04-28 18:47:43'),
('83','1','2','3','1','2018-04-28 18:54:31'),
('84','2','0','14','0','2018-04-28 18:58:38'),
('85','1','3','5','3','2018-04-28 19:04:08'),
('86','1','3','5','2','2018-04-28 19:08:27'),
('87','2','7','14','5','2018-04-28 19:12:31'),
('88','1','1','5','1','2018-04-28 19:20:26'),
('89','1','0','4','0','2018-05-02 15:37:40'),
('90','2','2','3','2','2018-05-02 15:37:52'),
('91','1','1','1','1','2018-05-02 15:37:53'),
('92','0','0','4','0','2018-05-03 12:25:17'),
('93','1','1','0','1','2018-05-08 16:30:38');
DROP TABLE IF EXISTS  `holiday`;
CREATE TABLE `holiday` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=gbk;

insert into `holiday`(`id`,`name`,`image`) values
('1','元旦','/api/public/static/image/17.jpg'),
('2','春节','/api/public/static/image/6.jpg'),
('3','五一','/api/public/static/image/13.jpg'),
('4','端午','/api/public/static/image/14.jpg'),
('5','中秋','/api/public/static/image/5.jpg'),
('6','国庆','/api/public/static/image/7.jpg'),
('7','寒假','/api/public/static/image/16.jpg'),
('8','暑假','/api/public/static/image/2.jpg'),
('9','清明','/api/public/static/image/4.jpg'),
('10','元宵','/api/public/static/image/15.jpg'),
('11','不限','/api/public/static/image/15.jpg');
DROP TABLE IF EXISTS  `individual`;
CREATE TABLE `individual` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `collect` smallint(1) NOT NULL DEFAULT '0',
  `praise` smallint(1) NOT NULL DEFAULT '0',
  `flower` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=gbk;

insert into `individual`(`id`,`user_id`,`article_id`,`collect`,`praise`,`flower`) values
('61','15','86','1','1','1'),
('62','15','85','0','0','1'),
('65','15','87','1','0','1'),
('74','15','79','0','1','1'),
('66','15','83','1','1','1'),
('67','15','84','1','0','0'),
('70','15','80','0','1','0'),
('73','15','88','1','0','1'),
('75','7','91','1','1','1'),
('76','7','90','1','1','1'),
('77','1','89','1','0','0'),
('78','7','87','0','1','1'),
('81','18','90','1','1','1'),
('83','7','93','1','1','1');
DROP TABLE IF EXISTS  `season`;
CREATE TABLE `season` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=gbk;

insert into `season`(`id`,`name`,`image`) values
('1','草原','/api/public/static/image/christmas-cold-friends-269370.jpg'),
('2','星空','/api/public/static/image/christmas-cold-friends-269370.jpg'),
('3','赏花','/api/public/static/image/christmas-cold-friends-269370.jpg'),
('4','雪景','/api/public/static/image/christmas-cold-friends-269370.jpg'),
('5','海岛','/api/public/static/image/christmas-cold-friends-269370.jpg'),
('6','极限运动','/api/public/static/image/christmas-cold-friends-269370.jpg'),
('7','滑雪','/api/public/static/image/christmas-cold-friends-269370.jpg'),
('8','温泉','/api/public/static/image/christmas-cold-friends-269370.jpg'),
('9','当地节庆','/api/public/static/image/christmas-cold-friends-269370.jpg'),
('10','温暖地点','/api/public/static/image/christmas-cold-friends-269370.jpg'),
('11','避暑','/api/public/static/image/christmas-cold-friends-269370.jpg'),
('12','极光','/api/public/static/image/christmas-cold-friends-269370.jpg'),
('13','不限','/api/public/static/image/christmas-cold-friends-269370.jpg');
DROP TABLE IF EXISTS  `suitable`;
CREATE TABLE `suitable` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=gbk;

insert into `suitable`(`id`,`name`,`image`) values
('1','人文历史','/api/public/static/image/animal-bird-feathers-36762.jpg'),
('2','拍片圣地','/api/public/static/image/animal-bird-feathers-36762.jpg'),
('3','自然风景','/api/public/static/image/animal-bird-feathers-36762.jpg'),
('4','登山','/api/public/static/image/animal-bird-feathers-36762.jpg'),
('5','潜水','/api/public/static/image/animal-bird-feathers-36762.jpg'),
('6','古镇','/api/public/static/image/animal-bird-feathers-36762.jpg'),
('7','动物','/api/public/static/image/animal-bird-feathers-36762.jpg'),
('8','购物','/api/public/static/image/animal-bird-feathers-36762.jpg'),
('9','美食','/api/public/static/image/animal-bird-feathers-36762.jpg'),
('10','远离雾霾','/api/public/static/image/animal-bird-feathers-36762.jpg'),
('11','小众','/api/public/static/image/animal-bird-feathers-36762.jpg'),
('12','不限','/api/public/static/image/animal-bird-feathers-36762.jpg');
DROP TABLE IF EXISTS  `tripmode`;
CREATE TABLE `tripmode` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=gbk;

insert into `tripmode`(`id`,`name`,`image`) values
('1','闺蜜','/api/public/static/image/pexels-photo-723240.jpeg'),
('2','自驾','/api/public/static/image/pexels-photo-723240.jpeg'),
('3','游轮','/api/public/static/image/pexels-photo-723240.jpeg'),
('4','骑行','/api/public/static/image/pexels-photo-723240.jpeg'),
('5','蜜月','/api/public/static/image/pexels-photo-723240.jpeg'),
('6','亲子游','/api/public/static/image/pexels-photo-723240.jpeg'),
('7','带父母','/api/public/static/image/pexels-photo-723240.jpeg'),
('8','一个人','/api/public/static/image/pexels-photo-723240.jpeg'),
('9','好朋友','/api/public/static/image/pexels-photo-723240.jpeg'),
('10','徒步','/api/public/static/image/pexels-photo-723240.jpeg'),
('11','不限','/api/public/static/image/pexels-photo-723240.jpeg');
DROP TABLE IF EXISTS  `wantgone`;
CREATE TABLE `wantgone` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `want` smallint(1) NOT NULL DEFAULT '0',
  `collect` smallint(1) NOT NULL DEFAULT '0',
  `gone` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=gbk;

insert into `wantgone`(`id`,`user_id`,`area_id`,`want`,`collect`,`gone`) values
('33','15','104','1','1','1'),
('35','15','2','1','1','1'),
('36','15','4','1','0','0'),
('37','15','92','0','1','0'),
('38','7','113','1','1','1');
SET FOREIGN_KEY_CHECKS = 1;

