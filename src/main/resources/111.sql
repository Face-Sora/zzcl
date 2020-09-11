/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.25-log : Database - xinxi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xinxi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xinxi`;

/*Table structure for table `leave_message` */

DROP TABLE IF EXISTS `leave_message`;

CREATE TABLE `leave_message` (
  `id` int(11) DEFAULT NULL,
  `username` varchar(600) DEFAULT NULL,
  `email` varchar(600) DEFAULT NULL,
  `phone` varchar(300) DEFAULT NULL,
  `company` varchar(600) DEFAULT NULL,
  `message` varchar(1500) DEFAULT NULL,
  `create_time` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `leave_message` */

insert  into `leave_message`(`id`,`username`,`email`,`phone`,`company`,`message`,`create_time`) values (1,'float','413541471@qq.com','15264382435','深科','很好','2020-09-07'),(2,'',NULL,'',NULL,'good','2020-09-07'),(3,'',NULL,'',NULL,'nice\n','2020-09-07');

/*Table structure for table `need` */

DROP TABLE IF EXISTS `need`;

CREATE TABLE `need` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '需求编号',
  `title` varchar(100) DEFAULT NULL COMMENT '需求标题',
  `description` varchar(200) DEFAULT NULL COMMENT '需求描述',
  `classify` bigint(20) DEFAULT NULL COMMENT '分类',
  `adress` varchar(200) DEFAULT NULL COMMENT '项目地址',
  `price` varchar(20) DEFAULT NULL COMMENT '价格',
  `dead_line` varchar(100) DEFAULT NULL COMMENT '截止日期',
  `user_id` bigint(20) DEFAULT NULL COMMENT '甲方id',
  `worker_id` bigint(20) DEFAULT NULL COMMENT '乙方id',
  `create_time` date DEFAULT NULL COMMENT '需求发布日期',
  `update_time` date DEFAULT NULL COMMENT '最后一次修改日期',
  `status` char(1) DEFAULT NULL COMMENT 'y已审核/n未审核',
  `progress` char(1) DEFAULT NULL COMMENT 'w未接单 /i完成中 /f已完成',
  `begin_time` date DEFAULT NULL COMMENT '开工日期',
  `finish_time` date DEFAULT NULL COMMENT '完成日期',
  PRIMARY KEY (`id`),
  KEY `uId` (`user_id`),
  KEY `to_type` (`classify`),
  CONSTRAINT `to_type` FOREIGN KEY (`classify`) REFERENCES `need_type` (`id`),
  CONSTRAINT `uId` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='需求表';

/*Data for the table `need` */

insert  into `need`(`id`,`title`,`description`,`classify`,`adress`,`price`,`dead_line`,`user_id`,`worker_id`,`create_time`,`update_time`,`status`,`progress`,`begin_time`,`finish_time`) values (12,'可口可乐装瓶机','全自动可口可乐装瓶机777',23,'淄博','2000万','2021-9-09',1287590483908210709,0,'2020-07-07','2020-09-08','y','i','2020-08-01','2020-08-31'),(13,'可口可乐装罐机','全自动可口可乐装罐机a',23,'济南','1000万','2021-10-1',1287590483908210714,1287590483908210724,'2020-07-02','2020-09-08','y','w',NULL,'2020-08-23'),(14,'生活废水处理','十吨生活废水处理ffff',24,'郑州','100万','2020-9-18',1287590483908210714,1287590483908210714,'2020-06-19','2020-09-08','y','w',NULL,NULL),(15,'80地砖自动分拣','80地砖自动分拣',26,'广州','100万','不限',1287590483908210714,NULL,'2020-09-01','2020-09-04','y','w',NULL,NULL),(16,'牛奶蛋白质含量检测','牛奶蛋白质含量检测',28,'上海','10万','明年',1287590483908210714,NULL,'2020-09-01','2020-09-02','y','w',NULL,NULL),(26,'大明湖水质检测','大明湖水质检测',27,'齐齐哈尔','1亿','不限',1287590483908210714,NULL,'2020-09-02','2020-09-07','n','w',NULL,NULL),(28,'青岛啤酒分拣','青岛啤酒分拣',26,'青岛','190万','不限',1287590483908210714,NULL,'2020-09-03','2020-09-04','y','w',NULL,NULL),(29,'化工废水处理','我司是做化工原材料的生产的，现在有大量的废水需要处理，一天污水排量在20吨左右，成份盐酸含量20%，氯化铵10%，有机物(主要有苯酚及相关产品)COD18万，要求处理后含盐量1000ppm，COD500ppm以下，有能做的厂家可直接联系，考虑山东、江苏附近的厂家参与，要有10年以上的经验！',27,'山东潍坊','面议','不限',1287590483908210729,NULL,'2020-09-04','2020-09-04','y','w',NULL,NULL),(30,'无人agv叉车','我司现在想采购无人agv叉车代替人工，最大载重量1吨左右（载重量可调整），托盘尺寸1.4*1.4m，有能做的厂家可直接联系，目前是考察阶段，先想引进一台看看效果，如果价格合适，后期会采购几台左右（物流量比较大，4小时内出货700吨货物的），考虑宁波附近的厂家参与。',26,'宁波','面议','2021-5-6',1287590483908210728,NULL,'2020-09-04','2020-09-07','n','w',NULL,NULL),(31,'建筑紧固件自动焊接机械手','我司需要购买建筑紧固件自动焊接机械手。现在是人工在进行焊接，焊接工艺：气保焊，材质：铁的。产品尺寸都是不固定的，最小的长度为400mm，最大的长度为2米7。宽度是固定的都是80mm。重量在：每米约6公斤。人工一天能焊接两吨的量。目前想代替人工引进自动化焊接设备，具体产能根据供方提供的设备为准，能做的供方跟我联系，地域不限。',24,'包头','面议','2020-12-09',1287590483908210728,NULL,'2020-09-04','2020-09-07','n','w',NULL,NULL),(32,'汽车钢圈自动化打磨机器人','  我司是做汽车钢圈、异型钢材加工的，现在想采购自动化打磨机器人代替人工，主要是打磨汽车钢圈的焊缝，材质：碳钢，直径最大25寸，目前人工是用砂轮打磨的，分为两道工序，精磨合细磨，打磨一个钢圈需要1分钟/人，只需要打磨光滑就可以，要求自动化效率大于人工，有能做的厂家可直接联系。',23,'淄博市临淄区','面议','2020.10.1',1287590483908210730,NULL,'2020-09-04','2020-09-07','y','w',NULL,NULL),(33,'集装箱自动分类码货','码头大型进出口集装箱自动分类、排序、码垛',23,'大连','10万','2020.10.07号',1287590483908210731,NULL,'2020-09-07','2020-09-08','y','w',NULL,NULL);

/*Table structure for table `need_store` */

DROP TABLE IF EXISTS `need_store`;

CREATE TABLE `need_store` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '需求商铺id',
  `need_id` bigint(20) DEFAULT NULL COMMENT '需求id',
  `store_id` bigint(20) DEFAULT NULL COMMENT '商铺id',
  `state` varchar(10) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='需求商铺对照表';

/*Data for the table `need_store` */

/*Table structure for table `need_type` */

DROP TABLE IF EXISTS `need_type`;

CREATE TABLE `need_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '需求分类id',
  `name` varchar(20) DEFAULT NULL COMMENT '分类名称',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '母分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

/*Data for the table `need_type` */

insert  into `need_type`(`id`,`name`,`parent_id`) values (23,'生产配件',NULL),(24,'电工电气',NULL),(25,'机械机电',NULL),(26,'分拣输送',NULL),(27,'环境检测 ',NULL),(28,'成分检测',NULL);

/*Table structure for table `store` */

DROP TABLE IF EXISTS `store`;

CREATE TABLE `store` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '店铺id',
  `name` varchar(20) DEFAULT NULL COMMENT '店铺名称',
  `address` varchar(50) DEFAULT NULL COMMENT '店铺地址',
  `time` int(11) DEFAULT NULL COMMENT '接单次数',
  `user_id` bigint(20) DEFAULT NULL COMMENT '店铺拥有者',
  PRIMARY KEY (`id`),
  KEY `userId` (`user_id`),
  CONSTRAINT `userId` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='店铺表';

/*Data for the table `store` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `nick_name` varchar(100) DEFAULT NULL COMMENT '称呼',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `pwd` varchar(32) DEFAULT NULL COMMENT '密码',
  `classify_id` varchar(20) DEFAULT NULL COMMENT '分类',
  `tendency` tinyint(1) DEFAULT NULL COMMENT '注册倾向 1接项目 2发需求',
  `create_time` date DEFAULT NULL COMMENT '注册时间',
  `update_time` date DEFAULT NULL COMMENT '更新时间',
  `del_code` tinyint(1) DEFAULT NULL COMMENT '状态 0禁用 1正常',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1287590483908210732 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `user` */

insert  into `user`(`id`,`phone`,`nick_name`,`email`,`pwd`,`classify_id`,`tendency`,`create_time`,`update_time`,`del_code`) values (1287590483908210707,'15264382438','李先生','413541471@qq.com','b78bb582523a89da07ce348eb5e16d88',NULL,2,'2020-08-23','2020-08-25',1),(1287590483908210709,'15264382437','马先生','413541471@qq.com','c5a4e7e6882845ea7bb4d9462868219b',NULL,2,'2020-08-24','2020-08-25',1),(1287590483908210712,'15264382439','杨先生','413541473@qq.com','5d93ceb70e2bf5daa84ec3d0cd2c731a',NULL,2,'2020-08-29','2020-08-29',1),(1287590483908210713,'15264382433','胡先生','413541477@qq.com','5d93ceb70e2bf5daa84ec3d0cd2c731a',NULL,1,'2020-08-29','2020-08-29',1),(1287590483908210714,'15264382435','face','413541471@qq.com','e10adc3949ba59abbe56e057f20f883e',NULL,1,'2020-08-31','2020-09-02',1),(1287590483908210724,'15264382436','qwer','413541472@qq.com','e10adc3949ba59abbe56e057f20f883e',NULL,2,'2020-09-03','2020-09-03',1),(1287590483908210726,'15264382430','face','413541171@qq.com','202cb962ac59075b964b07152d234b70',NULL,1,'2020-09-03','2020-09-03',0),(1287590483908210728,'110120119','admin','423541471@qq.com','e10adc3949ba59abbe56e057f20f883e',NULL,2,'2020-09-03','2020-09-03',1),(1287590483908210729,'15264382447','边先生','2484721198@qq.com','e10adc3949ba59abbe56e057f20f883e',NULL,2,'2020-09-04','2020-09-04',1),(1287590483908210730,'15589314282','小毛','1124077442@qq.com','e10adc3949ba59abbe56e057f20f883e',NULL,2,'2020-09-04','2020-09-04',1),(1287590483908210731,'17862139660','VENOM','2295680625','358b8237d5369d5eedbc8f059c0ab094',NULL,1,'2020-09-07','2020-09-07',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
