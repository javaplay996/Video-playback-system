/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm617bx
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm617bx` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm617bx`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-16 17:50:50',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-04-16 17:50:50',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-04-16 17:50:50',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-04-16 17:50:50',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-04-16 17:50:50',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-04-16 17:50:50',6,'宇宙银河系月球1号','月某','13823888886','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangcheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm617bx/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm617bx/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm617bx/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussshangcheng` */

DROP TABLE IF EXISTS `discussshangcheng`;

CREATE TABLE `discussshangcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='商城评论表';

/*Data for the table `discussshangcheng` */

insert  into `discussshangcheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (151,'2021-04-16 17:50:51',1,1,'用户名1','评论内容1','回复内容1'),(152,'2021-04-16 17:50:51',2,2,'用户名2','评论内容2','回复内容2'),(153,'2021-04-16 17:50:51',3,3,'用户名3','评论内容3','回复内容3'),(154,'2021-04-16 17:50:51',4,4,'用户名4','评论内容4','回复内容4'),(155,'2021-04-16 17:50:51',5,5,'用户名5','评论内容5','回复内容5'),(156,'2021-04-16 17:50:51',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussshipin` */

DROP TABLE IF EXISTS `discussshipin`;

CREATE TABLE `discussshipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='视频评论表';

/*Data for the table `discussshipin` */

insert  into `discussshipin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (141,'2021-04-16 17:50:51',1,1,'用户名1','评论内容1','回复内容1'),(142,'2021-04-16 17:50:51',2,2,'用户名2','评论内容2','回复内容2'),(143,'2021-04-16 17:50:51',3,3,'用户名3','评论内容3','回复内容3'),(144,'2021-04-16 17:50:51',4,4,'用户名4','评论内容4','回复内容4'),(145,'2021-04-16 17:50:51',5,5,'用户名5','评论内容5','回复内容5'),(146,'2021-04-16 17:50:51',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `fenleilan` */

DROP TABLE IF EXISTS `fenleilan`;

CREATE TABLE `fenleilan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='分类栏';

/*Data for the table `fenleilan` */

insert  into `fenleilan`(`id`,`addtime`,`fenlei`) values (41,'2021-04-16 17:50:50','分类1'),(42,'2021-04-16 17:50:50','分类2'),(43,'2021-04-16 17:50:50','分类3'),(44,'2021-04-16 17:50:50','分类4'),(45,'2021-04-16 17:50:50','分类5'),(46,'2021-04-16 17:50:50','分类6');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (71,'2021-04-16 17:50:50','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(72,'2021-04-16 17:50:50','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(73,'2021-04-16 17:50:50','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(74,'2021-04-16 17:50:50','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(75,'2021-04-16 17:50:50','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(76,'2021-04-16 17:50:50','帖子标题6','帖子内容6',6,6,'用户名6','开放');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (131,'2021-04-16 17:50:50',1,'用户名1','留言内容1','回复内容1'),(132,'2021-04-16 17:50:51',2,'用户名2','留言内容2','回复内容2'),(133,'2021-04-16 17:50:51',3,'用户名3','留言内容3','回复内容3'),(134,'2021-04-16 17:50:51',4,'用户名4','留言内容4','回复内容4'),(135,'2021-04-16 17:50:51',5,'用户名5','留言内容5','回复内容5'),(136,'2021-04-16 17:50:51',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (121,'2021-04-16 17:50:50','标题1','简介1','http://localhost:8080/ssm617bx/upload/news_picture1.jpg','内容1'),(122,'2021-04-16 17:50:50','标题2','简介2','http://localhost:8080/ssm617bx/upload/news_picture2.jpg','内容2'),(123,'2021-04-16 17:50:50','标题3','简介3','http://localhost:8080/ssm617bx/upload/news_picture3.jpg','内容3'),(124,'2021-04-16 17:50:50','标题4','简介4','http://localhost:8080/ssm617bx/upload/news_picture4.jpg','内容4'),(125,'2021-04-16 17:50:50','标题5','简介5','http://localhost:8080/ssm617bx/upload/news_picture5.jpg','内容5'),(126,'2021-04-16 17:50:50','标题6','简介6','http://localhost:8080/ssm617bx/upload/news_picture6.jpg','内容6');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangcheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

/*Table structure for table `shangcheng` */

DROP TABLE IF EXISTS `shangcheng`;

CREATE TABLE `shangcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `fahuodi` varchar(200) DEFAULT NULL COMMENT '发货地',
  `xiaoliang` int(11) DEFAULT NULL COMMENT '销量',
  `canshu` longtext COMMENT '参数',
  `xiangqing` longtext COMMENT '详情',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='商城';

/*Data for the table `shangcheng` */

insert  into `shangcheng`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`fahuodi`,`xiaoliang`,`canshu`,`xiangqing`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (51,'2021-04-16 17:50:50','商品名称1','商品分类1','发货地1',1,'参数1','详情1','http://localhost:8080/ssm617bx/upload/shangcheng_tupian1.jpg',1,1,'2021-04-16 17:50:50',1,99.9),(52,'2021-04-16 17:50:50','商品名称2','商品分类2','发货地2',2,'参数2','详情2','http://localhost:8080/ssm617bx/upload/shangcheng_tupian2.jpg',2,2,'2021-04-16 17:50:50',2,99.9),(53,'2021-04-16 17:50:50','商品名称3','商品分类3','发货地3',3,'参数3','详情3','http://localhost:8080/ssm617bx/upload/shangcheng_tupian3.jpg',3,3,'2021-04-16 17:50:50',3,99.9),(54,'2021-04-16 17:50:50','商品名称4','商品分类4','发货地4',4,'参数4','详情4','http://localhost:8080/ssm617bx/upload/shangcheng_tupian4.jpg',4,4,'2021-04-16 17:50:50',4,99.9),(55,'2021-04-16 17:50:50','商品名称5','商品分类5','发货地5',5,'参数5','详情5','http://localhost:8080/ssm617bx/upload/shangcheng_tupian5.jpg',5,5,'2021-04-16 17:50:50',5,99.9),(56,'2021-04-16 17:50:50','商品名称6','商品分类6','发货地6',6,'参数6','详情6','http://localhost:8080/ssm617bx/upload/shangcheng_tupian6.jpg',6,6,'2021-04-16 17:50:50',6,99.9);

/*Table structure for table `shangpinleixing` */

DROP TABLE IF EXISTS `shangpinleixing`;

CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='商品类型';

/*Data for the table `shangpinleixing` */

insert  into `shangpinleixing`(`id`,`addtime`,`shangpinfenlei`) values (61,'2021-04-16 17:50:50','商品分类1'),(62,'2021-04-16 17:50:50','商品分类2'),(63,'2021-04-16 17:50:50','商品分类3'),(64,'2021-04-16 17:50:50','商品分类4'),(65,'2021-04-16 17:50:50','商品分类5'),(66,'2021-04-16 17:50:50','商品分类6');

/*Table structure for table `shipin` */

DROP TABLE IF EXISTS `shipin`;

CREATE TABLE `shipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shipinmingcheng` varchar(200) DEFAULT NULL COMMENT '视频名称',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `jianjie` varchar(200) DEFAULT NULL COMMENT '简介',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='视频';

/*Data for the table `shipin` */

insert  into `shipin`(`id`,`addtime`,`shipinmingcheng`,`fabushijian`,`fenlei`,`shipin`,`jianjie`,`fengmian`,`zhanghao`,`xingming`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (21,'2021-04-16 17:50:50','视频名称1','2021-04-16 17:50:50','分类1','','简介1','http://localhost:8080/ssm617bx/upload/shipin_fengmian1.jpg','账号1','姓名1',1,1,'2021-04-16 17:50:50',1),(22,'2021-04-16 17:50:50','视频名称2','2021-04-16 17:50:50','分类2','','简介2','http://localhost:8080/ssm617bx/upload/shipin_fengmian2.jpg','账号2','姓名2',2,2,'2021-04-16 17:50:50',2),(23,'2021-04-16 17:50:50','视频名称3','2021-04-16 17:50:50','分类3','','简介3','http://localhost:8080/ssm617bx/upload/shipin_fengmian3.jpg','账号3','姓名3',3,3,'2021-04-16 17:50:50',3),(24,'2021-04-16 17:50:50','视频名称4','2021-04-16 17:50:50','分类4','','简介4','http://localhost:8080/ssm617bx/upload/shipin_fengmian4.jpg','账号4','姓名4',4,4,'2021-04-16 17:50:50',4),(25,'2021-04-16 17:50:50','视频名称5','2021-04-16 17:50:50','分类5','','简介5','http://localhost:8080/ssm617bx/upload/shipin_fengmian5.jpg','账号5','姓名5',5,5,'2021-04-16 17:50:50',5),(26,'2021-04-16 17:50:50','视频名称6','2021-04-16 17:50:50','分类6','','简介6','http://localhost:8080/ssm617bx/upload/shipin_fengmian6.jpg','账号6','姓名6',6,6,'2021-04-16 17:50:50',6);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

/*Table structure for table `tougao` */

DROP TABLE IF EXISTS `tougao`;

CREATE TABLE `tougao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shipinmingcheng` varchar(200) DEFAULT NULL COMMENT '视频名称',
  `tougaoshijian` datetime DEFAULT NULL COMMENT '投稿时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `jianjie` longtext COMMENT '简介',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='投稿';

/*Data for the table `tougao` */

insert  into `tougao`(`id`,`addtime`,`shipinmingcheng`,`tougaoshijian`,`fenlei`,`jianjie`,`shipin`,`fengmian`,`zhanghao`,`mima`,`sfsh`,`shhf`,`clicktime`,`clicknum`,`userid`) values (31,'2021-04-16 17:50:50','视频名称1','2021-04-16 17:50:50','分类1','简介1','','http://localhost:8080/ssm617bx/upload/tougao_fengmian1.jpg','账号1','密码1','是','','2021-04-16 17:50:50',1,1),(32,'2021-04-16 17:50:50','视频名称2','2021-04-16 17:50:50','分类2','简介2','','http://localhost:8080/ssm617bx/upload/tougao_fengmian2.jpg','账号2','密码2','是','','2021-04-16 17:50:50',2,2),(33,'2021-04-16 17:50:50','视频名称3','2021-04-16 17:50:50','分类3','简介3','','http://localhost:8080/ssm617bx/upload/tougao_fengmian3.jpg','账号3','密码3','是','','2021-04-16 17:50:50',3,3),(34,'2021-04-16 17:50:50','视频名称4','2021-04-16 17:50:50','分类4','简介4','','http://localhost:8080/ssm617bx/upload/tougao_fengmian4.jpg','账号4','密码4','是','','2021-04-16 17:50:50',4,4),(35,'2021-04-16 17:50:50','视频名称5','2021-04-16 17:50:50','分类5','简介5','','http://localhost:8080/ssm617bx/upload/tougao_fengmian5.jpg','账号5','密码5','是','','2021-04-16 17:50:50',5,5),(36,'2021-04-16 17:50:50','视频名称6','2021-04-16 17:50:50','分类6','简介6','','http://localhost:8080/ssm617bx/upload/tougao_fengmian6.jpg','账号6','密码6','是','','2021-04-16 17:50:50',6,6);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-16 17:50:51');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`shenfenzheng`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`,`money`) values (11,'2021-04-16 17:50:50','用户1','123456','姓名1','身份证1','男',1,'13823888881','773890001@qq.com','http://localhost:8080/ssm617bx/upload/yonghu_touxiang1.jpg',100),(12,'2021-04-16 17:50:50','用户2','123456','姓名2','身份证2','男',2,'13823888882','773890002@qq.com','http://localhost:8080/ssm617bx/upload/yonghu_touxiang2.jpg',100),(13,'2021-04-16 17:50:50','用户3','123456','姓名3','身份证3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/ssm617bx/upload/yonghu_touxiang3.jpg',100),(14,'2021-04-16 17:50:50','用户4','123456','姓名4','身份证4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/ssm617bx/upload/yonghu_touxiang4.jpg',100),(15,'2021-04-16 17:50:50','用户5','123456','姓名5','身份证5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/ssm617bx/upload/yonghu_touxiang5.jpg',100),(16,'2021-04-16 17:50:50','用户6','123456','姓名6','身份证6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/ssm617bx/upload/yonghu_touxiang6.jpg',100);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
