/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : cbh_blog

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2018-01-09 15:11:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_article
-- ----------------------------
DROP TABLE IF EXISTS `tb_article`;
CREATE TABLE `tb_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `content` text NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_article
-- ----------------------------
INSERT INTO `tb_article` VALUES ('1', '春1', 'cbh', '2018-01-09 07:07:43', '我住浦东。\r\n春天的时候，我在唐镇临街的路边开了一家服装店。\r\n店刚开张的时候，生意并不好。我心里很着急，脾气自然也好不到哪里去了。\r\n我的门口，经常走过一对打扫卫生的老夫妇。很多时候，他们一个人推着车，一个人打扫着马路，一路走过去。他们打扫后扬起的灰尘，常常令我厌恶。我厌恶店里的生意差，如同厌恶他们扫起的灰尘。', '1');
INSERT INTO `tb_article` VALUES ('3', '秋1', '陈邦豪', '2018-01-09 07:11:29', '以至于有一天，那个老头拿着一个空杯子，怯生生地走近我的门口。说：“可以让我倒杯热水吗？我老太婆她肚子有些疼。”我冷冷地看着他，冷冷地说：“对不起，没有热水。”老头无奈地看着我，无奈地走了。老头走向不远处，那个蹲在那里捂着肚子的老太婆的背影有些沉闷，有些苍白。', '0');
INSERT INTO `tb_article` VALUES ('4', '夏1', '大大', '2018-01-09 07:11:35', '我的心，隐隐地有些不忍。', '0');
INSERT INTO `tb_article` VALUES ('5', '冬一', '十大', '2018-01-09 07:11:39', '老婆来店里看我。\r\n依老婆的本意，她并不希望我开什么店。她还是希望我本本分分地上一个班。而我，终是有些不甘寂寞，不撞南墙不回头。\r\n我把拒绝给老头提供热水的事说给她听。事实上，我是有热水的。\r\n老婆圆瞪着眼，看我，说：“你不该这样的。一点热水，这么小的事儿。”\r\n我叹一口气，说：“是的，我做错了。老头离开我的店时，我已生出悔意。我甚至想过喊住老头，但我终究下不了这个决心。”\r\n其时已近中午，我看到那对老夫妇，他们坐在不远处的小板凳上，正拿出饭盒、面包，还有两只塑料杯子。看起来，他们是要吃午饭了吧。\r\n老婆朝我努了努嘴，眼神落在了角落里的热水瓶上。我明白了。我鼓起勇气，打开门，朝着他们走了过去。\r\n我到了他们跟前。他们看到我有些慌张，以为是做了什么不好的事情。\r\n我说：“我给你们拿来了热水。喝点热水，对胃会好一些。”我打开了热水瓶，热水倒在杯子里，冒出暖暖的热气。热气缓缓地上扬。\r\n他们说：“谢谢你。”还有些诚惶诚恐，有些不敢相信似的。\r\n我笑笑，说：“没关系。”\r\n我还说：“以后，需要热水了，随时来我店里倒。”', '0');
INSERT INTO `tb_article` VALUES ('6', '冬2', '啊啊爱的', '2018-01-09 07:11:45', '店里原本只有一个热水瓶。\r\n我又买了一个，现在有两个了。\r\n有时，老头或是老太，他们会来我店里倒水。有时我会给他们倒好水，有客人在的时候，就会让他们自己去倒。\r\n老头或是老太走出去的时候，也许是碰到了路过的需要倒热水的行人。\r\n一天，一个男人进来，问我：“请问，这里有热水吗？”我愣了一下，刚想回绝，男人又说：“我刚才看到一个老头，从你这里倒了热水出来。”我拍了拍脑袋，说：“对，对。”\r\n我给男人的杯子倒满了热水。男人连声说着：“谢谢，谢谢。”\r\n男人走出去。门口，站着一个怀孕的女人。男人把热水递给女人喝，女人缓缓地喝着水。男人女人回过头，还朝我甜甜地一笑。我也微笑，微笑地看着男人小心地搀着女人离去。', '0');
INSERT INTO `tb_article` VALUES ('7', '冬3', 'vvv', '2018-01-09 07:11:50', '店里原本只有一个热水瓶。\r\n我又买了一个，现在有两个了。\r\n有时，老头或是老太，他们会来我店里倒水。有时我会给他们倒好水，有客人在的时候，就会让他们自己去倒。\r\n老头或是老太走出去的时候，也许是碰到了路过的需要倒热水的行人。\r\n一天，一个男人进来，问我：“请问，这里有热水吗？”我愣了一下，刚想回绝，男人又说：“我刚才看到一个老头，从你这里倒了热水出来。”我拍了拍脑袋，说：“对，对。”\r\n我给男人的杯子倒满了热水。男人连声说着：“谢谢，谢谢。”\r\n男人走出去。门口，站着一个怀孕的女人。男人把热水递给女人喝，女人缓缓地喝着水。男人女人回过头，还朝我甜甜地一笑。我也微笑，微笑地看着男人小心地搀着女人离去。', '0');
INSERT INTO `tb_article` VALUES ('8', '冬4', '对对对', '2018-01-09 07:11:55', '店里原本只有一个热水瓶。\r\n我又买了一个，现在有两个了。\r\n有时，老头或是老太，他们会来我店里倒水。有时我会给他们倒好水，有客人在的时候，就会让他们自己去倒。\r\n老头或是老太走出去的时候，也许是碰到了路过的需要倒热水的行人。\r\n一天，一个男人进来，问我：“请问，这里有热水吗？”我愣了一下，刚想回绝，男人又说：“我刚才看到一个老头，从你这里倒了热水出来。”我拍了拍脑袋，说：“对，对。”\r\n我给男人的杯子倒满了热水。男人连声说着：“谢谢，谢谢。”\r\n男人走出去。门口，站着一个怀孕的女人。男人把热水递给女人喝，女人缓缓地喝着水。男人女人回过头，还朝我甜甜地一笑。我也微笑，微笑地看着男人小心地搀着女人离去。', '0');
INSERT INTO `tb_article` VALUES ('9', '冬6', '啊啊啊', '2018-01-09 07:12:03', '店里原本只有一个热水瓶。\r\n我又买了一个，现在有两个了。\r\n有时，老头或是老太，他们会来我店里倒水。有时我会给他们倒好水，有客人在的时候，就会让他们自己去倒。\r\n老头或是老太走出去的时候，也许是碰到了路过的需要倒热水的行人。\r\n一天，一个男人进来，问我：“请问，这里有热水吗？”我愣了一下，刚想回绝，男人又说：“我刚才看到一个老头，从你这里倒了热水出来。”我拍了拍脑袋，说：“对，对。”\r\n我给男人的杯子倒满了热水。男人连声说着：“谢谢，谢谢。”\r\n男人走出去。门口，站着一个怀孕的女人。男人把热水递给女人喝，女人缓缓地喝着水。男人女人回过头，还朝我甜甜地一笑。我也微笑，微笑地看着男人小心地搀着女人离去。', '0');
INSERT INTO `tb_article` VALUES ('10', '冬7', ' 啊', '2018-01-09 07:12:09', '店里原本只有一个热水瓶。\r\n我又买了一个，现在有两个了。\r\n有时，老头或是老太，他们会来我店里倒水。有时我会给他们倒好水，有客人在的时候，就会让他们自己去倒。\r\n老头或是老太走出去的时候，也许是碰到了路过的需要倒热水的行人。\r\n一天，一个男人进来，问我：“请问，这里有热水吗？”我愣了一下，刚想回绝，男人又说：“我刚才看到一个老头，从你这里倒了热水出来。”我拍了拍脑袋，说：“对，对。”\r\n我给男人的杯子倒满了热水。男人连声说着：“谢谢，谢谢。”\r\n男人走出去。门口，站着一个怀孕的女人。男人把热水递给女人喝，女人缓缓地喝着水。男人女人回过头，还朝我甜甜地一笑。我也微笑，微笑地看着男人小心地搀着女人离去。', '0');
INSERT INTO `tb_article` VALUES ('11', '冬8', '咕咕咕咕', '2018-01-09 07:12:14', '店里原本只有一个热水瓶。\r\n我又买了一个，现在有两个了。\r\n有时，老头或是老太，他们会来我店里倒水。有时我会给他们倒好水，有客人在的时候，就会让他们自己去倒。\r\n老头或是老太走出去的时候，也许是碰到了路过的需要倒热水的行人。\r\n一天，一个男人进来，问我：“请问，这里有热水吗？”我愣了一下，刚想回绝，男人又说：“我刚才看到一个老头，从你这里倒了热水出来。”我拍了拍脑袋，说：“对，对。”\r\n我给男人的杯子倒满了热水。男人连声说着：“谢谢，谢谢。”\r\n男人走出去。门口，站着一个怀孕的女人。男人把热水递给女人喝，女人缓缓地喝着水。男人女人回过头，还朝我甜甜地一笑。我也微笑，微笑地看着男人小心地搀着女人离去。', '0');
INSERT INTO `tb_article` VALUES ('12', '冬一10', '啊啊', '2018-01-09 07:12:26', '店里原本只有一个热水瓶。\r\n我又买了一个，现在有两个了。\r\n有时，老头或是老太，他们会来我店里倒水。有时我会给他们倒好水，有客人在的时候，就会让他们自己去倒。\r\n老头或是老太走出去的时候，也许是碰到了路过的需要倒热水的行人。\r\n一天，一个男人进来，问我：“请问，这里有热水吗？”我愣了一下，刚想回绝，男人又说：“我刚才看到一个老头，从你这里倒了热水出来。”我拍了拍脑袋，说：“对，对。”\r\n我给男人的杯子倒满了热水。男人连声说着：“谢谢，谢谢。”\r\n男人走出去。门口，站着一个怀孕的女人。男人把热水递给女人喝，女人缓缓地喝着水。男人女人回过头，还朝我甜甜地一笑。我也微笑，微笑地看着男人小心地搀着女人离去。', '2');
INSERT INTO `tb_article` VALUES ('13', '冬一11', '啊 ', '2018-01-09 08:28:26', '啦啦啦啦啦啦啦啦啦', '0');
INSERT INTO `tb_article` VALUES ('14', '冬一12', '咕咕咕咕', '2018-01-09 08:28:31', '啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦', '0');
INSERT INTO `tb_article` VALUES ('15', '冬一13', '对对对', '2018-01-09 08:28:36', '啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦', '1');
INSERT INTO `tb_article` VALUES ('16', '冬一14', '擦擦擦', '2018-01-09 08:28:42', '啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦', '0');
INSERT INTO `tb_article` VALUES ('17', '冬一15', 'ccc', '2018-01-09 08:28:47', '啦啦啦啦啦啦啦啦啦', '0');
INSERT INTO `tb_article` VALUES ('18', '冬18', 'bbb', '2018-01-09 08:28:51', '啦啦啦啦啦啦啦啦啦啦啦啦', '0');
INSERT INTO `tb_article` VALUES ('23', '冬20', 'ddd', '2018-01-09 01:31:46', '我的店里准备了5个热水瓶。每天一开店，我的首要任务就是把那几个热水瓶给倒满。\r\n越来越多走过的行人，会到我的店里来倒水。只因我在门口，用A4纸打印了几个大字：免费倒热水。为了让他们倒水方便，我还将5个热水瓶，都放在了门口。\r\n店里的生意渐渐好起来了。\r\n我一个人开始有些忙不过来，于是我请了一个人来帮忙。老婆来店里看我，脸上写满惊讶，连连说：“看来你这店还真是开对了。”\r\n我想说：“你没看见，我这边的门口，被打扫得特别干净吗？自然会有很多客人光顾了。”\r\n我其实还想说：“还有，被打扫得无比干净的心灵。”\r\n准备说话的时候，我的眼睛望向落地玻璃窗外，那对老头老太正缓缓地打扫着走过去。\r\n选自《浦东时报》', '1');
INSERT INTO `tb_article` VALUES ('24', 'cbh', '111', '2018-01-09 05:51:07', 'cbh', '2');

-- ----------------------------
-- Table structure for tb_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE `tb_comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_comment
-- ----------------------------
INSERT INTO `tb_comment` VALUES ('1', '111', '6666', '1');
INSERT INTO `tb_comment` VALUES ('2', '222', 'fufufufuf', '12');
INSERT INTO `tb_comment` VALUES ('3', '333', 'fffff', '12');
INSERT INTO `tb_comment` VALUES ('15', '8lou', '3666', '15');
INSERT INTO `tb_comment` VALUES ('16', '爱', '111', '24');
INSERT INTO `tb_comment` VALUES ('17', '我爱老师', '100', '24');
INSERT INTO `tb_comment` VALUES ('18', 'sdfgsdfg', '123123', '23');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `head_pic` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', '100', '123', '9693@qq.com', '15869630178', './img/head_pic/100.png');
INSERT INTO `tb_user` VALUES ('2', '111', '123', '2@qq.com', '13736325789', './img/head_pic/111.png');
INSERT INTO `tb_user` VALUES ('3', '222', '123', '2@qq.com', '13736325789', '');
INSERT INTO `tb_user` VALUES ('4', '333', '123', '4@qq.com', '13736325789', '');
INSERT INTO `tb_user` VALUES ('5', '555', '123', '5@qq.com', '13736325789', '');
INSERT INTO `tb_user` VALUES ('6', '666', '123', '6@qq.com', '13736325789', '');
INSERT INTO `tb_user` VALUES ('7', '777', '123', '7@qq.com', '13736325789', './img/head_pic/777.jpg');
INSERT INTO `tb_user` VALUES ('8', '888', '123', '8@qq.com', '13736325789', './img/head_pic/888.png');
INSERT INTO `tb_user` VALUES ('9', '9999', '123', '2@qq.com', '13736325789', './img/head_pic/9999.jpg');
INSERT INTO `tb_user` VALUES ('10', '12345', '123', '2323@qq.com', '13587593691', './img/test.jpg');
INSERT INTO `tb_user` VALUES ('11', '6666666', '11r', '11@qq.com', '15869630178', './img/test.jpg');
INSERT INTO `tb_user` VALUES ('12', '99999', '123', '12@qq.com', '15869630178', './img/test.jpg');
INSERT INTO `tb_user` VALUES ('13', '10101010', '随风倒', '9693@qq.com', '15869630178', './img/test.jpg');
INSERT INTO `tb_user` VALUES ('14', '10101010', '飓风的', '96930680@qq.com', '15869630178', './img/test.jpg');
INSERT INTO `tb_user` VALUES ('15', '100', '123456', '999@qq.com', '15869630178', './img/head_pic/100.png');
INSERT INTO `tb_user` VALUES ('16', '100', '123', 'ZZ@qq.com', '15869630178', './img/head_pic/100.png');
INSERT INTO `tb_user` VALUES ('17', '100', 'cbh', '11@qq.com', '15869630178', './img/head_pic/100.png');
INSERT INTO `tb_user` VALUES ('18', '100', '123', '99@qq.com', '15869630178', './img/test.jpg');
INSERT INTO `tb_user` VALUES ('19', '123123', 'qwe123', 'aaa@qq.com', '15158560665', './img/head_pic/123123.jpg');
DROP TRIGGER IF EXISTS `insert`;
DELIMITER ;;
CREATE TRIGGER `insert` AFTER INSERT ON `tb_comment` FOR EACH ROW update tb_article set num=num+1 where id=new.article_id
;;
DELIMITER ;
