/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : secondshop

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2020-01-02 13:04:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for collect_table
-- ----------------------------
DROP TABLE IF EXISTS `collect_table`;
CREATE TABLE `collect_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_id` int(11) DEFAULT NULL,
  `good_name` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collect_table
-- ----------------------------
INSERT INTO `collect_table` VALUES ('1', '4', '电脑', '5');
INSERT INTO `collect_table` VALUES ('2', '6', '上衣', '5');
INSERT INTO `collect_table` VALUES ('5', '6', '上衣', '6');
INSERT INTO `collect_table` VALUES ('6', '4', '电脑', '6');
INSERT INTO `collect_table` VALUES ('7', '6', '上衣', '7');
INSERT INTO `collect_table` VALUES ('8', '33', '英语口语入门', '6');

-- ----------------------------
-- Table structure for first_type_table
-- ----------------------------
DROP TABLE IF EXISTS `first_type_table`;
CREATE TABLE `first_type_table` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of first_type_table
-- ----------------------------
INSERT INTO `first_type_table` VALUES ('1001', '电子产品');
INSERT INTO `first_type_table` VALUES ('1002', '衣物');
INSERT INTO `first_type_table` VALUES ('1003', '运动');
INSERT INTO `first_type_table` VALUES ('1004', '图书');

-- ----------------------------
-- Table structure for good_table
-- ----------------------------
DROP TABLE IF EXISTS `good_table`;
CREATE TABLE `good_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `photo_url` varchar(200) DEFAULT NULL,
  `first_type_id` int(11) DEFAULT NULL,
  `second_type_id` int(11) DEFAULT NULL,
  `describe` varchar(500) DEFAULT NULL,
  `upload_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `prise` float DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `update` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of good_table
-- ----------------------------
INSERT INTO `good_table` VALUES ('2', '手机', '/statics/image/goods/test/2.jpg', '1001', '1001001', '手机', '2018-05-22 03:19:33', '1000', '0', '1', '2019-12-14 11:10:27');
INSERT INTO `good_table` VALUES ('3', '电脑', '/statics/image/goods/test/3.jpg', '1001', '1001002', '电脑', '2018-05-22 03:19:33', '1000', '0', '1', '2019-12-14 11:17:36');
INSERT INTO `good_table` VALUES ('4', '电脑', '/statics/image/goods/test/4.jpg', '1001', '1001002', '电脑', '2018-05-22 03:19:33', '1000', '0', '1', '2019-12-24 12:11:43');
INSERT INTO `good_table` VALUES ('5', '上衣', '/statics/image/goods/test/5.jpg', '1002', '1002001', '上衣', '2018-05-22 03:19:33', '1000', '0', '1', '2019-12-15 23:56:11');
INSERT INTO `good_table` VALUES ('6', '上衣', '/statics/image/goods/test/6.jpg', '1002', '1002001', '上衣', '2018-05-22 03:19:33', '1000', '0', '1', '2019-12-24 12:12:07');
INSERT INTO `good_table` VALUES ('7', '篮球', '/statics/image/goods/2/7/7QUev93ngdU.jpeg', '1001', '1001001', '', '2019-12-06 20:41:08', '0', '0', '2', '2019-12-06 22:35:43');
INSERT INTO `good_table` VALUES ('8', '', '/statics/image/goods/default/nophoto.png', '1001', '1001001', '', '2019-12-09 15:10:33', '0', '0', '4', '2019-12-15 18:32:00');
INSERT INTO `good_table` VALUES ('9', '红米', '/statics/image/goods/4/9/9FD5i5Igg9A.jpeg', '1001', '1001001', '', '2019-12-14 11:12:49', '1000', '0', '4', '2019-12-14 11:15:09');
INSERT INTO `good_table` VALUES ('12', '红米', '/statics/image/goods/7/12/12unWX3qGpvg.jpeg', '1001', '1001001', '新机没用两天', '2019-12-18 21:02:33', '0', '0', '7', '2019-12-18 21:05:31');
INSERT INTO `good_table` VALUES ('14', '办公电脑', '/statics/image/goods/7/14/14QEuEfOES5q.png', '1001', '1001002', '本人近期要换新电脑，因此对陪伴本人两年的台式电脑有意者可以联系本人进行交换。', '2019-12-27 14:02:35', '1000', '1', '7', '2019-12-27 14:02:50');
INSERT INTO `good_table` VALUES ('15', 'vivj手机', '/statics/image/goods/7/15/15gCMCqHcv4D.png', '1001', '1001001', '本人近期换了新手机，此手机八成新。', '2019-12-27 14:07:09', '500', '1', '7', '2019-12-27 14:07:18');
INSERT INTO `good_table` VALUES ('16', '联想笔记本电脑', '/statics/image/goods/7/16/16KLn2sdN6pv.png', '1001', '1001002', '配置有点偏低，不过打游戏不卡，有意者可以联系本人。', '2019-12-27 14:09:28', '1000', '1', '7', '2019-12-27 14:09:44');
INSERT INTO `good_table` VALUES ('17', '超薄平板', '/statics/image/goods/7/17/17BSpHSoJVrd.png', '1001', '1001003', '手感一流，配置也不错。有意可联系。', '2019-12-27 14:11:37', '1000', '1', '7', '2019-12-27 14:11:51');
INSERT INTO `good_table` VALUES ('18', '低音炮小音箱', '/statics/image/goods/7/18/18i9ctyOx38Y.png', '1001', '1001004', '声音响亮，操场必备。', '2019-12-27 14:13:14', '100', '1', '7', '2019-12-27 14:13:24');
INSERT INTO `good_table` VALUES ('19', '内存条配件', '/statics/image/goods/7/19/19xLaSNQYcwf.png', '1001', '1001005', '金士顿三代DDR3 8G，有了它不必担心电脑内存。', '2019-12-27 14:17:16', '200', '1', '7', '2019-12-27 14:17:25');
INSERT INTO `good_table` VALUES ('20', '液晶显示器', '/statics/image/goods/7/20/20Z6Auhqbph3.png', '1001', '1001006', '液晶显示器', '2019-12-27 14:18:07', '500', '1', '7', '2019-12-27 14:18:48');
INSERT INTO `good_table` VALUES ('21', '男上衣', '/statics/image/goods/7/21/21j8V18yxMi9.png', '1002', '1002001', '只穿过一次。', '2019-12-27 14:19:59', '50', '1', '7', '2019-12-27 14:20:18');
INSERT INTO `good_table` VALUES ('22', '女上衣', '/statics/image/goods/7/22/22IpyJxoG1dq.png', '1002', '1002001', '只穿过一次，免费赠送，先联系先得。', '2019-12-27 14:21:35', '0', '1', '7', '2019-12-27 14:21:45');
INSERT INTO `good_table` VALUES ('23', '男裤子', '/statics/image/goods/7/23/23BRaeGfWoZj.png', '1002', '1002002', '很担心', '2019-12-27 14:22:50', '10', '1', '7', '2019-12-27 14:23:08');
INSERT INTO `good_table` VALUES ('24', '渔夫帽', '/statics/image/goods/7/24/245OlA8oJRhx.png', '1002', '1002003', '渔夫帽', '2019-12-27 14:25:10', '30', '1', '7', '2019-12-27 14:25:20');
INSERT INTO `good_table` VALUES ('25', '鸭舌帽', '/statics/image/goods/7/25/25JpDAyzPLsd.png', '1002', '1002003', '', '2019-12-27 14:25:59', '48', '1', '7', '2019-12-27 14:26:42');
INSERT INTO `good_table` VALUES ('26', '保暖棉鞋', '/statics/image/goods/7/26/26cH3my4nT9l.png', '1002', '1002004', '冬天保暖', '2019-12-27 14:27:54', '180', '1', '7', '2019-12-27 14:28:04');
INSERT INTO `good_table` VALUES ('27', '篮球', '/statics/image/goods/7/27/27YVezdS3bcD.png', '1003', '1003001', '可以用其他运动器材交换。', '2019-12-27 14:29:17', '0', '1', '7', '2019-12-27 14:29:29');
INSERT INTO `good_table` VALUES ('28', '足球', '/statics/image/goods/7/28/28KLJm4DPrh4.png', '1003', '1003001', '有点破旧。', '2019-12-27 14:30:01', '50', '1', '7', '2019-12-27 14:30:09');
INSERT INTO `good_table` VALUES ('29', '滑板', '/statics/image/goods/7/29/296pPr3Ea6Vw.png', '1003', '1003002', '八成新', '2019-12-27 14:30:58', '50', '1', '7', '2019-12-27 14:31:05');
INSERT INTO `good_table` VALUES ('30', '死飞自行车', '/statics/image/goods/7/30/30t7rGtJgVwq.png', '1003', '1003003', '二手死飞', '2019-12-27 14:31:47', '380', '1', '7', '2019-12-27 14:31:55');
INSERT INTO `good_table` VALUES ('31', '瑜伽伸展环运动器材', '/statics/image/goods/7/31/31EB8N3Crf6h.png', '1003', '1003004', '可以用来练瑜伽', '2019-12-27 14:32:57', '80', '1', '7', '2019-12-27 14:34:10');
INSERT INTO `good_table` VALUES ('32', '读者期刊', '/statics/image/goods/7/32/324oiaEjHx6f.png', '1004', '1004001', '春季合集', '2019-12-27 14:36:05', '30', '1', '7', '2019-12-27 14:36:18');
INSERT INTO `good_table` VALUES ('33', '英语口语入门', '/statics/image/goods/7/33/33IBd31x4iHV.png', '1004', '1004002', '', '2019-12-27 14:37:39', '40', '1', '7', '2019-12-27 14:38:01');
INSERT INTO `good_table` VALUES ('34', '英语语法大全集', '/statics/image/goods/7/34/34Zc8fKGM7vZ.png', '1004', '1004002', '英语语法合集', '2019-12-27 14:39:00', '0', '1', '7', '2019-12-27 14:39:08');
INSERT INTO `good_table` VALUES ('35', '计算机一级一本通', '/statics/image/goods/7/35/35sNyDXuOh17.png', '1004', '1004003', '全国计算机等级考试一级一本通', '2019-12-27 14:40:21', '50', '1', '7', '2019-12-27 14:40:30');
INSERT INTO `good_table` VALUES ('36', '三体小说', '/statics/image/goods/7/36/36I3HiAsLXVI.png', '1004', '1004005', '科幻', '2019-12-27 14:41:32', '40', '1', '7', '2019-12-27 14:41:39');
INSERT INTO `good_table` VALUES ('37', '中国异闻录小说', '/statics/image/goods/7/37/37haLFDrlCWl.png', '1004', '1004005', '', '2019-12-27 14:42:37', '30', '1', '7', '2019-12-27 14:42:45');
INSERT INTO `good_table` VALUES ('38', '罗小黑战记漫画', '/statics/image/goods/7/38/38vbwBonRJyO.png', '1004', '1004006', '', '2019-12-27 14:43:25', '50', '0', '7', '2019-12-29 18:49:42');
INSERT INTO `good_table` VALUES ('39', '名侦探柯南彩色漫画', '/statics/image/goods/7/39/391yZf9U2utk.png', '1004', '1004006', '彩色，一套', '2019-12-27 14:44:36', '100', '1', '7', '2019-12-27 14:44:44');

-- ----------------------------
-- Table structure for image_table
-- ----------------------------
DROP TABLE IF EXISTS `image_table`;
CREATE TABLE `image_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of image_table
-- ----------------------------
INSERT INTO `image_table` VALUES ('1', '7', '73FkJgsgZXt.jpeg', '/statics/image/goods/2/7/73FkJgsgZXt.jpeg');
INSERT INTO `image_table` VALUES ('2', '7', '7FlL45FjNyU.jpeg', '/statics/image/goods/2/7/7FlL45FjNyU.jpeg');
INSERT INTO `image_table` VALUES ('3', '9', '9SikAVQAuNj.jpeg', '/statics/image/goods/4/9/9SikAVQAuNj.jpeg');
INSERT INTO `image_table` VALUES ('4', '9', '9Fj2fboctLd.jpeg', '/statics/image/goods/4/9/9Fj2fboctLd.jpeg');
INSERT INTO `image_table` VALUES ('5', '10', '10qmZP4Vpwpi.png', '/statics/image/goods/6/10/10qmZP4Vpwpi.png');
INSERT INTO `image_table` VALUES ('6', '11', '11cml6CqsyLd.png', '/statics/image/goods/6/11/11cml6CqsyLd.png');

-- ----------------------------
-- Table structure for order_table
-- ----------------------------
DROP TABLE IF EXISTS `order_table`;
CREATE TABLE `order_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_name` varchar(200) DEFAULT NULL,
  `seller` varchar(50) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `customer` varchar(50) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `good_id` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `submit_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `end_date` datetime DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_table
-- ----------------------------
INSERT INTO `order_table` VALUES ('1', '手机', 'admin', '1', '文', '3', '1', '1000', '2019-12-06 22:39:14', '2019-12-06 22:39:21', '3');
INSERT INTO `order_table` VALUES ('3', '红米', 'wen', '4', '文', '3', '9', '1000', '2019-12-14 11:15:09', null, '2');
INSERT INTO `order_table` VALUES ('4', '电脑', 'admin', '1', 'wen', '4', '3', '1000', '2019-12-14 11:17:36', null, '2');
INSERT INTO `order_table` VALUES ('5', '上衣', 'admin', '1', '文天', '5', '5', '1000', '2019-12-15 23:56:11', null, '2');
INSERT INTO `order_table` VALUES ('6', '电脑', 'admin', '1', '王强', '7', '4', '1000', '2019-12-24 12:11:43', '2019-12-24 12:11:49', '3');
INSERT INTO `order_table` VALUES ('7', '上衣', 'admin', '1', '王强', '7', '6', '1000', '2019-12-24 12:12:07', '2019-12-24 12:12:10', '3');
INSERT INTO `order_table` VALUES ('8', '罗小黑战记漫画', '王强', '7', '照', '6', '38', '50', '2019-12-29 18:49:42', null, '2');

-- ----------------------------
-- Table structure for reply_table
-- ----------------------------
DROP TABLE IF EXISTS `reply_table`;
CREATE TABLE `reply_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `review_id` int(11) DEFAULT NULL,
  `from_user` varchar(255) DEFAULT NULL,
  `from_user_id` int(11) DEFAULT NULL,
  `to_user` varchar(255) DEFAULT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '消息状态表；0：表示未读；1：表示已读。',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply_table
-- ----------------------------
INSERT INTO `reply_table` VALUES ('1', '3', '文', '3', '文', '3', '大大', '2019-12-14 11:14:42', '1');
INSERT INTO `reply_table` VALUES ('2', '2', '文', '3', 'wen', '4', '无人访问2', '2019-12-14 11:14:55', '1');
INSERT INTO `reply_table` VALUES ('3', '4', '王强', '7', '王强', '7', '还行', '2019-12-18 21:00:09', '0');

-- ----------------------------
-- Table structure for review_table
-- ----------------------------
DROP TABLE IF EXISTS `review_table`;
CREATE TABLE `review_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_id` int(11) DEFAULT NULL,
  `from_user_id` int(11) DEFAULT NULL,
  `from_user` varchar(255) DEFAULT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `to_user` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '消息状态；0：表示未读；1：表示已读。',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of review_table
-- ----------------------------
INSERT INTO `review_table` VALUES ('1', '2', '4', 'wen', '1', null, '2133', '2019-12-09 15:09:27', '0');
INSERT INTO `review_table` VALUES ('2', '9', '4', 'wen', '4', null, '2133', '2019-12-14 11:13:50', '0');
INSERT INTO `review_table` VALUES ('3', '9', '3', '文', '4', null, '瓦大大', '2019-12-14 11:14:31', '0');
INSERT INTO `review_table` VALUES ('4', '4', '7', '王强', '1', null, '好用吗', '2019-12-18 20:59:15', '0');
INSERT INTO `review_table` VALUES ('5', '12', '7', '王强', '7', null, '内存多大', '2019-12-18 21:03:10', '0');
INSERT INTO `review_table` VALUES ('6', '37', '6', '照', '7', null, '好书', '2019-12-30 16:33:34', '0');

-- ----------------------------
-- Table structure for role_table
-- ----------------------------
DROP TABLE IF EXISTS `role_table`;
CREATE TABLE `role_table` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_table
-- ----------------------------
INSERT INTO `role_table` VALUES ('101', 'admin', '管理员');
INSERT INTO `role_table` VALUES ('102', 'user', '用户');

-- ----------------------------
-- Table structure for second_type_table
-- ----------------------------
DROP TABLE IF EXISTS `second_type_table`;
CREATE TABLE `second_type_table` (
  `id` int(11) NOT NULL,
  `first_type_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of second_type_table
-- ----------------------------
INSERT INTO `second_type_table` VALUES ('1001001', '1001', '手机');
INSERT INTO `second_type_table` VALUES ('1001002', '1001', '电脑');
INSERT INTO `second_type_table` VALUES ('1001003', '1001', '平板');
INSERT INTO `second_type_table` VALUES ('1001004', '1001', '音箱');
INSERT INTO `second_type_table` VALUES ('1001005', '1001', '配件');
INSERT INTO `second_type_table` VALUES ('1001006', '1001', '显示器');
INSERT INTO `second_type_table` VALUES ('1002001', '1002', '上衣');
INSERT INTO `second_type_table` VALUES ('1002002', '1002', '裤子');
INSERT INTO `second_type_table` VALUES ('1002003', '1002', '帽子');
INSERT INTO `second_type_table` VALUES ('1002004', '1002', '鞋子');
INSERT INTO `second_type_table` VALUES ('1003001', '1003', '球类');
INSERT INTO `second_type_table` VALUES ('1003002', '1003', '滑板');
INSERT INTO `second_type_table` VALUES ('1003003', '1003', '自行车');
INSERT INTO `second_type_table` VALUES ('1003004', '1003', '其他器材');
INSERT INTO `second_type_table` VALUES ('1004001', '1004', '期刊');
INSERT INTO `second_type_table` VALUES ('1004002', '1004', '英语');
INSERT INTO `second_type_table` VALUES ('1004003', '1004', '计算机');
INSERT INTO `second_type_table` VALUES ('1004005', '1004', '小说');
INSERT INTO `second_type_table` VALUES ('1004006', '1004', '漫画');

-- ----------------------------
-- Table structure for status_table
-- ----------------------------
DROP TABLE IF EXISTS `status_table`;
CREATE TABLE `status_table` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of status_table
-- ----------------------------

-- ----------------------------
-- Table structure for user_table
-- ----------------------------
DROP TABLE IF EXISTS `user_table`;
CREATE TABLE `user_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `register_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_table
-- ----------------------------
INSERT INTO `user_table` VALUES ('1', 'admin', null, '372789833@qq.com', 'admin', '101', null, '101', '1', '2019-06-10 11:23:14', '4');
INSERT INTO `user_table` VALUES ('3', '文', '13610123100', '372789844@qq.com', '6bf2ef748b4d6bd5a2cc2146d184097d', '101', '/statics/image/photos/3/3CgccYvAQPO.jpeg', '102', '男', '2019-12-06 22:37:11', '4');
INSERT INTO `user_table` VALUES ('4', 'wen', '15913510263', '372789855@qq.com', '0a97c6fc3c2380133d92fd6a28eeae1f', 'gC2DG', '/statics/image/photos/default/default.png', '102', '男', '2019-12-09 15:09:09', '5');
INSERT INTO `user_table` VALUES ('5', '文天', '13659709649', '372789866@qq.com', 'bef8ae6b1dd65a843ba9381e15646a00', 'qtceP', '/statics/image/photos/default/default.png', '101', '男', '2019-12-15 17:40:23', '4');
INSERT INTO `user_table` VALUES ('6', '照', '13610123111', '372789877@qq.com', 'b7223bbae33321492811de89a735a7bd', '1HU9M', '/statics/image/photos/6/6YlaoH552S6.jpeg', '102', '男', '2019-12-18 13:52:49', '4');
INSERT INTO `user_table` VALUES ('7', '王强', '15015567206', '2447365596@qq.com', '8221e7858ff20d549404d8fd1037969b', 'bPIGI', '/statics/image/photos/7/7EPNM7sngXn.jpeg', '102', '男', '2019-12-18 20:58:17', '4');
INSERT INTO `user_table` VALUES ('8', '文', '13610123188', '372789893@qq.com', 'f2d9b2896404012ba19e8c8d8834e5c8', 'eSK7L', '/statics/image/photos/default/default.png', '102', '男', '2019-12-31 18:07:08', '4');
INSERT INTO `user_table` VALUES ('9', '文', '13610123199', '372789593@qq.com', '51a5c99fcf25851df47076a2d4c4e52c', 'aqMXF', '/statics/image/photos/default/default.png', '102', '男', '2019-12-31 18:07:32', '4');
