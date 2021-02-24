/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.20-log : Database - db_xinxi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_xinxi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_xinxi`;

/*Table structure for table `need` */

DROP TABLE IF EXISTS `need`;

CREATE TABLE `need` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '需求编号',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系方式',
  `describe` varchar(200) DEFAULT NULL COMMENT '描述',
  `classify` varchar(20) DEFAULT NULL COMMENT '分类',
  `name` varchar(20) DEFAULT NULL COMMENT '用户姓名',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `address` varchar(50) DEFAULT NULL COMMENT '地址',
  `price` varchar(20) DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='需求表';

/*Data for the table `need` */

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `need_type` */

/*Table structure for table `store` */

DROP TABLE IF EXISTS `store`;

CREATE TABLE `store` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '店铺id',
  `name` varchar(20) DEFAULT NULL COMMENT '店铺名称',
  `address` varchar(50) DEFAULT NULL COMMENT '店铺地址',
  `time` int(11) DEFAULT NULL COMMENT '接单次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='店铺表';

/*Data for the table `store` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `pwd` varchar(32) DEFAULT NULL COMMENT '密码',
  `classify_id` varchar(20) DEFAULT NULL COMMENT '分类',
  `tendency` tinyint(1) DEFAULT NULL COMMENT '注册倾向',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `user` */

insert  into `user`(`id`,`phone`,`pwd`,`classify_id`,`tendency`) values (1,'18560368953','c20ad4d76fe97759aa27a0c99bff6710','1',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
