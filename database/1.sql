/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : javamvcs26667xyesjypt

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2026-03-05 23:52:03
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admins`
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '帐号',
  `pwd` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='管理员';

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for `dingdanpingjia`
-- ----------------------------
DROP TABLE IF EXISTS `dingdanpingjia`;
CREATE TABLE `dingdanpingjia` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jiaoyidingdanid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '交易订单id',
  `wupinbianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '物品编号',
  `wupinmingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '物品名称',
  `fenlei` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类',
  `wupintupian` text NOT NULL COMMENT '物品图片',
  `chushoujiage` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '出手价格',
  `faburen` varchar(64) NOT NULL DEFAULT '' COMMENT '发布人',
  `pingfen` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '评分',
  `pingjiadengji` varchar(50) NOT NULL DEFAULT '' COMMENT '评价等级',
  `pingyu` text NOT NULL COMMENT '评语',
  `pingjiayonghu` varchar(64) NOT NULL DEFAULT '' COMMENT '评价用户',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评价时间',
  PRIMARY KEY (`id`),
  KEY `jiaoyidingdan_index` (`jiaoyidingdanid`),
  KEY `fenlei_index` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='订单评价';

-- ----------------------------
-- Records of dingdanpingjia
-- ----------------------------
INSERT INTO `dingdanpingjia` VALUES ('1', '1', '03052322202054', '华为笔记本', '1', 'upload/20260305/36341772724162355.png,upload/20260305/22701772724165856.png', '3500.00', '001', '9.00', '好评', '！！', '001', '2026-03-05 23:43:12');

-- ----------------------------
-- Table structure for `gonggaoxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `gonggaoxinxi`;
CREATE TABLE `gonggaoxinxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '编号',
  `biaoti` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `liulanliang` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  `faburen` varchar(64) NOT NULL DEFAULT '' COMMENT '发布人',
  `neirong` longtext NOT NULL COMMENT '内容',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='公告信息';

-- ----------------------------
-- Records of gonggaoxinxi
-- ----------------------------
INSERT INTO `gonggaoxinxi` VALUES ('1', '03052329501176', '闲置物品交易', '0', 'admin', '<p><span class=\"text_xNrKb J-lemma-content-lemma-text\" data-text=\"true\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap-mode: wrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\">随着消费观念转变，闲置物品交易市场规模逐步扩大。以努比亚M153工程机为例，二手平台价格从12999元上涨至16000元，溢价超23%。部分投机者通过批量抢购、囤货转卖形成短线炒卖链条，租赁市场中还出现高风险金融操作等异化现象。豆包团队为防范滥用风险限制自动化操作能力后，市场出现手动降低操作频率、技术论坛提供解封教程等应对方式。部分二手交易卖家将豆包AI自动化能力包装出售，暗示其可用于批量注册、签到等场景。Root破解行为虽可能规避限制，但会导致设备丧失保修并引发系统安全问题</span><span class=\"text_xNrKb J-lemma-content-lemma-text\" data-text=\"true\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap-mode: wrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\">。</span></p>', '2026-03-05 23:30:04');
INSERT INTO `gonggaoxinxi` VALUES ('2', '03052330061462', '技术风险与应对', '0', 'admin', '<p><span class=\"text_xNrKb J-lemma-content-lemma-text\" data-text=\"true\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap-mode: wrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\">如豆包手机二手交易中，用户通过Root操作获取超级权限后，因系统环境变动可能导致豆包AI闪退，且普通手机Root后难以保证豆包AI的适配性。Root会使设备直接丧失官方保修权益，既可能造成系统运行不稳、提升恶意软件入侵的概率，还会对支付、金融等关键功能的正常使用产生负面影响等</span><span class=\"text_xNrKb J-lemma-content-lemma-text\" data-text=\"true\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap-mode: wrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\">。</span></p>', '2026-03-05 23:30:19');
INSERT INTO `gonggaoxinxi` VALUES ('3', '03052330203533', '二手交易', '0', 'admin', '<div class=\"para_iF7OU content_iPjRN MARK_MODULE\" data-tag=\"paragraph\" data-uuid=\"i85qol3k6w\" data-idx=\"4-2\" style=\"box-sizing: content-box; margin: 0px 0px 15px; padding: 0px; font-size: 14px; overflow-wrap: break-word; clear: both; color: rgb(51, 51, 51); line-height: 24px; zoom: 1; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; text-wrap-mode: wrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\"><span class=\"text_xNrKb J-lemma-content-lemma-text\" data-text=\"true\" style=\"box-sizing: content-box; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important; margin: 0px; padding: 0px; position: relative;\">如豆包手机二手交易中，用户通过Root操作获取超级权限后，因系统环境变动可能导致豆包AI闪退，且普通手机Root后难以保证豆包AI的适配性。Root会使设备直接丧失官方保修权益，既可能造成系统运行不稳、提升恶意软件入侵的概率，还会对支付、金融等关键功能的正常使用产生负面影响等</span><span class=\"text_xNrKb J-lemma-content-lemma-text\" data-text=\"true\" style=\"box-sizing: content-box; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important; margin: 0px; padding: 0px; position: relative;\">。</span></div><div class=\"para_iF7OU content_iPjRN MARK_MODULE\" data-tag=\"paragraph\" data-uuid=\"i85qol3ko7\" data-idx=\"4-3\" style=\"box-sizing: content-box; margin: 0px 0px 15px; padding: 0px; font-size: 14px; overflow-wrap: break-word; clear: both; color: rgb(51, 51, 51); line-height: 24px; zoom: 1; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; text-wrap-mode: wrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\"><span class=\"text_xNrKb J-lemma-content-lemma-text\" data-text=\"true\" style=\"box-sizing: content-box; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important; margin: 0px; padding: 0px; position: relative;\">针对豆包手机二手交易的破解行为，Root操作直接导致设备官方保修失效，且可能违反用户协议中的技术保护条款。豆包系统所依赖的“视觉识别+模拟触控”方案，虽能实现跨应用操作，但极易触发</span><span class=\"text_xNrKb J-lemma-content-lemma-text\" data-text=\"true\" style=\"box-sizing: content-box; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important; margin: 0px; padding: 0px; position: relative;\"><a class=\"innerLink_mk4V2\" href=\"https://baike.baidu.com/item/%E5%BE%AE%E4%BF%A1/3905974?fromModule=lemma_inlink\" target=\"_blank\" data-from-module=\"\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; color: rgb(19, 110, 194); animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\">微信</a></span><span class=\"text_xNrKb J-lemma-content-lemma-text\" data-text=\"true\" style=\"box-sizing: content-box; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important; margin: 0px; padding: 0px; position: relative;\">等主流应用的风控机制</span><span class=\"text_xNrKb J-lemma-content-lemma-text\" data-text=\"true\" style=\"box-sizing: content-box; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important; margin: 0px; padding: 0px; position: relative;\">。</span></div><p><br/></p>', '2026-03-05 23:30:37');

-- ----------------------------
-- Table structure for `huifusixin`
-- ----------------------------
DROP TABLE IF EXISTS `huifusixin`;
CREATE TABLE `huifusixin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sixinmaijiaid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '私信卖家id',
  `wupinbianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '物品编号',
  `wupinmingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '物品名称',
  `fenlei` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类',
  `faburen` varchar(64) NOT NULL DEFAULT '' COMMENT '发布人',
  `sixinneirong` text NOT NULL COMMENT '私信内容',
  `sixinmaijia` varchar(64) NOT NULL DEFAULT '' COMMENT '私信买家',
  `huifuneirong` text NOT NULL COMMENT '回复内容',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '回复时间',
  PRIMARY KEY (`id`),
  KEY `sixinmaijia_index` (`sixinmaijiaid`),
  KEY `fenlei_index` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='回复私信';

-- ----------------------------
-- Records of huifusixin
-- ----------------------------
INSERT INTO `huifusixin` VALUES ('1', '1', '03052322202054', '华为笔记本', '1', '001', '你好！！！', '002', '你好！！！', '2026-03-05 23:41:53');

-- ----------------------------
-- Table structure for `jiaoyidingdan`
-- ----------------------------
DROP TABLE IF EXISTS `jiaoyidingdan`;
CREATE TABLE `jiaoyidingdan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wupinxinxiid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '物品信息id',
  `wupinbianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '物品编号',
  `wupinmingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '物品名称',
  `fenlei` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类',
  `wupintupian` text NOT NULL COMMENT '物品图片',
  `chushoujiage` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '出手价格',
  `xinjiudu` varchar(50) NOT NULL DEFAULT '' COMMENT '新旧度',
  `faburen` varchar(64) NOT NULL DEFAULT '' COMMENT '发布人',
  `dingdanbianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '订单编号',
  `goumairenxingming` varchar(50) NOT NULL DEFAULT '' COMMENT '购买人姓名',
  `lianxifangshi` varchar(50) NOT NULL DEFAULT '' COMMENT '联系方式',
  `dingdanzhuangtai` varchar(50) NOT NULL DEFAULT '' COMMENT '订单状态',
  `dingdanbeizhu` text NOT NULL COMMENT '订单备注',
  `xiadanyonghu` varchar(64) NOT NULL DEFAULT '' COMMENT '下单用户',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '下单时间',
  `iszf` varchar(10) NOT NULL DEFAULT '否' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  KEY `wupinxinxi_index` (`wupinxinxiid`),
  KEY `fenlei_index` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='交易订单';

-- ----------------------------
-- Records of jiaoyidingdan
-- ----------------------------
INSERT INTO `jiaoyidingdan` VALUES ('1', '2', '03052322202054', '华为笔记本', '1', 'upload/20260305/36341772724162355.png,upload/20260305/22701772724165856.png', '3500.00', '九九新', '001', '03052337591301', '小芳', '16501560336', '已评价', '！！！', '002', '2026-03-05 23:38:01', '是');

-- ----------------------------
-- Table structure for `liulanjilu`
-- ----------------------------
DROP TABLE IF EXISTS `liulanjilu`;
CREATE TABLE `liulanjilu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `neirongid` longtext NOT NULL COMMENT '内容id',
  `biao` varchar(50) NOT NULL DEFAULT '' COMMENT '表',
  `fenlei` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类',
  `biaoti` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `xingming` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `liulanyonghu` varchar(64) NOT NULL DEFAULT '' COMMENT '浏览用户',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '浏览时间',
  PRIMARY KEY (`id`),
  KEY `fenlei_index` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COMMENT='浏览记录';

-- ----------------------------
-- Records of liulanjilu
-- ----------------------------
INSERT INTO `liulanjilu` VALUES ('1', '2', 'wupinxinxi', '1', '华为笔记本', '小芳', '002', '2026-03-05 23:30:55');
INSERT INTO `liulanjilu` VALUES ('2', '2', 'wupinxinxi', '1', '华为笔记本', '小芳', '002', '2026-03-05 23:32:17');
INSERT INTO `liulanjilu` VALUES ('3', '2', 'wupinxinxi', '1', '华为笔记本', '小芳', '002', '2026-03-05 23:34:46');
INSERT INTO `liulanjilu` VALUES ('4', '2', 'wupinxinxi', '1', '华为笔记本', '小芳', '002', '2026-03-05 23:34:47');
INSERT INTO `liulanjilu` VALUES ('5', '2', 'wupinxinxi', '1', '华为笔记本', '小芳', '002', '2026-03-05 23:34:48');
INSERT INTO `liulanjilu` VALUES ('6', '2', 'wupinxinxi', '1', '华为笔记本', '小芳', '002', '2026-03-05 23:34:48');
INSERT INTO `liulanjilu` VALUES ('7', '2', 'wupinxinxi', '1', '华为笔记本', '小芳', '002', '2026-03-05 23:34:48');
INSERT INTO `liulanjilu` VALUES ('8', '2', 'wupinxinxi', '1', '华为笔记本', '小芳', '002', '2026-03-05 23:34:56');
INSERT INTO `liulanjilu` VALUES ('9', '2', 'wupinxinxi', '1', '华为笔记本', '小芳', '002', '2026-03-05 23:34:57');
INSERT INTO `liulanjilu` VALUES ('10', '2', 'wupinxinxi', '1', '华为笔记本', '小芳', '002', '2026-03-05 23:34:57');
INSERT INTO `liulanjilu` VALUES ('11', '2', 'wupinxinxi', '1', '华为笔记本', '小芳', '002', '2026-03-05 23:34:58');
INSERT INTO `liulanjilu` VALUES ('12', '2', 'wupinxinxi', '1', '华为笔记本', '小芳', '002', '2026-03-05 23:34:58');
INSERT INTO `liulanjilu` VALUES ('13', '2', 'wupinxinxi', '1', '华为笔记本', '小芳', '002', '2026-03-05 23:34:58');
INSERT INTO `liulanjilu` VALUES ('14', '2', 'wupinxinxi', '1', '华为笔记本', '小芳', '002', '2026-03-05 23:34:58');
INSERT INTO `liulanjilu` VALUES ('15', '2', 'wupinxinxi', '1', '华为笔记本', '小芳', '002', '2026-03-05 23:34:58');
INSERT INTO `liulanjilu` VALUES ('16', '2', 'wupinxinxi', '1', '华为笔记本', '小芳', '002', '2026-03-05 23:34:58');
INSERT INTO `liulanjilu` VALUES ('17', '2', 'wupinxinxi', '1', '华为笔记本', '小芳', '002', '2026-03-05 23:34:58');
INSERT INTO `liulanjilu` VALUES ('18', '2', 'wupinxinxi', '1', '华为笔记本', '小芳', '002', '2026-03-05 23:34:58');
INSERT INTO `liulanjilu` VALUES ('19', '2', 'wupinxinxi', '1', '华为笔记本', '小芳', '002', '2026-03-05 23:34:59');
INSERT INTO `liulanjilu` VALUES ('20', '2', 'wupinxinxi', '1', '华为笔记本', '小芳', '002', '2026-03-05 23:34:59');
INSERT INTO `liulanjilu` VALUES ('21', '2', 'wupinxinxi', '1', '华为笔记本', '小芳', '002', '2026-03-05 23:37:16');
INSERT INTO `liulanjilu` VALUES ('22', '2', 'wupinxinxi', '1', '华为笔记本', '小芳', '002', '2026-03-05 23:37:51');
INSERT INTO `liulanjilu` VALUES ('23', '2', 'wupinxinxi', '1', '华为笔记本', '小芳', '002', '2026-03-05 23:37:58');
INSERT INTO `liulanjilu` VALUES ('24', '2', 'wupinxinxi', '1', '华为笔记本', '小芳', '002', '2026-03-05 23:38:01');
INSERT INTO `liulanjilu` VALUES ('25', '2', 'wupinxinxi', '1', '华为笔记本', '张飞', '001', '2026-03-05 23:43:41');
INSERT INTO `liulanjilu` VALUES ('26', '2', 'wupinxinxi', '1', '华为笔记本', '张飞', '001', '2026-03-05 23:43:41');
INSERT INTO `liulanjilu` VALUES ('27', '2', 'wupinxinxi', '1', '华为笔记本', '张飞', '001', '2026-03-05 23:43:42');
INSERT INTO `liulanjilu` VALUES ('28', '2', 'wupinxinxi', '1', '华为笔记本', '张飞', '001', '2026-03-05 23:43:42');
INSERT INTO `liulanjilu` VALUES ('29', '2', 'wupinxinxi', '1', '华为笔记本', '张飞', '001', '2026-03-05 23:43:42');

-- ----------------------------
-- Table structure for `lunbotu`
-- ----------------------------
DROP TABLE IF EXISTS `lunbotu`;
CREATE TABLE `lunbotu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '图片',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '连接地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='轮播图';

-- ----------------------------
-- Records of lunbotu
-- ----------------------------
INSERT INTO `lunbotu` VALUES ('1', '1', 'upload/20260305/17441772724552131.png', '#');
INSERT INTO `lunbotu` VALUES ('2', '2', 'upload/20260305/40741772724559583.png', '#');
INSERT INTO `lunbotu` VALUES ('3', '3', 'upload/20260305/41981772724584095.png', '#');

-- ----------------------------
-- Table structure for `shoucang`
-- ----------------------------
DROP TABLE IF EXISTS `shoucang`;
CREATE TABLE `shoucang` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '' COMMENT '用户',
  `xwid` int(11) NOT NULL DEFAULT '0' COMMENT '关联表id',
  `biao` varchar(50) NOT NULL DEFAULT '' COMMENT '关联表',
  `biaoti` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '收藏时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='收藏';

-- ----------------------------
-- Records of shoucang
-- ----------------------------
INSERT INTO `shoucang` VALUES ('1', '002', '2', 'wupinxinxi', '华为笔记本', '2026-03-05 23:38:02');

-- ----------------------------
-- Table structure for `sixinmaijia`
-- ----------------------------
DROP TABLE IF EXISTS `sixinmaijia`;
CREATE TABLE `sixinmaijia` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wupinxinxiid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '物品信息id',
  `wupinbianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '物品编号',
  `wupinmingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '物品名称',
  `fenlei` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类',
  `wupintupian` text NOT NULL COMMENT '物品图片',
  `chushoujiage` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '出手价格',
  `lianxiren` varchar(50) NOT NULL DEFAULT '' COMMENT '联系人',
  `faburen` varchar(64) NOT NULL DEFAULT '' COMMENT '发布人',
  `sixinneirong` text NOT NULL COMMENT '私信内容',
  `sixinzhuangtai` varchar(50) NOT NULL DEFAULT '' COMMENT '私信状态',
  `sixinmaijia` varchar(64) NOT NULL DEFAULT '' COMMENT '私信买家',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '私信时间',
  PRIMARY KEY (`id`),
  KEY `wupinxinxi_index` (`wupinxinxiid`),
  KEY `fenlei_index` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='私信卖家';

-- ----------------------------
-- Records of sixinmaijia
-- ----------------------------
INSERT INTO `sixinmaijia` VALUES ('1', '2', '03052322202054', '华为笔记本', '1', 'upload/20260305/36341772724162355.png,upload/20260305/22701772724165856.png', '3500.00', '张飞', '001', '你好！！！', '已回复', '002', '2026-03-05 23:37:58');

-- ----------------------------
-- Table structure for `wupinfenlei`
-- ----------------------------
DROP TABLE IF EXISTS `wupinfenlei`;
CREATE TABLE `wupinfenlei` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fenleimingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='物品分类';

-- ----------------------------
-- Records of wupinfenlei
-- ----------------------------
INSERT INTO `wupinfenlei` VALUES ('1', '电子');
INSERT INTO `wupinfenlei` VALUES ('2', '其他');

-- ----------------------------
-- Table structure for `wupinxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `wupinxinxi`;
CREATE TABLE `wupinxinxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wupinbianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '物品编号',
  `wupinmingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '物品名称',
  `fenlei` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类',
  `wupintupian` text NOT NULL COMMENT '物品图片',
  `chushoujiage` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '出手价格',
  `jiaoyididian` varchar(50) NOT NULL DEFAULT '' COMMENT '交易地点',
  `xinjiudu` varchar(50) NOT NULL DEFAULT '' COMMENT '新旧度',
  `lianxiren` varchar(50) NOT NULL DEFAULT '' COMMENT '联系人',
  `lianxifangshi` varchar(50) NOT NULL DEFAULT '' COMMENT '联系方式',
  `wupinzhuangtai` varchar(50) NOT NULL DEFAULT '' COMMENT '物品状态',
  `liulanliang` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  `faburen` varchar(64) NOT NULL DEFAULT '' COMMENT '发布人',
  `wupinjianjie` longtext NOT NULL COMMENT '物品简介',
  `issh` varchar(10) NOT NULL DEFAULT '否' COMMENT '是否审核',
  PRIMARY KEY (`id`),
  KEY `fenlei_index` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='物品信息';

-- ----------------------------
-- Records of wupinxinxi
-- ----------------------------
INSERT INTO `wupinxinxi` VALUES ('1', '03052321151732', '二手苹果15', '1', 'upload/20260305/17811772724096698.png,upload/20260305/16671772724099965.png,upload/20260305/26921772724103543.png', '2580.00', '001教室', '九成新', '张飞', '16501560333', '在售', '0', '001', '<p><span class=\"text_xNrKb J-lemma-content-lemma-text\" data-text=\"true\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap-mode: wrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\">随着消费观念转变，闲置物品交易市场规模逐步扩大。以努比亚M153工程机为例，二手平台价格从12999元上涨至16000元，溢价超23%。部分投机者通过批量抢购、囤货转卖形成短线炒卖链条，租赁市场中还出现高风险金融操作等异化现象。豆包团队为防范滥用风险限制自动化操作能力后，市场出现手动降低操作频率、技术论坛提供解封教程等应对方式。部分二手交易卖家将豆包AI自动化能力包装出售，暗示其可用于批量注册、签到等场景。Root破解行为虽可能规避限制，但会导致设备丧失保修并引发系统安全问题</span><span class=\"supWrap_kIWT4 J-supWrap J-lemma-content-lemma-sup-item\" data-flag=\"summary\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; cursor: pointer; display: inline; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap-mode: wrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\"><span data-tag=\"ref\" style=\"box-sizing: content-box; margin: 0px 0px 0px 2px; padding: 0px 2px; color: rgb(51, 102, 204); cursor: pointer; position: relative; top: -0.5em; vertical-align: bottom; text-wrap-mode: nowrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\">&nbsp;</span></span><span class=\"text_xNrKb J-lemma-content-lemma-text\" data-text=\"true\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap-mode: wrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\">。</span></p>', '是');
INSERT INTO `wupinxinxi` VALUES ('2', '03052322202054', '华为笔记本', '1', 'upload/20260305/36341772724162355.png,upload/20260305/22701772724165856.png', '3500.00', '002教室', '九九新', '张飞', '16501560333', '已售', '29', '001', '<p><span class=\"text_xNrKb J-lemma-content-lemma-text\" data-text=\"true\" style=\"box-sizing: content-box; text-wrap-mode: wrap; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\">随着消费观念转变，闲置物品交易市场规模逐步扩大。以努比亚M153工程机为例，二手平台价格从12999元上涨至16000元，溢价超23%。部分投机者通过批量抢购、囤货转卖形成短线炒卖链条，租赁市场中还出现高风险金融操作等异化现象。豆包团队为防范滥用风险限制自动化操作能力后，市场出现手动降低操作频率、技术论坛提供解封教程等应对方式。部分二手交易卖家将豆包AI自动化能力包装出售，暗示其可用于批量注册、签到等场景。Root破解行为虽可能规避限制，但会导致设备丧失保修并引发系统安全问题</span><span class=\"supWrap_kIWT4 J-supWrap J-lemma-content-lemma-sup-item\" data-flag=\"summary\" style=\"box-sizing: content-box; text-wrap-mode: wrap; margin: 0px; padding: 0px; cursor: pointer; display: inline; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\"><span data-tag=\"ref\" style=\"box-sizing: content-box; margin: 0px 0px 0px 2px; padding: 0px 2px; color: rgb(51, 102, 204); cursor: pointer; position: relative; top: -0.5em; vertical-align: bottom; text-wrap-mode: nowrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\">&nbsp;</span></span><span class=\"text_xNrKb J-lemma-content-lemma-text\" data-text=\"true\" style=\"box-sizing: content-box; text-wrap-mode: wrap; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\">。</span></p>', '是');
INSERT INTO `wupinxinxi` VALUES ('3', '03052323072242', '耐克球鞋', '2', 'upload/20260305/56461772724204744.png,upload/20260305/29761772724208321.png,upload/20260305/17901772724211920.png', '540.00', '002教室', '八成新', '张飞', '16501560333', '在售', '0', '001', '<p><span class=\"text_xNrKb J-lemma-content-lemma-text\" data-text=\"true\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap-mode: wrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\">随着消费观念转变，闲置物品交易市场规模逐步扩大。以努比亚M153工程机为例，二手平台价格从12999元上涨至16000元，溢价超23%。部分投机者通过批量抢购、囤货转卖形成短线炒卖链条，租赁市场中还出现高风险金融操作等异化现象。豆包团队为防范滥用风险限制自动化操作能力后，市场出现手动降低操作频率、技术论坛提供解封教程等应对方式。部分二手交易卖家将豆包AI自动化能力包装出售，暗示其可用于批量注册、签到等场景。Root破解行为虽可能规避限制，但会导致设备丧失保修并引发系统安全问题</span><span class=\"supWrap_kIWT4 J-supWrap J-lemma-content-lemma-sup-item\" data-flag=\"summary\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; cursor: pointer; display: inline; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap-mode: wrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\"><span data-tag=\"ref\" style=\"box-sizing: content-box; margin: 0px 0px 0px 2px; padding: 0px 2px; color: rgb(51, 102, 204); cursor: pointer; position: relative; top: -0.5em; vertical-align: bottom; text-wrap-mode: nowrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\">&nbsp;</span></span><span class=\"text_xNrKb J-lemma-content-lemma-text\" data-text=\"true\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap-mode: wrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\">。</span></p>', '是');
INSERT INTO `wupinxinxi` VALUES ('4', '03052323501272', '二手电动车', '2', 'upload/20260305/75151772724259887.png,upload/20260305/63291772724263907.png,upload/20260305/26491772724267459.png', '680.00', '1号操场', '九成新', '张飞', '16501560333', '在售', '0', '001', '<p><span class=\"text_xNrKb J-lemma-content-lemma-text\" data-text=\"true\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap-mode: wrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\">随着消费观念转变，闲置物品交易市场规模逐步扩大。以努比亚M153工程机为例，二手平台价格从12999元上涨至16000元，溢价超23%。部分投机者通过批量抢购、囤货转卖形成短线炒卖链条，租赁市场中还出现高风险金融操作等异化现象。豆包团队为防范滥用风险限制自动化操作能力后，市场出现手动降低操作频率、技术论坛提供解封教程等应对方式。部分二手交易卖家将豆包AI自动化能力包装出售，暗示其可用于批量注册、签到等场景。Root破解行为虽可能规避限制，但会导致设备丧失保修并引发系统安全问题</span><span class=\"supWrap_kIWT4 J-supWrap J-lemma-content-lemma-sup-item\" data-flag=\"summary\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; cursor: pointer; display: inline; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap-mode: wrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\"><span data-tag=\"ref\" style=\"box-sizing: content-box; margin: 0px 0px 0px 2px; padding: 0px 2px; color: rgb(51, 102, 204); cursor: pointer; position: relative; top: -0.5em; vertical-align: bottom; text-wrap-mode: nowrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\">&nbsp;[2]<em id=\"sup-2\" style=\"box-sizing: content-box; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important; margin: 0px; padding: 0px; font-size: 0px; line-height: 0; position: relative; top: -100px;\"></em></span></span><span class=\"text_xNrKb J-lemma-content-lemma-text\" data-text=\"true\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap-mode: wrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\">。</span></p>', '是');
INSERT INTO `wupinxinxi` VALUES ('5', '03052325061110', '苹果13', '1', 'upload/20260305/8351772724327966.png,upload/20260305/72951772724331573.png', '1200.00', '002教室', '八成新', '张飞', '16501560333', '在售', '0', '001', '<p><span class=\"text_xNrKb J-lemma-content-lemma-text\" data-text=\"true\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap-mode: wrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\">随着消费观念转变，闲置物品交易市场规模逐步扩大。以努比亚M153工程机为例，二手平台价格从12999元上涨至16000元，溢价超23%。部分投机者通过批量抢购、囤货转卖形成短线炒卖链条，租赁市场中还出现高风险金融操作等异化现象。豆包团队为防范滥用风险限制自动化操作能力后，市场出现手动降低操作频率、技术论坛提供解封教程等应对方式。部分二手交易卖家将豆包AI自动化能力包装出售，暗示其可用于批量注册、签到等场景。Root破解行为虽可能规避限制，但会导致设备丧失保修并引发系统安全问题</span><span class=\"text_xNrKb J-lemma-content-lemma-text\" data-text=\"true\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap-mode: wrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\">。</span></p>', '是');
INSERT INTO `wupinxinxi` VALUES ('6', '03052325501384', '二手摩托车', '2', 'upload/20260305/58521772724371467.png,upload/20260305/37291772724375716.png', '5888.00', '1号操场', '九九新', '张飞', '16501560333', '在售', '0', '001', '<p><span class=\"text_xNrKb J-lemma-content-lemma-text\" data-text=\"true\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap-mode: wrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\">随着消费观念转变，闲置物品交易市场规模逐步扩大。以努比亚M153工程机为例，二手平台价格从12999元上涨至16000元，溢价超23%。部分投机者通过批量抢购、囤货转卖形成短线炒卖链条，租赁市场中还出现高风险金融操作等异化现象。豆包团队为防范滥用风险限制自动化操作能力后，市场出现手动降低操作频率、技术论坛提供解封教程等应对方式。部分二手交易卖家将豆包AI自动化能力包装出售，暗示其可用于批量注册、签到等场景。Root破解行为虽可能规避限制，但会导致设备丧失保修并引发系统安全问题</span><span class=\"text_xNrKb J-lemma-content-lemma-text\" data-text=\"true\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap-mode: wrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\">。</span></p>', '是');
INSERT INTO `wupinxinxi` VALUES ('7', '03052326501322', '罗技键盘', '2', 'upload/20260305/67521772724441100.png,upload/20260305/91111772724444531.png', '258.00', '002教室', '九成新', '张飞', '16501560333', '在售', '0', '001', '<p><span class=\"text_xNrKb J-lemma-content-lemma-text\" data-text=\"true\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap-mode: wrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\">随着消费观念转变，闲置物品交易市场规模逐步扩大。以努比亚M153工程机为例，二手平台价格从12999元上涨至16000元，溢价超23%。部分投机者通过批量抢购、囤货转卖形成短线炒卖链条，租赁市场中还出现高风险金融操作等异化现象。豆包团队为防范滥用风险限制自动化操作能力后，市场出现手动降低操作频率、技术论坛提供解封教程等应对方式。部分二手交易卖家将豆包AI自动化能力包装出售，暗示其可用于批量注册、签到等场景。Root破解行为虽可能规避限制，但会导致设备丧失保修并引发系统安全问题</span><span class=\"text_xNrKb J-lemma-content-lemma-text\" data-text=\"true\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap-mode: wrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\">。</span></p>', '是');
INSERT INTO `wupinxinxi` VALUES ('8', '03052327411272', '罗技鼠标', '2', 'upload/20260305/65521772724474388.png,upload/20260305/87451772724477823.png', '148.00', '001教室', '全新', '张飞', '16501560333', '在售', '0', '001', '<p><span class=\"text_xNrKb J-lemma-content-lemma-text\" data-text=\"true\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap-mode: wrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\">随着消费观念转变，闲置物品交易市场规模逐步扩大。以努比亚M153工程机为例，二手平台价格从12999元上涨至16000元，溢价超23%。部分投机者通过批量抢购、囤货转卖形成短线炒卖链条，租赁市场中还出现高风险金融操作等异化现象。豆包团队为防范滥用风险限制自动化操作能力后，市场出现手动降低操作频率、技术论坛提供解封教程等应对方式。部分二手交易卖家将豆包AI自动化能力包装出售，暗示其可用于批量注册、签到等场景。Root破解行为虽可能规避限制，但会导致设备丧失保修并引发系统安全问题</span><span class=\"supWrap_kIWT4 J-supWrap J-lemma-content-lemma-sup-item\" data-flag=\"summary\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; cursor: pointer; display: inline; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap-mode: wrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\"><span data-tag=\"ref\" style=\"box-sizing: content-box; margin: 0px 0px 0px 2px; padding: 0px 2px; color: rgb(51, 102, 204); cursor: pointer; position: relative; top: -0.5em; vertical-align: bottom; text-wrap-mode: nowrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\">&nbsp;</span></span><span class=\"text_xNrKb J-lemma-content-lemma-text\" data-text=\"true\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; text-wrap-mode: wrap; animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; scroll-behavior: auto !important; transition-duration: 0.01ms !important;\">。</span></p>', '是');

-- ----------------------------
-- Table structure for `yonghu`
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `yonghuming` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `mima` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `xingming` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `xingbie` varchar(10) NOT NULL DEFAULT '' COMMENT '性别',
  `shouji` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `youxiang` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  `touxiang` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `issh` varchar(10) NOT NULL DEFAULT '否' COMMENT '是否审核',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1', '001', '001', '张飞', '男', '16501560333', '12011@qq.com', 'upload/20260305/381772724008538.png', '是');
INSERT INTO `yonghu` VALUES ('2', '002', '002', '小芳', '女', '16501560336', '11105@qq.com', 'upload/20260305/57801772724025875.png', '是');

-- ----------------------------
-- Table structure for `youqinglianjie`
-- ----------------------------
DROP TABLE IF EXISTS `youqinglianjie`;
CREATE TABLE `youqinglianjie` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wangzhanmingcheng` varchar(50) NOT NULL DEFAULT '' COMMENT '网站名称',
  `wangzhi` varchar(50) NOT NULL DEFAULT '' COMMENT '网址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='友情链接';

-- ----------------------------
-- Records of youqinglianjie
-- ----------------------------
INSERT INTO `youqinglianjie` VALUES ('1', '百度', 'http://www.baidu.com');
INSERT INTO `youqinglianjie` VALUES ('2', '谷歌', 'http://www.google.cn');
INSERT INTO `youqinglianjie` VALUES ('3', '新浪', 'http://www.sina.com');
INSERT INTO `youqinglianjie` VALUES ('4', 'QQ', 'http://www.qq.com');
INSERT INTO `youqinglianjie` VALUES ('5', '网易', 'http://www.163.com');
