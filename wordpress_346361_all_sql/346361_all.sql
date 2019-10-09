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
('20','15','��ѽѽ������ȥ��˫���ɺ���','52345534','89','11','2018-06-14','4','7','�ҳ��룬�������ڷ�ţ����ֱ��ţ�����ˣ����˷�ţ�Ǹ����ɵġ�����ţ���ڽ����Ͷ���������ǿ��ǵ�ֻ�Ǳ����Ͷ��Ļ�����ĩ����ţҪռ���˵ö࣬���ǵ�ũ��Ҳ��öࡣ�˵��ε�һ���ֽ����Ͷ����Ǹ����������ڵĸɲݣ���ɲ��Ƕ�Ϸ�ء���Ȼû��һ���ڸ����������ܼ򵥵Ĺ���������˵��û��һ����ѧ�ҵĹ�������Ը�ⷸ�����ش�������������Ͷ��ġ�ȷʵ���ϴ�δ�й�������Ҳδ���û�����ô����ѧ�ҵĹ������������ˣ���Ҳ����˵��һ���������ġ�Ȼ���Ҿ��Բ�Ը��ȥѱһƥ���һͷţ�����������������������κ��������Ĺ�����ֻ��Ϊ�����Լ����������ţ�ģ����˵�������ˣ����͵����ǳ����δ�ѵ��ܹ��϶�һ���˵�ӯ���Ͳ�����һ���˵���ʧ���ѵ��ܹ��϶��������������������ͬ����������𣿾�����Щ�����Ĺ���û��ţ��İ����ǽ����������ģ����Ҿ�����������ţ��һ��������ֹ��٣��Ƿ�������˵�������Ļ������Ͳ������ø��ӶԵ����Լ��ķ�ʽ��������ֹ������أ�������������ţ���������ʼ������಻���ǲ���Ҫ�ĺ������ģ����һ����ݳ޵ĺ����õĹ�������Ͳ��ɱ����Ҫ�������˵ú�ţ�����������������仰˵����Щ�˱������ǿ�ߵ�ū�������ԣ��˲���Ϊ�����ĵ����Զ����������ң�������һ������������Ϊ�������������Ͷ�����Ȼ�����Ѿ��������ש�߻�ʯͷ��������ӣ�һ��ũ�����ʵ��񣬻��ÿ��������޾���ʲô�̶��ϸǹ�������ס�ݡ���˵�����������ķ��ݣ���������ĸ�ţ����ţ����ƥ��ס������������һ���������󣻿������������ɹ��������������������õĴ������������ء����Ҳ�Ӧ���ø�¥�������������Լ�����������Ϊʲô���ó����˼ά���������أ�������ȫ�����棬Ҳ������һ���Ի�¼��������̾����������Ժ�ǵ������ӳޡ�','2','0','/api/public/uploads/20180428/8fc69fc82b4c798b47cf211a52ea5cfb.jpeg','20'),
('19','15','һ��ȥ������','32423423','77','57','2018-05-30','6','9','�ұ��������һ�����ӣ��ۺ�ΰ�뻪����Ҫ�������Ƶ´�����κ�һ�����ӵģ�ֻҪ���ܹ���Ŀǰ�����ʹ���������ˣ����һ���Ҳ������Ļ��������ҷ��֣�ֻ��ס�����ѧ����ȫ�ܹ��õ�һ���������õķ��ӣ������ķ��û�����������ÿ�긶��ס�޷Ѵ��أ����˵�����ƺ������е������ǣ���δ�ҵĽ������Ҳ���Ϊ�Լ�����Ϊ���������ҵĶ̴���ǰ��һ�²�����Ӱ�������۵���ʵ�ԣ��������в�����ٺ�α�Ƶĵط������Ǻ��������ڴ������ϴ���Ŀ�������Ҳ���κ���һ��Ϊ�˸е��ź��������һ���Ҫ���ɵغ��������������ͦ���ҵ����������������Ʒ�º����嶼��һ������Ŀ��֣������Ҿ�������������ر��ħ��Ĵ����ˣ���Ҫ����Ϊ����˵һ��û����ڽ���ѧԺ��һ��ѧ��ס�����Ƿ��Դ�һ����ķ��䣬��ס�޷Ѿ���ÿ����ʮԪ���Ǽҹ�˾ȴ��һ���ݶ���������������ʮ�������䣬ռ���˱��ˣ�����ȴ���ھ��ڶ�����ӣ�Ҳ�����ò�ס���Ĳ�¥�ϣ������в��㡣�ҾͲ��ò����ţ������������Щ�����и������֪�ļ���������������Ҫ���Լ��٣���Ϊ����Ľ���������Ϳ�������ˣ�����Ϊ���ܽ�����������Ǯ��������������һ���Ѿ��󲿷ֶ�������ˡ�
      ��һ���˶���˵�����Һ��������ô��������Ǯ����ܰ����У���Ӧ�����ϳ���������Ϸƴı�ȥ������������������ұ��������Щ�����Ѿ��������������ǲ��С��Ҷ��ҵ�����˵���ٶ�������һ�ԣ�˭�ȵ������������ʮӢ���Ʊ�ǾŽ�Ǯ��������һ��Ĺ��ʣ��һ��ǵã�������·����������һ��ֻ������Ǯ��','2','0','/api/public/uploads/20180428/ee8e4ff0092d47048190f1f81f112d70.jpg','23'),
('21','7','��Լ����ɽ','3453453','5','107','2018-06-12','4','8','���Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��ԡ�','0','0','/api/public/uploads/20180501/998c1ae92ab9d9160ed22c9a6f0e5f81.jpg','1'),
('22','7','��Լ����ɽ','3453453','5','107','2018-06-12','4','8','���Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��ԡ�','0','0','/api/public/uploads/20180501/998c1ae92ab9d9160ed22c9a6f0e5f81.jpg','0'),
('23','7','��Լ����ɽ','3453453','5','107','2018-06-12','4','8','���Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��ԡ�','0','0','/api/public/uploads/20180501/998c1ae92ab9d9160ed22c9a6f0e5f81.jpg','0'),
('24','7','����','565464','7','23','2018-06-20','5','7','���Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��ԡ�','1','0','/api/public/uploads/20180503/9647344f11fafae389c6a33b70dcd42b.png','3'),
('25','17','��Լ�ຣ��','6456546','3','66','2018-06-30','6','8','һ����Լ�ຣ����
    ���������ǵ�С��顣','1','0','/api/public/uploads/20180503/0c0fecffaa68f6e5c8562c3e84d56883.jpg','11'),
('26','17','����','35345','4','12','2018-05-24','6','8','���Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��ԡ�','1','0','/api/public/uploads/20180503/7c279dbac0123a7d5d2857b58cadafdb.png','4');
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
('1','����'),
('2','�Ϻ�'),
('3','����'),
('4','���'),
('5','����'),
('6','�Ĵ�'),
('7','�㽭'),
('8','����'),
('9','����'),
('10','�㶫'),
('11','����'),
('12','����'),
('13','ɽ��'),
('14','����'),
('15','����'),
('16','����'),
('17','����'),
('18','�ӱ�'),
('19','����'),
('20','���ɹ�'),
('21','����');
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
('7','333','310dcbbf4cce62f762a2aaa148d556bd','����ͷ��СMOMO','/api/public/authorImg/20180508/df020e702bfa98f9433f7b2b009b79d0.png','0','2018-01-01','�人','����ϲ���Ȱ�С���,������ô���ԡ���������'),
('13','111','698d51a19d8a121ce581499d7b701668','ССĬĬ','/api/public/authorImg/20180428/f33cc04bf2412b66bb6b835bad76aaf2.png','0','2004-06-09','���','һ�����ص��ˡ�'),
('14','222','bcbe3365e6ac95ea2c0343a2395834dd','��һ','/api/public/authorImg/20180428/9fbc7dc0ad9a6ca15fc4b6e078c2d6ad.png','0','1998-12-20','����','һ���Ȱ����ε��ˡ����������п��֣�������ѽ��'),
('11','888','0a113ef6b61820daa5611c870ed8d5ee','����','/api/public/authorImg/20180422/15.jpg
','0','2018/01/01','����','�Ҿ�����ѽ'),
('15','666','fae0b27c451c728867a567e8c1bb4e53','С�����','/api/public/authorImg/20180428/25dfa3192d73e39fe099c77133726180.png','0','2002-06-23','����','�����е�Ư����'),
('16','777','f1c1592588411002af340cbaedd6fc33','����','/api/public/authorImg/20180428/66a60c2436296903dffb2e34e6f841fc.png','1','2008-12-28','����','����һ��С����ѽ��'),
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
('1','1','�ʹ�','/api/public/static/image/aershan.jpg'),
('2','2','�ֶ�','/api/public/static/image/pudong.jpg'),
('3','3','����','/api/public/static/image/aershan.jpg'),
('4','4','���','/api/public/static/image/tianjin.jpg'),
('5','5','����','/api/public/static/image/aershan.jpg'),
('6','5','����','/api/public/static/image/aershan.jpg'),
('7','5','����','/api/public/static/image/aershan.jpg'),
('8','5','�������','/api/public/static/image/aershan.jpg'),
('9','5','�����','/api/public/static/image/aershan.jpg'),
('10','5','˫��','/api/public/static/image/aershan.jpg'),
('11','5','��˫����','/api/public/static/image/xishuangbanna.jpg'),
('12','5','����','/api/public/static/image/shuhe.jpg'),
('13','5','�ڳ�','/api/public/static/image/aershan.jpg'),
('14','5','���','/api/public/static/image/aershan.jpg'),
('15','6','�ɶ�','/api/public/static/image/aershan.jpg'),
('16','6','��կ��','/api/public/static/image/aershan.jpg'),
('17','6','����','/api/public/static/image/aershan.jpg'),
('18','6','ɫ��','/api/public/static/image/aershan.jpg'),
('19','6','������','/api/public/static/image/aershan.jpg'),
('20','6','������','/api/public/static/image/aershan.jpg'),
('21','6','�Ƕ�','/api/public/static/image/aershan.jpg'),
('22','6','����','/api/public/static/image/aershan.jpg'),
('23','6','��üɽ','/api/public/static/image/emeishan.jpg'),
('24','6','ţ��ɽ','/api/public/static/image/aershan.jpg'),
('25','7','����','/api/public/static/image/aershan.jpg'),
('26','7','����','/api/public/static/image/aershan.jpg'),
('27','7','����','/api/public/static/image/aershan.jpg'),
('28','7','ǧ����','/api/public/static/image/aershan.jpg'),
('29','7','����ɽ','/api/public/static/image/aershan.jpg'),
('30','7','������','/api/public/static/image/aershan.jpg'),
('31','7','���','/api/public/static/image/aershan.jpg'),
('32','8','����','/api/public/static/image/aershan.jpg'),
('33','8','��֧�޵�','/api/public/static/image/aershan.jpg'),
('34','8','����','/api/public/static/image/aershan.jpg'),
('35','8','����','/api/public/static/image/aershan.jpg'),
('36','8','������','/api/public/static/image/aershan.jpg'),
('37','8','����ɽ','/api/public/static/image/aershan.jpg'),
('38','8','Ȫ��','/api/public/static/image/aershan.jpg'),
('39','9','�Ͼ�','/api/public/static/image/aershan.jpg'),
('40','9','����','/api/public/static/image/aershan.jpg'),
('41','9','����','/api/public/static/image/aershan.jpg'),
('42','9','����','/api/public/static/image/aershan.jpg'),
('43','9','��ׯ','/api/public/static/image/aershan.jpg'),
('44','9','����','/api/public/static/image/aershan.jpg'),
('45','9','���Ƹ�','/api/public/static/image/aershan.jpg'),
('46','9','ͬ��','/api/public/static/image/aershan.jpg'),
('47','10','����','/api/public/static/image/aershan.jpg'),
('48','10','����','/api/public/static/image/aershan.jpg'),
('49','10','�麣','/api/public/static/image/aershan.jpg'),
('50','10','��ͷ','/api/public/static/image/aershan.jpg'),
('51','10','����','/api/public/static/image/aershan.jpg'),
('52','10','��˷','/api/public/static/image/aershan.jpg'),
('53','10','����','/api/public/static/image/aershan.jpg'),
('54','10','��Ҧ����','/api/public/static/image/aershan.jpg'),
('55','10','��޵�','/api/public/static/image/aershan.jpg'),
('56','10','��������','/api/public/static/image/aershan.jpg'),
('57','11','����','/api/public/static/image/lasha.jpg'),
('58','11','��֥','/api/public/static/image/aershan.jpg'),
('59','11','����','/api/public/static/image/aershan.jpg'),
('60','11','ǭ����','/api/public/static/image/aershan.jpg'),
('61','11','��','/api/public/static/image/aershan.jpg'),
('62','11','��Զ','/api/public/static/image/aershan.jpg'),
('63','11','����','/api/public/static/image/aershan.jpg'),
('64','11','�ƹ���','/api/public/static/image/aershan.jpg'),
('65','12','����','/api/public/static/image/aershan.jpg'),
('66','12','�ຣ��','/api/public/static/image/qinghaihu.jpg'),
('67','12','����','/api/public/static/image/aershan.jpg'),
('68','12','����','/api/public/static/image/aershan.jpg'),
('69','12','�ػ�','/api/public/static/image/aershan.jpg'),
('70','12','����','/api/public/static/image/aershan.jpg'),
('71','12','����','/api/public/static/image/aershan.jpg'),
('72','12','��Ҵ','/api/public/static/image/aershan.jpg'),
('73','12','�ιȹ�','/api/public/static/image/aershan.jpg'),
('74','12','�½�','/api/public/static/image/aershan.jpg'),
('75','13','�ൺ','/api/public/static/image/aershan.jpg'),
('76','13','̩ɽ','/api/public/static/image/aershan.jpg'),
('77','13','����','/api/public/static/image/aershan.jpg'),
('78','13','����','/api/public/static/image/aershan.jpg'),
('79','13','��̨','/api/public/static/image/aershan.jpg'),
('80','13','����','/api/public/static/image/aershan.jpg'),
('81','13','����','/api/public/static/image/aershan.jpg'),
('82','13','ƽң','/api/public/static/image/aershan.jpg'),
('83','13','��ͬ','/api/public/static/image/aershan.jpg'),
('84','13','��̨ɽ','/api/public/static/image/aershan.jpg'),
('85','13','�����ٲ�','/api/public/static/image/aershan.jpg'),
('86','14','�żҽ�','/api/public/static/image/aershan.jpg'),
('87','14','���','/api/public/static/image/aershan.jpg'),
('88','14','����','/api/public/static/image/aershan.jpg'),
('89','15','�人','/api/public/static/image/aershan.jpg'),
('90','15','��ʩ','/api/public/static/image/aershan.jpg'),
('91','15','��ũ��','/api/public/static/image/aershan.jpg'),
('92','16','��ɽ','/api/public/static/image/aershan.jpg'),
('93','17','���','/api/public/static/image/aershan.jpg'),
('94','17','��Դ','/api/public/static/image/aershan.jpg'),
('95','17','������','/api/public/static/image/aershan.jpg'),
('96','17','����ɽ','/api/public/static/image/aershan.jpg'),
('97','17','�ϲ�','/api/public/static/image/aershan.jpg'),
('98','17','®ɽ','/api/public/static/image/aershan.jpg'),
('99','18','������','/api/public/static/image/aershan.jpg'),
('100','18','�ػʵ�','/api/public/static/image/aershan.jpg'),
('101','18','�е�','/api/public/static/image/aershan.jpg'),
('102','18','�ű�','/api/public/static/image/aershan.jpg'),
('103','19','������','/api/public/static/image/aershan.jpg'),
('104','19','����','/api/public/static/image/luoyang.jpg'),
('105','19','����ʯ��','/api/public/static/image/aershan.jpg'),
('106','20','���ױ���','/api/public/static/image/aershan.jpg'),
('107','20','����ɽ','/api/public/static/image/aershan.jpg'),
('108','20','������','/api/public/static/image/aershan.jpg'),
('109','21','������','/api/public/static/image/aershan.jpg'),
('110','21','Į��','/api/public/static/image/aershan.jpg'),
('111','21','ѩ��','/api/public/static/image/aershan.jpg'),
('112','21','����','/api/public/static/image/aershan.jpg'),
('113','21','����','/api/public/static/image/aershan.jpg'),
('114','21','�̽�','/api/public/static/image/aershan.jpg');
DROP TABLE IF EXISTS  `article`;
CREATE TABLE `article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '1',
  `title` varchar(100) NOT NULL,
  `article` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=gbk;

insert into `article`(`id`,`user_id`,`title`,`article`) values
('81','13','����','<p class="MsoNormal" style="margin-left:-.75pt">&nbsp; &nbsp; &nbsp;���룬���ǿ���̩Ȼ���ţ�������ʵ�������ŵģ����Ӷ��������Ƕ��Լ��Ĺػ��ܷ������٣��������ʵ�ظ����˶��ٵĹػ�������Ȼ������Ӧ���ǵĳ�����Ҳ����Ӧ���ǵ����㡣��Щ�������޾����ǻ����ǣ�����һ�ּ���ҽ�β��õļ��������������͵İ���ҫ����������������Ҫ�ԣ�Ȼ��ȴ�ж��ٹ�������û������Ҫ�����ǲ����ˣ���ô���أ����Ƕ�ô���������Ĳ�����������������Ǿ����ܱ����������絽�����ţ���ҹ��Υ�ĵ������ţ�Ȼ����Լ����и�δ�������������Ǳ�������������ܵ������棬����Լ���������񶨱��Ŀ��ܡ�����˵��ֻ������������ǣ����Ǵ�Բ�Ŀ��Ի����������뾶���������ʽ���������Ķࡣһ�б�����ֵ��˼�����漣��ÿһɲ�Ƿ������¶��������漣���׷�����˵��<span lang="EN-US" style="font-family:&quot;΢���ź�&quot;,sans-serif;mso-bidi-font-family:΢���ź�">��</span>֪֮Ϊ֪֮����֪Ϊ��֪����֪Ҳ��<span lang="EN-US" style="font-family:&quot;΢���ź�&quot;,sans-serif;mso-bidi-font-family:΢���ź�">��</span>��һ���˰����������ʵ����Ϊ��������֮ʱ����Ԥ������һ�������Ҫ�������Ļ����Ͻ��������ǵ���������</p><p class="MsoNormal" style="margin-left:-.75pt"><span lang="EN-US"><o:p><br></o:p></span></p><p class="MsoNormal" style="text-align: center; margin-left: -0.75pt;"><img src="http://qxu1606520494.my3w.com/api/public/uploads/20180428/6ce43c879f352d649fc78d17520108bf.jpg" style="width: 508.448px; height: 339px;"><span lang="EN-US"><o:p><br></o:p></span></p><p class="MsoNormal" style="text-align: center; margin-left: -0.75pt;"><span lang="EN-US"><o:p><br></o:p></span></p><p class="MsoNormal" style="text-align: left; margin-left: -0.75pt;"><span lang="EN-US"><o:p></o:p></span></p><p class="MsoNormal" style="margin-left:-.75pt">&nbsp; &nbsp; &nbsp;������˼��һ�£���ǰ����˵�Ĵ�����˵����Ǻͷ�������Щʲô�������ж����Ǳ������ǵģ�������ֵ��С�ĶԴ����أ���Ȼ���������������У��������ܹ�һ��ԭʼ�Եġ��¿��ٵĿ�����������洦�ģ���ʹ����Ϊ�������������Ʒ������Щʲô������β��ܵõ���Щ����Ʒ��������һ���̵���Ĺ��ϵ���ˮ�ˣ������̵��ﾭ������Щʲô���ִ����Щ������ǿ������ӵ��ӻ�������һЩʲôҲ�á�ʱ�������ݽ�������������Ļ���ԭ��ȴ��û�з�������Ӱ�죺�ñ����ǵĹ����������ǵ����ȵĹ�������Լ�����𲻳����ġ�<span lang="EN-US"><o:p></o:p></span></p>'),
('82','13','','<p class="MsoNormal" style="margin-left:-.75pt">&nbsp; &nbsp; �󲿷ֵ��ݳ�Ʒ���󲿷ֵ���ν��������ʣ��ǵ�û�б�Ҫ�����Ҷ�����������з��������Թ����ݳ������ʣ������ǵ�����������������˸��Ӽ򵥺����ء��й���ӡ�ȡ���˹��ϣ���Ĺ���ѧ�Ҷ���һ�����͵���������������û�У������������ٸ����������Ƕ�����������ǡ�Ȼ���ɾ���һ���ǣ����Ǿ�Ȼ��������֪���ò����ء�������Щ�ĸ�ң�������ľ��ǣ�Ҳ����ˡ�Ψ��վ��������ν�ĸ�ƶ�ֿ���������λ�ϣ����ܳ�Ϊ����˽�Ĵ����Ĺ۲��ߡ�������ũҵ����ҵ����ѧ�������У��ݳ���������Ĺ�ʵ�����ݳ޵ġ���������ѧ��������ɣ���ѧ��һ��û�С�Ȼ�������ǿ��۵ģ���Ϊ���ڵ������ǿ��۵ġ����ǣ�Ҫ��һ����ѧ�ҵĻ����Ҫ�о�����˼�룬����Ҫ������һ��ѧ����������Ҫ�����ذ��ǻۣ��Ӷ��������ǻ۵�ָʾ������һ�ּ򵥡���������ȡ����ε�������������һЩ���⣬����Ҫ�������ϣ�����Ҫ��ʵ���С���ѧ�ʼҺ�˼��ҵĳɹ���ͨ�����ǵ���ʽ�ģ�Ҳ����Ӣ��ʽ�ģ������ǳ���ʽ�ĳɹ�������Ӧ���������������ϰ������ϣ������ǵĸ���һ�㣬����һ�㲻�ܳ�Ϊ���õ������ʼ�档���ǣ�Ϊʲô���������˻�����ʲôʹ����Щ����û��ģ�ʹ����˥�����ӳ���ʲô���ʵ��أ������ǵ������У������ܷ�ȷ���Լ���δ��������ѧ�������������������Ҳ�Ǵ���ʱ��ǰ�еġ���������ͬʱ���������سԺȡ���ס�����š�ȡů��һ���˼�����ѧ�ң�����û�бȱ��˸��õ�����ı������µķ����أ�</p><p class="MsoNormal" style="margin-left:-.75pt"><span lang="EN-US"><o:p><br></o:p></span></p><p class="MsoNormal" style="text-align: center; margin-left: -0.75pt;"><img src="http://qxu1606520494.my3w.com/api/public/uploads/20180428/0d3ef9ec06fd4a47a96142896b2c396e.jpg" style="width: 630.495px; height: 420px;"><span lang="EN-US"><o:p><br></o:p></span></p><p class="MsoNormal" style="text-align: center; margin-left: -0.75pt;"><span lang="EN-US"><o:p><br></o:p></span></p><p class="MsoNormal" style="text-align: left; margin-left: -0.75pt;"><span lang="EN-US"><o:p></o:p></span></p><p class="MsoNormal" style="margin-left:-.75pt">&nbsp; &nbsp; &nbsp;������������д�ļ��ַ�ʽ��ů���ˣ������Ҫ��ʲô�أ���Ȼ������ͬ�����ĸ������ů��������Ҫ�����������ʳ��������ҫ�ķ��ݣ����ḻ���������·���������־ø����ȵĻ�¯�ȵ��ˡ����ڵõ�����Щ���������������֮�󣬾Ͳ���Ҫ��ʣƷ��Ҫ����һЩ�������Ǿ���˵���ڱ�΢�����ļ��ڿ�ʼ�ˣ�������Ҫ�����������ˡ��������������������ӵģ���Ϊ����ʹ�����߸��������죬Ȼ�������Ը������ŵ�ʹ�������³���Ϊʲô�������������˸�֮�󣬲���Ԯ���������չ�أ�<span lang="EN-US">����</span>��Ϊ��Щ���߹��ֲ��ļ�ֵ����Զ�����ġ�����ڿ������չ��н�ɵĹ�ʵ�������ģ���������Դ��ǵͱ��߲˵��������߲˾�������������ֲ���Ҳֻ�Ǳ���ֲ�����ø��Ժ󣬶��ҳ���ժȥ��֦��ʹ��������ڿ����ļ��ڶ��ϲ������ǡ�<span lang="EN-US"><o:p></o:p></span></p>'),
('83','14','���ٸ�����','<p><p class="MsoNormal" style="margin-left:-.75pt">&nbsp; &nbsp; &nbsp;���ٸ�����ģ��ȣ����ж�������ӣ��ڳ���ȹ��������ŷ��������˰��������������������漸��Ͷ��ȫ���ʽ�Ϊ��������ӭ�ź��磬ʹ�����������������ˡ�������������������ε���Ϣ��һ����һЩ���Ļ��ر������ȷ����˵ġ���Щʱ�������ڸ߸ڻ����ҵĹ۲�̨�ϣ��õ����������κ��µĿ��˵��������غ���ɽ�ۻƻ��У��ȴ�ҹĻ���䣬������ץ��һЩ��������ץ���Ĵ����Ͳ��࣬�ⲻ���ȴ������<span lang="EN-US" style="font-family:&quot;΢���ź�&quot;,sans-serif;mso-bidi-font-family:΢���ź�">��</span>����<span lang="EN-US" style="font-family:&quot;΢���ź�&quot;,sans-serif;mso-bidi-font-family:΢���ź�">��</span>һ�������ǻ���̫���������ܵġ�</p><p class="MsoNormal" style="margin-left:-.75pt"><span lang="EN-US"><o:p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; �кܳ�һ��ʱ�䣬����һ�ұ�ֽ�ļ��ߣ���ֽ��·���㣬���༭������������д��һ��Ѷ����ǿ��õģ����ԣ������Ƕ���ͬ�У��������˺ܴ��ʹ��������ֻ���ҵ��Ͷ���Ȼ����������ϣ���ʹ����������ı��ꡣ</span></o:p></span></p><p class="MsoNormal" style="margin-left:-.75pt">&nbsp; &nbsp;&nbsp;<span lang="EN-US"><o:p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"><span style="font-size: 10.5pt; line-height: 93%; font-family: &quot;Microsoft YaHei UI&quot;, sans-serif;">�ܶ���������ί�����Լ�Ϊ����ѩ�뱩����Ķ���Ա�������ĳ�ְ���ּ����Ա���䲻������·��ȴ����ɭ��С���ͽݾ����������ǳ�ͨ���һ�������һ���ļ�����ͨ�е���ʯ���������д��ڵ�����������֤ʵ���ǵı�����</span></span></o:p></span></p><p class="MsoNormal" style="margin-left:-.75pt"><span lang="EN-US"><o:p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"><span style="font-size: 10.5pt; line-height: 93%; font-family: &quot;Microsoft YaHei UI&quot;, sans-serif;"><br></span></span></o:p></span></p><p class="MsoNormal" style="margin-left:-.75pt"></p><div style="text-align: center;"><img src="http://qxu1606520494.my3w.com/api/public/uploads/20180428/dd4bc81dde3671c04986a3c205527e34.jpg" style="width: 599.939px; height: 400px;"></div><div style="text-align: left;"><br></div><span lang="EN-US"><o:p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"><span style="font-size: 10.5pt; line-height: 93%; font-family: &quot;Microsoft YaHei UI&quot;, sans-serif;">&nbsp; &nbsp; &nbsp;��Ҳ���ػ���������Ұ�ޣ�ʹ����ְ�ص�����Ҫ������ʣ��������������ѣ��Ҷ����˼���������ׯ�Ľ���Ҳ�ر�ע�⣺ȴ����֪��Լ��˹�������Ž�������һ������Ϲ�������Ϊ���Ѳ����ҷ��ڵ����ˡ��Ҹ���ɫ��Խ�٣�ɳ���ϵ�ӣ������ݡ�飬���ɺͺ�㵣��������ٺͻ�ɫ����������������ˮ����������������ļ����У����ǿ��ܻ��ή�ġ�</span></span></o:p></span></p><p><span lang="EN-US"><o:p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"><span style="font-size: 10.5pt; line-height: 93%; font-family: &quot;Microsoft YaHei UI&quot;, sans-serif;"><span style="font-size: 10.5pt; line-height: 93%; font-family: &quot;Microsoft YaHei UI&quot;, sans-serif;">&nbsp; &nbsp; &nbsp;����˵���������Ӹ��˺ܾã���һ�㲻��ҫ���������Ĺ����ع����ҵ���Щ�£�ֱ������Խ��Խ�����ˣ��������ǲ�Ը����Ұ����ڹ�ְ��Ա������֮�ڣ�Ҳ��Ը�����һ��СС��нٺ�������и�����ְ��ġ��Ҽǵ��ˣ��ҿ��Զ����Ǻ���ϸ�ģ����Ǵ�δ����Թ���Ҳ����˵��׼�ˣ�������˵���������Ŀ�ˣ������ҵ���˼Ҳ�����������档</span><br></span><br></span><br></o:p></span><p></p></p>'),
('84','14','��ã�����','<p class="MsoNormal" style="margin-left: -0.75pt;"><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; &nbsp;������ǰ��һ���в���ӡ�ڰ��˵��ҵ�����һλ������ʦ���ж������ӡ�</span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;΢���ź�&quot;,sans-serif;
mso-bidi-font-family:΢���ź�;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">��</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">����Ҫ��������</span><span lang="EN-US" style="font-size:10.5pt;line-height:
93%;font-family:&quot;΢���ź�&quot;,sans-serif;mso-bidi-font-family:΢���ź�;color:#767171;
mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">��</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">��˵���ڴ���</span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;
font-family:&quot;΢���ź�&quot;,sans-serif;mso-bidi-font-family:΢���ź�;color:#767171;
mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">��</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">�������ǲ�Ҫ</span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;
font-family:&quot;΢���ź�&quot;,sans-serif;mso-bidi-font-family:΢���ź�;color:#767171;
mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">��</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">��</span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;
font-family:&quot;΢���ź�&quot;,sans-serif;mso-bidi-font-family:΢���ź�;color:#767171;
mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">��</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">ʲô��</span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;
font-family:&quot;΢���ź�&quot;,sans-serif;mso-bidi-font-family:΢���ź�;color:#767171;
mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">��</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">ӡ�ڰ��˳��Žе���</span><span lang="EN-US" style="font-size:10.5pt;line-height:
93%;font-family:&quot;΢���ź�&quot;,sans-serif;mso-bidi-font-family:΢���ź�;color:#767171;
mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">��</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">������Ҫ����������</span><span lang="EN-US" style="font-size:10.5pt;line-height:
93%;font-family:&quot;΢���ź�&quot;,sans-serif;mso-bidi-font-family:΢���ź�;color:#767171;
mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">��</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">�����������͵İ������ھӣ��������˸�ԣ<span lang="EN-US">����</span>��Ϊ��ʦֻҪ�ѱ���֮�ʱ�֯������������ħ���Ƶģ���ԣ�͵�λ����������<span lang="EN-US">����</span>�����ӡ�ڰ��������������ҲҪ�������ˣ��ұ�֯���ӣ���������������ġ�����Ϊ��֯�����Ӿ����������һ�ݣ���������Ӧ�������������������ˡ���ȴ��֪����������ʹ�˸е���������������ֵ�õģ����ٵ�ʹ�������ţ�������һֻ������ֵ�õģ�Ҫ��Ȼ��Ӧ�������һЩֵ�ý��˹���Ķ�������Ҳ����֯��һ�־��ɵ����ӣ��Ҳ�û�б����ʹ�˸е�ֵ�ù������������ⷽҳ����һ�㲻�����ҷ����ű�֯���ǣ��ǵ�û��ȥ�о���α�֯��ʹ���Ǿ��ø���ֵ�ù����ҵ����о�����ο��Ա�����</span><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; font-size: 10.5pt;">�����Ĺ�����������������Ϊ�ɹ������ֻ�����������е���ôһ�֡�Ϊʲô����Ҫ��ҫ��һ�ֶ���ͱ�һ�������أ�</span></p><p class="MsoNormal" style="margin-left: -0.75pt;"><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; &nbsp;��������ͬ���Ǵ�Լ�ǲ����ڷ�Ժ�У������У����κα�ĵط�����һ��ְλ���ˣ���ֻ���Լ��ĵ��������ұ�������ר�ĵذ���ת����ɭ�֣������һ�ж�����ʶ�ҡ��Ҿ������̾Ϳ�ҵ�����صȺ�ͨ������ν�����ˣ��Ͷ����������Ѿ��е�һ���΢�����ʲưɡ��ҵ��߶��Ǻ���ȥ��Ŀ�ģ�������ȥ�ڼ�����Ҳ����ȥ�ӻ�������ȥ��ӪһЩ˽�£�Ϊ�������Ƕ����Ծ�����Щ�鷳���������Ϊȱ��СС�ĳ�ʶ����ҵ��С���ֲ��������⾭��������ɵ������ҵ���������</span></p><p class="MsoNormal" style="margin-left: -0.75pt;"><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"><br></span></p><p class="MsoNormal" style="margin-left: -0.75pt;"><div style="text-align: center;"><img src="http://qxu1606520494.my3w.com/api/public/uploads/20180428/9101e4e38e70345b15760371e5796d4d.jpg" style="width: 525px; height'),
('85','15','С�����������','<p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; &nbsp;һ���ˣ����������ҵ��������ˣ���ʵ����Ҫ���������·�ȥ�Ϲ��ģ����·������ˣ�������Щ�ܾõط��ڸ�¥�У������˻ҳ���</span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;΢���ź�&quot;,sans-serif;
mso-bidi-font-family:΢���ź�;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">fH</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">�·���һ��Ӣ�۴�</span><span lang="EN-US" style="font-size:10.5pt;line-height:
93%;font-family:&quot;΢���ź�&quot;,sans-serif;mso-bidi-font-family:΢���ź�;color:#767171;
mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">IR</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">Ь�ӵ�ʱ�䵹Ҫ�����ĸ��ഩ���ǵ�ʱ�䳤<span lang="EN-US">����</span>���˵��Ӣ��Ҳ���ް�Ļ�<span lang="EN-US">����</span>���ڳ�ŵ���ʷ�ȴ�Ь�Ӹ��ƾ��ˣ���Ӣ���ǿ��Գ�ŵġ�ֻ����Щ��ҹ�磬������Ժȥ���˱��봩�����·������ǻ���һ����һ����������Щ�ط�����һ����һ���ˡ����ǣ�������ҵĶ����ºͿ��Ӵ�����ñ�Ӵ���Ь�Ӵ��ϣ����������ϵ۵Ļ�����δ����ЩҲ�͹��ˣ�������˭��ע�⵽�������·�<span lang="EN-US">�� ��</span>����Ѿ������Ʊֲ����ˣ�����˵�����ԭ�ϣ������͸�һ�����Ҳ�㲻�������ˣ�˵�����������Ҫ����ת�͸�һ��������ƶ����ˣ����˵�����˵����еģ���Ϊ�������ʲô����Ҫ�����Թ�����ء���˵��������Щ���봩��</span><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; font-size: 10.5pt;">�·�����ҵ�����ɲ������Щ�����·����ˡ����û���µ��ˣ����·���ô�����ú��������������ʲô��ҵҪ�������Ͼ��·����Կ�����֮���裬������Ҫ��Щ�£�����Ҫ����Ϊ������˵���������ǡ�Ҳ����������Զ�����������·��ģ����۾��·�������ƱֺͰ��࣬���������Ѿ����������ˣ���Ӫ�ˣ�����˵��������ʲô�������ˣ�����������ϵ��������������µ������ˣ���ʱ��������Ȼ���ң����о�ƿװ�¾�֮���ˡ����ǵĻ���ë�ļ��ڣ�������ݵģ���Ȼ������֮��һ�����ת�۵㡣Ǳ���˵�Ƨ���ĳ�����ȥ��ë������Ƥ������Ҳ����ˣ�ͬ������Ӽ��ĳ��롣����������������չ�ŵĽ�����·����������ǵ������Ľ��ʣ�����˵������֮���ն��ѡ�Ҫ��Ȼ���ǽ�����������αװ�����н�����ͷ���ز����õؽ������༰�����Լ��������������</span></p><p><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; font-size: 10.5pt;"><br></span><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; &nbsp;���Ǵ���һ���·���һ������������������ֲ��һ������������������ġ���������������ģ������Ǻܱ��ܻ��ɵ��·�����ֻ�����ǵı�Ƥ������˵����Ƥ�������������ǵ�������һ���֣��������������Ҳ�����������ˣ����Ǿ������ŵġ��Ϻ���·��������ǵ�ϸ���ڣ�����˵��Ƥ�㣻���ǵĳ��¿������ǵ���Ƥ������˵����������Ƥ���������Ļ������ܲ���Ƥ���⣬�˼�����ġ����������е����֣���ĳЩ�����ﶼ���������Ƴ��µĶ�����һ�������ܴ��������򵥣������ںڰ��ж��������Լ����������ڸ����涼����������ܣ��б����޿֣���δ����ʹ����ռ���˳��У���Ҳ����Ŵ���ѧ��һ��������ͽ�����ǣ����õ�ʲô��˼��һ�����·����ô��������Ͽɸ����������·���ͬ�����˵��·������������ʺϹ˿Ͳ����ļ۸��򵽣�һ������������Ԫ�Ϳ������ˣ������Դ��Ϻü��꣬���ĳ�����ԪǮ��ţƤѥһԪ�룬�����ñ�Ӳ���һԪ���ķ�֮һ�������ñ����ë���ְ룬�������Ի���һ�ʼ��ٵ�Ǯ���Լ��ڼ�����һ�����õ�ñ�ӣ��Ǵ�����������һ���Լ������Ͷ�׬�����·������ﻹ��ƶ��ѵ���û�д�������������ʾ������</span></p><p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"><br></span></p><p style="text-align: center; ">&nbsp;<img src="http://qxu1606520494.my3w.com/api/public/uploads/20180428/bdfed5e4a89ef7c11bf85d1cedb9c771.jpg" style="width: 752.121px; height: 390px; float: none;"><br></p><p><br></p>'),
('86','15','���ɵ�����','<p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; &nbsp;Ҳ�����˲��룬ӵ�������Ķ��෿�ݣ���Ϊ��δ����ѣ�������δȻ������Ϊ�Ը��˶��ԣ��������ĺô������ǿ��Թ�����������ɥ��Ѱ��ˡ�������Ҳ�����ò��������Լ��ġ�Ȼ�����������ָ���������˺�Ұ�����м��һ����Ҫ�������˸������˵����������һ���ƶȣ�������Ϊ�����ǵĺô��������ƶ�Ϊ�˱�������������ʹ������������������ȴ��������˸��˵����������ϣ��ָ����Ϊ�˵õ���ô�������Ŀǰ�����ε������������һ�Ҫ���飬�����ǿ��Բ������κ������͵õ��ܶ�ô��ġ���˵���������˾���������һ�𣬸��׳��������ѣ����ӵ�����Ҳ���ᣬ˵��Щ����ʲô��˼�أ�</span></p><p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"><br></span><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; text-align: center;">&nbsp;</span></p><p>&nbsp;<img src="http://qxu1606520494.my3w.com/api/public/uploads/20180428/d4f7a087b8d58d246f6529984255db33.jpg" style="width: 715.233px; height: 476px;"></p><p><span lang="EN-US" style="font-size:10.5pt;line-height:
93%;font-family:&quot;΢���ź�&quot;,sans-serif;mso-bidi-font-family:΢���ź�;color:#767171;
mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; ��</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">���Ǻͻ�˵����ָ���ҵ��������ģ���������ɫ���бز�����������������ɡ�</span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;΢���ź�&quot;,sans-serif;
mso-bidi-font-family:΢���ź�;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">��</span></p><p class="MsoNormal" style="margin-left:-.75pt"><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;΢���ź�&quot;,sans-serif;
mso-bidi-font-family:΢���ź�;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">&nbsp; &nbsp; ��</span></span><span style="font-size:10.5pt;line-height:93%;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">���������˶��������ҵģ�Ϊ�����������ң�Ϊ�ӵ�Ҳ�������ң����������������</span></span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;΢���ź�&quot;,sans-serif;
mso-bidi-font-family:΢���ź�;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">��</span></span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><o:p></o:p></span></p><p><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;΢���ź�&quot;,sans-serif;
mso-bidi-font-family:΢���ź�;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">

<span style="font-size: 10.5pt; line-height: 93%; font-family: &quot;Microsoft YaHei UI&quot;, sans-serif;">�����뵽�ҵ��ھ�ʱ����Щ���Ƶµ�ũ���ǣ����ǵľ�������ͬ��Ľ׼�һ���ã��ҷ��������м�Ĵ󲿷��˶��ѹ����˶�ʮ����ʮ�����ʮ���ˣ�Ϊ�������ǿ��Գ�Ϊ����ũ�����������ˣ�ͨ����Щũ���Ǹ����˵�ѺȨ���������ǵ��Ų��������ǽ���Ǯ�������ģ�<span lang="EN-US">�� ��</span>���ǲ��������ǵ������е�����֮һ����Ϊ���ݵĴ��ۣ�<span lang="EN-US">����</span>ͨ���������ǻ�û�и�����һ�ʽ���ģ��ǵ�ѺȨ��ʱ��������ũ����ԭ�ۣ����ũ�������ѳ���һ������׸��Ȼ������������гм̵��ˣ��������Լ�˵�ģ���Ϊ������м��˺�ũ��̫�׽��ˡ��������ۿ�˰��̸����������ط������Ǿ�Ȼ���ܹ�һ��������ʮ����ӵ��ũ������</span><br></span><br></p>'),
('87','16','����ѽ���ɲ�զ��','<p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; ��������ƺ�����û�������һ��������ʲô����Ȼ���ǲ�����������ʵ��ȴ���������ˣ���Ϊ����������һ�����������˵ķ���һ���ķ��ݡ�������ֻ�ܴ��ϲ÷�����Ƴɵ��κ��·������𽥷�������ͩҶ��ñ�ӻ��ϲ���Ƥ����ñ����ֻ�ܶ���ʱ������ļ��Ѹп�ϵ֮�ˣ���Ϊ������һ���ʹڣ�Ҫ����һ�����������Ѿ��еģ����������������ķ����ǿ��ܵģ�����ҳ��ϣ����еķ������Ƕ��������ѵ�������Ҫ�о������õ�Խ��Խ��Ķ�������������ʱ��������Ūһ�㶫���أ��ѵ�Ҫ��Щ���𾴵Ĺ����ǣ�ׯ�ϵ������ǵ��Խ̺���̣�����������������������ǰ���ñ�������˫�����ƤЬ�����ɰ���ɡ���Լ��տյĿͷ������д������ڵĿ��������ǵļҾ�Ϊʲô�����������˻�ӡ�ڰ��������ؼ��أ����ǰ�����ľ������Ϊ���ϵ���ʹ��������������������ʹ�ߣ������뵽���ǵ�ʱ����������ȥ���벻�����ǵ�������棬����������ӣ�����ʲô��</span><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; font-size: 10.5pt;">����ʱʽ�Ҿߵĳ����������ͬ����������˵�����ǻ���ô����</span><span lang="EN-US" style="color: rgb(118, 113, 113); font-size: 10.5pt;">����</span><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; font-size: 10.5pt;">�ǲ���һ����ֵ�ͬ����</span><span lang="EN-US" style="color: rgb(118, 113, 113); font-size: 10.5pt;">����</span><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; font-size: 10.5pt;">��˵�����������ڵ����Ϻ��ǻ�������Ȱ������˸�Ϊ��Խ����δ���ǵļҾ�ҲӦ�ñ����ǵĸ����ӣ�Ŀǰ�����ǵķ����������˼Ҿߣ������Ҿ�Ū�����أ�һλ��������Ը�Ѵ󲿷ּҾ�ɨ�������ӣ�Ҳ��Ը�����ϵĹ������Ų��ɡ����ϵĹ����ǣ���΢��ɫ������У�������������������ϵ��˸���ʲô�����糿�Ĺ����أ������ϣ�������ʯ��ʯ���ǵ�����������ǲ��ɣ�������𾪣���ͷ���еĻҳ��������������أ��Ͽ��Ӷ�ذ������ӳ�����ȥ�����룬����ô����һ���мҾߵķ����أ�����������¶�죬��Ϊ��Ҷ֮�ϣ�û�лҳ��������������Ѿ�������˵ĵط���</span></p><p style="text-align: center; "><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; font-size: 10.5pt;"><br></span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="http://qxu1606520494.my3w.com/api/public/uploads/20180428/d8aa84e79ff836c7133c65a05af222cb.jpg" style="width: 660.519px; height: 440px;"><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; font-size: 10.5pt;"><br></span></p><p><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; font-size: 10.5pt;"><br></span></p><p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; &nbsp;�������ݵ��˴�����ʱ�ַ��£��ó�Ⱥ�����ڽ���׷�档һ�������ߣ�Ͷ������ν��Ư���ķ�������ͻᷢ����㣬��Ϊ�õ������ǵ�������������˹���д��ˣ�Ҫ�������������ǵ�ʢ�飬��������ͻ���ȫʧȥ���Եľ������뵽��·���ᣬ��������Ը�������Ǯ�ڲ��õ��ݳ��ϣ������ں��г��İ�ȫ�ͱ�ݵģ������ȫ�ͱ�ݶ�̸�������������һ��Ħ�ǿ������������˯�Σ�������ʽ�ĺ�齣����������裬����һ��������Ķ����Ļ��������ǰ����ǰᵽ�������ˣ���Щ������ԭ����Ϊ�쳯�۹����������죬���ӵĺ��������е���檶������ģ�����Լ�õ��������ƶ�Ҫ��Ϊ��Ķ���������������һֻ���Ϲ��ϣ�����һ����ռ��������Ը�⼷������޵ĵ����ϡ���������һ��ţ��������������ȥ����Ը����ʲô���ڵ�������ȥ���ã�һ·�Ϻ��������ǵĿ�����</span><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; font-size: 10.5pt;"><br></span><br></p>'),
('88','15','�װ׵����','<p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; &nbsp;Ҳ�����˲��룬ӵ�������Ķ��෿�ݣ���Ϊ��δ����ѣ�������δȻ������Ϊ�Ը��˶��ԣ��������ĺô������ǿ��Թ�����������ɥ��Ѱ��ˡ�������Ҳ�����ò��������Լ��ġ�Ȼ�����������ָ���������˺�Ұ�����м��һ����Ҫ�������˸������˵����������һ���ƶȣ�������Ϊ�����ǵĺô��������ƶ�Ϊ�˱�������������ʹ������������������ȴ��������˸��˵����������ϣ��ָ����Ϊ�˵õ���ô�������Ŀǰ�����ε������������һ�Ҫ���飬�����ǿ��Բ������κ������͵õ��ܶ�ô��ġ���˵���������˾���������һ�𣬸��׳��������ѣ����ӵ�����Ҳ���ᣬ˵��Щ����ʲô��˼�أ�</span></p><p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"><br></span><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; text-align: center;">&nbsp;</span></p><p>&nbsp;<img src="http://qxu1606520494.my3w.com/api/public/uploads/20180428/d4f7a087b8d58d246f6529984255db33.jpg" style="width: 715.233px; height: 476px;"></p><p><span lang="EN-US" style="font-size:10.5pt;line-height:
93%;font-family:&quot;΢���ź�&quot;,sans-serif;mso-bidi-font-family:΢���ź�;color:#767171;
mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; ��</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">���Ǻͻ�˵����ָ���ҵ��������ģ���������ɫ���бز�����������������ɡ�</span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;΢���ź�&quot;,sans-serif;
mso-bidi-font-family:΢���ź�;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">��</span></p><p class="MsoNormal" style="margin-left:-.75pt"><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;΢���ź�&quot;,sans-serif;
mso-bidi-font-family:΢���ź�;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">&nbsp; &nbsp; ��</span></span><span style="font-size:10.5pt;line-height:93%;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">���������˶��������ҵģ�Ϊ�����������ң�Ϊ�ӵ�Ҳ�������ң����������������</span></span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;΢���ź�&quot;,sans-serif;
mso-bidi-font-family:΢���ź�;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">��</span></span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><o:p></o:p></span></p><p><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;΢���ź�&quot;,sans-serif;
mso-bidi-font-family:΢���ź�;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">

<span style="font-size: 10.5pt; line-height: 93%; font-family: &quot;Microsoft YaHei UI&quot;, sans-serif;">�����뵽�ҵ��ھ�ʱ����Щ���Ƶµ�ũ���ǣ����ǵľ�������ͬ��Ľ׼�һ���ã��ҷ��������м�Ĵ󲿷��˶��ѹ����˶�ʮ����ʮ�����ʮ���ˣ�Ϊ�������ǿ��Գ�Ϊ����ũ�����������ˣ�ͨ����Щũ���Ǹ����˵�ѺȨ���������ǵ��Ų��������ǽ���Ǯ�������ģ�<span lang="EN-US">�� ��</span>���ǲ��������ǵ������е�����֮һ����Ϊ���ݵĴ��ۣ�<span lang="EN-US">����</span>ͨ���������ǻ�û�и�����һ�ʽ���ģ��ǵ�ѺȨ��ʱ��������ũ����ԭ�ۣ����ũ�������ѳ���һ������׸��Ȼ������������гм̵��ˣ��������Լ�˵�ģ���Ϊ������м��˺�ũ��̫�׽��ˡ��������ۿ�˰��̸����������ط������Ǿ�Ȼ���ܹ�һ��������ʮ����ӵ��ũ������</span><br></span><br></p>'),
('79','13','����','<p>&nbsp; &nbsp; &nbsp;���Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��ԡ�</p><p><br></p><p><img src="http://qxu1606520494.my3w.com/api/public/uploads/20180428/2276ca4c9aecfae92cccca584c3f6c5b.jpg" style="width: 924px;"></p><p><br></p><p>&nbsp; &nbsp; &nbsp;���Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��Բ��ԡ�<br></p>'),
('80','13','���ĵ�һ��','<p class="MsoNormal" style="margin-left:-.75pt">&nbsp; &nbsp; &nbsp;������Ϊ������ȫ���������ڸ߷�֮�ۻ����֮�ȣ����Ѹ��������߱飬һ�ж��ѱ�ע�⵽�ˡ�������ܽ�յĻ���<span lang="EN-US" style="font-family:&quot;΢���ź�&quot;,sans-serif;mso-bidi-font-family:΢���ź�">��</span>�ǻ۵��������������ƶ���ľ�м�Ӧ�еľ��룻����ط���Ҳ���涨������Զ��ٴε��ڼҵĵ���ȥ��ʰ������������ʵ���������Ҵ��ģ������涨���ٷ���ʵ�������ˡ�<span lang="EN-US" style="font-family:&quot;΢���ź�&quot;,sans-serif;mso-bidi-font-family:΢���ź�">��</span>ϣ�����������������˼�ָ�׵ķ��������ò�Ҫ̫�̻�̫����Ҫ����ָͷ�������ʵģ���Ϊ�������ı��׺ͻ��ֶ���ʴ���������ַ�ǫ�����ƣ��Ǹ��ǵ�ͬ���ع��ϵġ����˵���������δ�����������أ����ǲ��ܸ������Ѿ���ɵ������ж������������������ټ��ˡ���������ǰ���ʧ�ܹ���<span lang="EN-US" style="font-family:&quot;΢���ź�&quot;,sans-serif;mso-bidi-font-family:΢���ź�">��</span>����ˣ��ҵĺ��ӣ�˭��ָ����ȥ����δ����������أ�<span lang="EN-US" style="font-family:&quot;΢���ź�&quot;,sans-serif;mso-bidi-font-family:΢���ź�">��</span></p><p style="margin-left:-.75pt"><span lang="EN-US" style="font-family:&quot;΢���ź�&quot;,sans-serif;mso-bidi-font-family:΢���ź�"><span style="font-size:10.0pt;mso-bidi-font-size:11.0pt;
line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:
&quot;Microsoft YaHei UI&quot;;color:black;mso-ansi-language:EN-US;mso-fareast-language:
ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; &nbsp;</span></span>���ǿ�����һǧ�ּ򵥵ķ������ⶨ���ǵ���������������֮������ͬһ��̫������ʹ���ֵĶ��ӳ��죬ͬʱ��Ȼ��ҫ�������ǵĵ���֮�������̫��ϵ������Ҽ�ס����һ�㣬�Ǿ���Ԥ�����ɵĴ��󡣿����ҳ���ʱ��û������ȥ�롣�����Ǻε�����������εļⶥ������������ж���ԶԶ�����Ĳ�ͬ��������ͬʱ˼����ͬһ��ʵ�����������ǵĸ�������һ��������Ȼ������Ҳ�Ǳ仯��˵ġ�˭��Ԥ֪���˵���������ʲôԶ�����ѵ����б�һ˲֮��ͨ���˴˵��۾����۲��ΰ����漣�����Ǳ�Ӧ����һСʱ֮�ھ;�����������������ʱ�����ǵģ���������������ʱ�������е����硣��ʷ��ʫ�衢�񻰣�<span lang="EN-US">����</span>�Ҳ�֪�������˵ľ��黹��ʲô�������Щ�����ؾ��˶����꾡�ġ�</p><p style="margin-left:-.75pt"><br></p><p style="text-align: center; margin-left: -0.75pt;"><img src="http://qxu1606520494.my3w.com/api/public/uploads/20180428/4451ef36d14166ae142103e9a0b696cb.jpg" style="width: 519.266px; height: 310px;"></p><p style="text-align: center; margin-left: -0.75pt;"><br></p><p class="MsoNormal" style="margin-top:0cm;margin-right:5.0pt;margin-bottom:3.7pt;
margin-left:-.75pt;text-align:justify;text-justify:inter-ideograph;line-height:
92%">&nbsp; &nbsp; &nbsp;���ҵ�����˵�Ǻõģ���һ�󲿷����������ȴ��Ϊ�ǻ��ģ������ң����Ҫ����Ǫ�ڣ��һں޵ķ������ҵ�����Ʒ</p><p class="MsoNormal" style="margin-top:0cm;margin-right:5.0pt;margin-bottom:3.7pt;
margin-left:-.75pt;text-align:justify;text-justify:inter-ideograph;line-height:
92%">�С���ʲôħ���ס���ң�ʹ��Ʒ�������������أ������˰�����˵����Щ������Ļ������Ѿ�������ʮ���ˣ����һ��</p><p class="MsoNormal" style="margin-top:0cm;margin-right:5.0pt;margin-bottom:3.7pt;
margin-left:-.75pt;text-align:justify;text-justify:inter-ideograph;line-height:
92%">�ܹ��٣���ȴ����һ�����ɿ��ܵ�������Ҫ���Ҳ�����Ļ����µ���������ǰһ����ҵ��������������Щ��ǳ�Ĵ���<span lang="EN-US"><o:p></o:p></span></p><p class="MsoNormal" style="margin-left:-.75pt"><span lang="EN-US"><o:p></o:p></span></p><p class="MsoNormal" style="margin-left:-.75pt"><span lang="EN-US"><o:p></o:p></span></p>'),
('89','7','��ɫ','<p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; &nbsp;Ҳ�����˲��룬ӵ�������Ķ��෿�ݣ���Ϊ��δ����ѣ�������δȻ������Ϊ�Ը��˶��ԣ��������ĺô������ǿ��Թ�����������ɥ��Ѱ��ˡ�������Ҳ�����ò��������Լ��ġ�Ȼ�����������ָ���������˺�Ұ�����м��һ����Ҫ�������˸������˵����������һ���ƶȣ�������Ϊ�����ǵĺô��������ƶ�Ϊ�˱�������������ʹ������������������ȴ��������˸��˵����������ϣ��ָ����Ϊ�˵õ���ô�������Ŀǰ�����ε������������һ�Ҫ���飬�����ǿ��Բ������κ������͵õ��ܶ�ô��ġ���˵���������˾���������һ�𣬸��׳��������ѣ����ӵ�����Ҳ���ᣬ˵��Щ����ʲô��˼�أ�</span></p><p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"><br></span><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; text-align: center;">&nbsp;</span></p><p>&nbsp;<img src="http://qxu1606520494.my3w.com/api/public/uploads/20180428/d4f7a087b8d58d246f6529984255db33.jpg" style="width: 715.233px; height: 476px;"></p><p><span lang="EN-US" style="font-size:10.5pt;line-height:
93%;font-family:&quot;΢���ź�&quot;,sans-serif;mso-bidi-font-family:΢���ź�;color:#767171;
mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; ��</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">���Ǻͻ�˵����ָ���ҵ��������ģ���������ɫ���бز�����������������ɡ�</span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;΢���ź�&quot;,sans-serif;
mso-bidi-font-family:΢���ź�;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">��</span></p><p class="MsoNormal" style="margin-left:-.75pt"><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;΢���ź�&quot;,sans-serif;
mso-bidi-font-family:΢���ź�;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">&nbsp; &nbsp; ��</span></span><span style="font-size:10.5pt;line-height:93%;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">���������˶��������ҵģ�Ϊ�����������ң�Ϊ�ӵ�Ҳ�������ң����������������</span></span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;΢���ź�&quot;,sans-serif;
mso-bidi-font-family:΢���ź�;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">��</span></span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><o:p></o:p></span></p><p><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;΢���ź�&quot;,sans-serif;
mso-bidi-font-family:΢���ź�;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">

<span style="font-size: 10.5pt; line-height: 93%; font-family: &quot;Microsoft YaHei UI&quot;, sans-serif;">�����뵽�ҵ��ھ�ʱ����Щ���Ƶµ�ũ���ǣ����ǵľ�������ͬ��Ľ׼�һ���ã��ҷ��������м�Ĵ󲿷��˶��ѹ����˶�ʮ����ʮ�����ʮ���ˣ�Ϊ�������ǿ��Գ�Ϊ����ũ�����������ˣ�ͨ����Щũ���Ǹ����˵�ѺȨ���������ǵ��Ų��������ǽ���Ǯ�������ģ�<span lang="EN-US">�� ��</span>���ǲ��������ǵ������е�����֮һ����Ϊ���ݵĴ��ۣ�<span lang="EN-US">����</span>ͨ���������ǻ�û�и�����һ�ʽ���ģ��ǵ�ѺȨ��ʱ��������ũ����ԭ�ۣ����ũ�������ѳ���һ������׸��Ȼ������������гм̵��ˣ��������Լ�˵�ģ���Ϊ������м��˺�ũ��̫�׽��ˡ��������ۿ�˰��̸����������ط������Ǿ�Ȼ���ܹ�һ��������ʮ����ӵ��ũ������</span><br></span><br></p>'),
('90','7','���ﰲ','<p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; &nbsp;Ҳ�����˲��룬ӵ�������Ķ��෿�ݣ���Ϊ��δ����ѣ�������δȻ������Ϊ�Ը��˶��ԣ��������ĺô������ǿ��Թ�����������ɥ��Ѱ��ˡ�������Ҳ�����ò��������Լ��ġ�Ȼ�����������ָ���������˺�Ұ�����м��һ����Ҫ�������˸������˵����������һ���ƶȣ�������Ϊ�����ǵĺô��������ƶ�Ϊ�˱�������������ʹ������������������ȴ��������˸��˵����������ϣ��ָ����Ϊ�˵õ���ô�������Ŀǰ�����ε������������һ�Ҫ���飬�����ǿ��Բ������κ������͵õ��ܶ�ô��ġ���˵���������˾���������һ�𣬸��׳��������ѣ����ӵ�����Ҳ���ᣬ˵��Щ����ʲô��˼�أ�</span></p><p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"><br></span><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; text-align: center;">&nbsp;</span></p><p>&nbsp;<img src="http://qxu1606520494.my3w.com/api/public/uploads/20180428/d4f7a087b8d58d246f6529984255db33.jpg" style="width: 715.233px; height: 476px;"></p><p><span lang="EN-US" style="font-size:10.5pt;line-height:
93%;font-family:&quot;΢���ź�&quot;,sans-serif;mso-bidi-font-family:΢���ź�;color:#767171;
mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; ��</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">���Ǻͻ�˵����ָ���ҵ��������ģ���������ɫ���бز�����������������ɡ�</span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;΢���ź�&quot;,sans-serif;
mso-bidi-font-family:΢���ź�;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">��</span></p><p class="MsoNormal" style="margin-left:-.75pt"><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;΢���ź�&quot;,sans-serif;
mso-bidi-font-family:΢���ź�;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">&nbsp; &nbsp; ��</span></span><span style="font-size:10.5pt;line-height:93%;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">���������˶��������ҵģ�Ϊ�����������ң�Ϊ�ӵ�Ҳ�������ң����������������</span></span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;΢���ź�&quot;,sans-serif;
mso-bidi-font-family:΢���ź�;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">��</span></span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><o:p></o:p></span></p><p><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;΢���ź�&quot;,sans-serif;
mso-bidi-font-family:΢���ź�;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">

<span style="font-size: 10.5pt; line-height: 93%; font-family: &quot;Microsoft YaHei UI&quot;, sans-serif;">�����뵽�ҵ��ھ�ʱ����Щ���Ƶµ�ũ���ǣ����ǵľ�������ͬ��Ľ׼�һ���ã��ҷ��������м�Ĵ󲿷��˶��ѹ����˶�ʮ����ʮ�����ʮ���ˣ�Ϊ�������ǿ��Գ�Ϊ����ũ�����������ˣ�ͨ����Щũ���Ǹ����˵�ѺȨ���������ǵ��Ų��������ǽ���Ǯ�������ģ�<span lang="EN-US">�� ��</span>���ǲ��������ǵ������е�����֮һ����Ϊ���ݵĴ��ۣ�<span lang="EN-US">����</span>ͨ���������ǻ�û�и�����һ�ʽ���ģ��ǵ�ѺȨ��ʱ��������ũ����ԭ�ۣ����ũ�������ѳ���һ������׸��Ȼ������������гм̵��ˣ��������Լ�˵�ģ���Ϊ������м��˺�ũ��̫�׽��ˡ��������ۿ�˰��̸����������ط������Ǿ�Ȼ���ܹ�һ��������ʮ����ӵ��ũ������</span><br></span><br></p>'),
('91','7','����������','<p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; &nbsp;Ҳ�����˲��룬ӵ�������Ķ��෿�ݣ���Ϊ��δ����ѣ�������δȻ������Ϊ�Ը��˶��ԣ��������ĺô������ǿ��Թ�����������ɥ��Ѱ��ˡ�������Ҳ�����ò��������Լ��ġ�Ȼ�����������ָ���������˺�Ұ�����м��һ����Ҫ�������˸������˵����������һ���ƶȣ�������Ϊ�����ǵĺô��������ƶ�Ϊ�˱�������������ʹ������������������ȴ��������˸��˵����������ϣ��ָ����Ϊ�˵õ���ô�������Ŀǰ�����ε������������һ�Ҫ���飬�����ǿ��Բ������κ������͵õ��ܶ�ô��ġ���˵���������˾���������һ�𣬸��׳��������ѣ����ӵ�����Ҳ���ᣬ˵��Щ����ʲô��˼�أ�</span></p><p><span style="font-size:10.5pt;line-height:93%;
font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;
color:#767171;mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"><br></span><span style="color: rgb(118, 113, 113); font-family: &quot;Microsoft YaHei UI&quot;, sans-serif; text-align: center;">&nbsp;</span></p><p>&nbsp;<img src="http://qxu1606520494.my3w.com/api/public/uploads/20180428/d4f7a087b8d58d246f6529984255db33.jpg" style="width: 715.233px; height: 476px;"></p><p><span lang="EN-US" style="font-size:10.5pt;line-height:
93%;font-family:&quot;΢���ź�&quot;,sans-serif;mso-bidi-font-family:΢���ź�;color:#767171;
mso-themecolor:background2;mso-themeshade:128;mso-style-textfill-fill-color:
#767171;mso-style-textfill-fill-themecolor:background2;mso-style-textfill-fill-alpha:
100.0%;mso-style-textfill-fill-colortransforms:lumm=50000;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp; &nbsp; ��</span><span style="font-size:10.5pt;line-height:93%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif;
mso-bidi-font-family:&quot;Microsoft YaHei UI&quot;;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">���Ǻͻ�˵����ָ���ҵ��������ģ���������ɫ���бز�����������������ɡ�</span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;΢���ź�&quot;,sans-serif;
mso-bidi-font-family:΢���ź�;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">��</span></p><p class="MsoNormal" style="margin-left:-.75pt"><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;΢���ź�&quot;,sans-serif;
mso-bidi-font-family:΢���ź�;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">&nbsp; &nbsp; ��</span></span><span style="font-size:10.5pt;line-height:93%;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">���������˶��������ҵģ�Ϊ�����������ң�Ϊ�ӵ�Ҳ�������ң����������������</span></span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;΢���ź�&quot;,sans-serif;
mso-bidi-font-family:΢���ź�;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><span style="color:windowtext">��</span></span><span lang="EN-US" style="font-size:10.5pt;line-height:93%;color:#767171;mso-themecolor:background2;
mso-themeshade:128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000"><o:p></o:p></span></p><p><span lang="EN-US" style="font-size:10.5pt;line-height:93%;font-family:&quot;΢���ź�&quot;,sans-serif;
mso-bidi-font-family:΢���ź�;color:#767171;mso-themecolor:background2;mso-themeshade:
128;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-themecolor:
background2;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
lumm=50000;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">

<span style="font-size: 10.5pt; line-height: 93%; font-family: &quot;Microsoft YaHei UI&quot;, sans-serif;">�����뵽�ҵ��ھ�ʱ����Щ���Ƶµ�ũ���ǣ����ǵľ�������ͬ��Ľ׼�һ���ã��ҷ��������м�Ĵ󲿷��˶��ѹ����˶�ʮ����ʮ�����ʮ���ˣ�Ϊ�������ǿ��Գ�Ϊ����ũ�����������ˣ�ͨ����Щũ���Ǹ����˵�ѺȨ���������ǵ��Ų��������ǽ���Ǯ�������ģ�<span lang="EN-US">�� ��</span>���ǲ��������ǵ������е�����֮һ����Ϊ���ݵĴ��ۣ�<span lang="EN-US">����</span>ͨ���������ǻ�û�и�����һ�ʽ���ģ��ǵ�ѺȨ��ʱ��������ũ����ԭ�ۣ����ũ�������ѳ���һ������׸��Ȼ������������гм̵��ˣ��������Լ�˵�ģ���Ϊ������м��˺�ũ��̫�׽��ˡ��������ۿ�˰��̸����������ط������Ǿ�Ȼ���ܹ�һ��������ʮ����ӵ��ũ������</span><br></span><br></p>'),
('92','17','�����Ŀ�����','<p class="MsoNormal" style="margin-left:-.75pt">&nbsp; &nbsp; &nbsp;�����ڹ��ž����ľ����������ν�������������ǿ϶��ľ�������Ӿ����ĳ����ߵ������Ĵ�ׯ����ˮ����������¸�����ο�Լ������������ν��Ϸ����ǲ���£�������������һ�����̵ġ���֪�ֲ����ľ����������ж�û�����ֿ��ԣ���Ϊ����֮��������֡����ǲ����������£������ǻ۵�һ�ֱ�����</p><p><font color="#000000"><span style="font-size: 13.3333px;">&nbsp; &nbsp; &nbsp; �����ڹ��ž����ľ����������ν�������������ǿ϶��ľ�������Ӿ����ĳ����ߵ������Ĵ�ׯ����ˮ����������¸�����ο�Լ������������ν��Ϸ����ǲ���£�������������һ�����̵ġ���֪�ֲ����ľ����������ж�û�����ֿ��ԣ���Ϊ����֮��������֡����ǲ����������£������ǻ۵�һ�ֱ�����</span></font></p><p><font color="#000000"><span style="font-size: 13.3333px;">&nbsp; &nbsp; &nbsp;�������ý����ʴ𷨵ķ�ʽ��˼����ʲô����������ּ��ʲô������������ı���Ʒ������ʱ���·����ǻ����������µ�ѡ������������Ĺ�ͬ��ʽ������Ҫ�κα�ķ�ʽ�Ƶġ���ʵ����Ҳ֪������˶��⣬���޿�����ѡ�ķ�ʽ�������ѽ������˶�֪����̫���չų��¡��������ǵ�ƫ��������Զ�����������ġ�������ι��ϵ�˼������Ϊ��������ȷ֤���㲻�������š��ڽ������˸��ͻ���Ϊ����Ĭ�ϵ������ܿ�����������������翵��뵣�������������Ϊ�����ƣ����Խ�һ��������䵽�������������ͷ����Ϊ�첻���������԰�һ�£���������ɹ���.</span></font></p><p><font color="#000000"><span style="font-size: 13.3333px;"><br></span></font></p><p><img style="width: 788.392px; height: 361px;" src="http://120.79.8.48/api/public/uploads/20180503/51e11fd06d75c1fa911fff6b3c1805b4.jpg"><font color="#000000"><span style="font-size: 13.3333px;"><br></span></font></p>'),
('93','7','��ҹ','<p><font color="#000000" face="����" size="3">

</font></p><p style="margin: 0cm 0cm 3.65pt -0.75pt;"><font color="#000000" face="Microsoft YaHei UI" size="2">&nbsp;&nbsp;&nbsp;&nbsp; �����ڹ��ž����ľ����������ν�������������ǿ϶��ľ�������Ӿ����ĳ����ߵ������Ĵ�ׯ����ˮ����������¸�����ο�Լ������������ν��Ϸ����ǲ���£�������������һ�����̵ġ���֪�ֲ����ľ����������ж�û�����ֿ��ԣ���Ϊ����֮��������֡����ǲ����������£������ǻ۵�һ�ֱ�����</font></p><p><font color="#000000" face="����" size="3">

</font><span style=\'color: black; line-height: 93%; font-family: "Microsoft YaHei UI",sans-serif; font-size: 10pt; mso-bidi-font-family: "Microsoft YaHei UI"; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 11.0pt;\'>�������ý����ʴ𷨵ķ�ʽ��˼����ʲô����������ּ��ʲô������������ı���Ʒ������ʱ���·����ǻ����������µ�ѡ������������Ĺ�ͬ��ʽ������Ҫ�κα�ķ�ʽ�Ƶġ���ʵ����Ҳ֪������˶��⣬���޿�����ѡ�ķ�ʽ�������ѽ������˶�֪����̫���չų��¡��������ǵ�ƫ��������Զ�����������ġ�������ι��ϵ�˼������Ϊ��������ȷ֤���㲻�������š��ڽ������˸��ͻ���Ϊ����Ĭ�ϵ������ܿ�����������������翵��뵣�������������Ϊ�����ƣ����Խ�һ��������䵽�������������ͷ����Ϊ�첻���������԰�һ�£���������ɹ��ˡ������оɵ�һ�ף��������µ�һ�ס����˲�֪����ȼ�ϱ㡣</span></p><p><span style=\'color: black; line-height: 93%; font-family: "Microsoft YaHei UI",sans-serif; font-size: 10pt; mso-bidi-font-family: "Microsoft YaHei UI"; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 11.0pt;\'><br><span style=\'color: black; line-height: 93%; font-family: "Microsoft YaHei UI",sans-serif; font-size: 10pt; mso-bidi-font-family: "Microsoft YaHei UI"; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 11.0pt;\'><span style=\'color: black; line-height: 93%; font-family: "Microsoft YaHei UI",sans-serif; font-size: 10pt; mso-bidi-font-family: "Microsoft YaHei UI"; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 11.0pt;\'><br></span><img style="width: 924px;" src="http://120.79.8.48/api/public/uploads/20180508/837d87455720c20be1cd7ed040c64954.jpg"><br></span></span></p>');
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
('1','Ԫ��','/api/public/static/image/17.jpg'),
('2','����','/api/public/static/image/6.jpg'),
('3','��һ','/api/public/static/image/13.jpg'),
('4','����','/api/public/static/image/14.jpg'),
('5','����','/api/public/static/image/5.jpg'),
('6','����','/api/public/static/image/7.jpg'),
('7','����','/api/public/static/image/16.jpg'),
('8','���','/api/public/static/image/2.jpg'),
('9','����','/api/public/static/image/4.jpg'),
('10','Ԫ��','/api/public/static/image/15.jpg'),
('11','����','/api/public/static/image/15.jpg');
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
('1','��ԭ','/api/public/static/image/christmas-cold-friends-269370.jpg'),
('2','�ǿ�','/api/public/static/image/christmas-cold-friends-269370.jpg'),
('3','�ͻ�','/api/public/static/image/christmas-cold-friends-269370.jpg'),
('4','ѩ��','/api/public/static/image/christmas-cold-friends-269370.jpg'),
('5','����','/api/public/static/image/christmas-cold-friends-269370.jpg'),
('6','�����˶�','/api/public/static/image/christmas-cold-friends-269370.jpg'),
('7','��ѩ','/api/public/static/image/christmas-cold-friends-269370.jpg'),
('8','��Ȫ','/api/public/static/image/christmas-cold-friends-269370.jpg'),
('9','���ؽ���','/api/public/static/image/christmas-cold-friends-269370.jpg'),
('10','��ů�ص�','/api/public/static/image/christmas-cold-friends-269370.jpg'),
('11','����','/api/public/static/image/christmas-cold-friends-269370.jpg'),
('12','����','/api/public/static/image/christmas-cold-friends-269370.jpg'),
('13','����','/api/public/static/image/christmas-cold-friends-269370.jpg');
DROP TABLE IF EXISTS  `suitable`;
CREATE TABLE `suitable` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=gbk;

insert into `suitable`(`id`,`name`,`image`) values
('1','������ʷ','/api/public/static/image/animal-bird-feathers-36762.jpg'),
('2','��Ƭʥ��','/api/public/static/image/animal-bird-feathers-36762.jpg'),
('3','��Ȼ�羰','/api/public/static/image/animal-bird-feathers-36762.jpg'),
('4','��ɽ','/api/public/static/image/animal-bird-feathers-36762.jpg'),
('5','Ǳˮ','/api/public/static/image/animal-bird-feathers-36762.jpg'),
('6','����','/api/public/static/image/animal-bird-feathers-36762.jpg'),
('7','����','/api/public/static/image/animal-bird-feathers-36762.jpg'),
('8','����','/api/public/static/image/animal-bird-feathers-36762.jpg'),
('9','��ʳ','/api/public/static/image/animal-bird-feathers-36762.jpg'),
('10','Զ������','/api/public/static/image/animal-bird-feathers-36762.jpg'),
('11','С��','/api/public/static/image/animal-bird-feathers-36762.jpg'),
('12','����','/api/public/static/image/animal-bird-feathers-36762.jpg');
DROP TABLE IF EXISTS  `tripmode`;
CREATE TABLE `tripmode` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=gbk;

insert into `tripmode`(`id`,`name`,`image`) values
('1','����','/api/public/static/image/pexels-photo-723240.jpeg'),
('2','�Լ�','/api/public/static/image/pexels-photo-723240.jpeg'),
('3','����','/api/public/static/image/pexels-photo-723240.jpeg'),
('4','����','/api/public/static/image/pexels-photo-723240.jpeg'),
('5','����','/api/public/static/image/pexels-photo-723240.jpeg'),
('6','������','/api/public/static/image/pexels-photo-723240.jpeg'),
('7','����ĸ','/api/public/static/image/pexels-photo-723240.jpeg'),
('8','һ����','/api/public/static/image/pexels-photo-723240.jpeg'),
('9','������','/api/public/static/image/pexels-photo-723240.jpeg'),
('10','ͽ��','/api/public/static/image/pexels-photo-723240.jpeg'),
('11','����','/api/public/static/image/pexels-photo-723240.jpeg');
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

