/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50622
 Source Host           : localhost:3306
 Source Schema         : hmdp

 Target Server Type    : MySQL
 Target Server Version : 50622
 File Encoding         : 65001

 Date: 14/03/2022 21:38:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_blog
-- ----------------------------
DROP TABLE IF EXISTS `tb_blog`;
CREATE TABLE `tb_blog`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` bigint(20) NOT NULL COMMENT '商户id',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `images` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '探店的照片，最多9张，多张以\",\"隔开',
  `content` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '探店的文字描述',
  `liked` int(8) UNSIGNED NULL DEFAULT 0 COMMENT '点赞数量',
  `comments` int(8) UNSIGNED NULL DEFAULT NULL COMMENT '评论数量',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_blog
-- ----------------------------
INSERT INTO `tb_blog` VALUES (4, 4, 2, '无尽浪漫的夜晚丨在万花丛中摇晃着红酒杯🍷品战斧牛排🥩', '/imgs/blogs/7/14/4771fefb-1a87-4252-816c-9f7ec41ffa4a.jpg,/imgs/blogs/4/10/2f07e3c9-ddce-482d-9ea7-c21450f8d7cd.jpg,/imgs/blogs/2/6/b0756279-65da-4f2d-b62a-33f74b06454a.jpg,/imgs/blogs/10/7/7e97f47d-eb49-4dc9-a583-95faa7aed287.jpg,/imgs/blogs/1/2/4a7b496b-2a08-4af7-aa95-df2c3bd0ef97.jpg,/imgs/blogs/14/3/52b290eb-8b5d-403b-8373-ba0bb856d18e.jpg', '生活就是一半烟火·一半诗意<br/>手执烟火谋生活·心怀诗意以谋爱·<br/>当然<br/>\r\n男朋友给不了的浪漫要学会自己给🍒<br/>\n无法重来的一生·尽量快乐.<br/><br/>🏰「小筑里·神秘浪漫花园餐厅」🏰<br/><br/>\n💯这是一家最最最美花园的西餐厅·到处都是花餐桌上是花前台是花  美好无处不在\n品一口葡萄酒，维亚红酒马瑟兰·微醺上头工作的疲惫消失无际·生如此多娇🍃<br/><br/>📍地址:延安路200号(家乐福面)<br/><br/>🚌交通:地铁①号线定安路B口出右转过下通道右转就到啦～<br/><br/>--------------🥣菜品详情🥣---------------<br/><br/>「战斧牛排]<br/>\n超大一块战斧牛排经过火焰的炙烤发出阵阵香，外焦里嫩让人垂涎欲滴，切开牛排的那一刻，牛排的汁水顺势流了出来，分熟的牛排肉质软，简直细嫩到犯规，一刻都等不了要放入嘴里咀嚼～<br/><br/>「奶油培根意面」<br/>太太太好吃了💯<br/>我真的无法形容它的美妙，意面混合奶油香菇的香味真的太太太香了，我真的舔盘了，一丁点美味都不想浪费‼️<br/><br/><br/>「香菜汁烤鲈鱼」<br/>这个酱是辣的 真的绝好吃‼️<br/>鲈鱼本身就很嫩没什么刺，烤过之后外皮酥酥的，鱼肉蘸上酱料根本停不下来啊啊啊啊<br/>能吃辣椒的小伙伴一定要尝尝<br/><br/>非常可 好吃子🍽\n<br/>--------------🍃个人感受🍃---------------<br/><br/>【👩🏻‍🍳服务】<br/>小姐姐特别耐心的给我们介绍彩票 <br/>推荐特色菜品，拍照需要帮忙也是尽心尽力配合，太爱他们了<br/><br/>【🍃环境】<br/>比较有格调的西餐厅 整个餐厅的布局可称得上的万花丛生 有种在人间仙境的感觉🌸<br/>集美食美酒与鲜花为一体的风格店铺 令人向往<br/>烟火皆是生活 人间皆是浪漫<br/>', 1, 104, '2021-12-28 19:50:01', '2022-03-10 14:26:34');
INSERT INTO `tb_blog` VALUES (5, 1, 2, '人均30💰杭州这家港式茶餐厅我疯狂打call‼️', '/imgs/blogs/4/7/863cc302-d150-420d-a596-b16e9232a1a6.jpg,/imgs/blogs/11/12/8b37d208-9414-4e78-b065-9199647bb3e3.jpg,/imgs/blogs/4/1/fa74a6d6-3026-4cb7-b0b6-35abb1e52d11.jpg,/imgs/blogs/9/12/ac2ce2fb-0605-4f14-82cc-c962b8c86688.jpg,/imgs/blogs/4/0/26a7cd7e-6320-432c-a0b4-1b7418f45ec7.jpg,/imgs/blogs/15/9/cea51d9b-ac15-49f6-b9f1-9cf81e9b9c85.jpg', '又吃到一家好吃的茶餐厅🍴环境是怀旧tvb港风📺边吃边拍照片📷几十种菜品均价都在20+💰可以是很平价了！<br>·<br>店名：九记冰厅(远洋店)<br>地址：杭州市丽水路远洋乐堤港负一楼（溜冰场旁边）<br>·<br>✔️黯然销魂饭（38💰）<br>这碗饭我吹爆！米饭上盖满了甜甜的叉烧 还有两颗溏心蛋🍳每一粒米饭都裹着浓郁的酱汁 光盘了<br>·<br>✔️铜锣湾漏奶华（28💰）<br>黄油吐司烤的脆脆的 上面洒满了可可粉🍫一刀切开 奶盖流心像瀑布一样流出来  满足<br>·<br>✔️神仙一口西多士士（16💰）<br>简简单单却超级好吃！西多士烤的很脆 黄油味浓郁 面包体超级柔软 上面淋了炼乳<br>·<br>✔️怀旧五柳炸蛋饭（28💰）<br>四个鸡蛋炸成蓬松的炸蛋！也太好吃了吧！还有大块鸡排 上淋了酸甜的酱汁 太合我胃口了！！<br>·<br>✔️烧味双拼例牌（66💰）<br>选了烧鹅➕叉烧 他家烧腊品质真的惊艳到我！据说是每日广州发货 到店现烧现卖的黑棕鹅 每口都是正宗的味道！肉质很嫩 皮超级超级酥脆！一口爆油！叉烧肉也一点都不柴 甜甜的很入味 搭配梅子酱很解腻 ！<br>·<br>✔️红烧脆皮乳鸽（18.8💰）<br>乳鸽很大只 这个价格也太划算了吧， 肉质很有嚼劲 脆皮很酥 越吃越香～<br>·<br>✔️大满足小吃拼盘（25💰）<br>翅尖➕咖喱鱼蛋➕蝴蝶虾➕盐酥鸡<br>zui喜欢里面的咖喱鱼！咖喱酱香甜浓郁！鱼蛋很q弹～<br>·<br>✔️港式熊仔丝袜奶茶（19💰）<br>小熊🐻造型的奶茶冰也太可爱了！颜值担当 很地道的丝袜奶茶 茶味特别浓郁～<br>·', 1, 0, '2021-12-28 20:57:49', '2022-03-10 09:21:39');
INSERT INTO `tb_blog` VALUES (6, 10, 1, '杭州周末好去处｜💰50就可以骑马啦🐎', '/imgs/blogs/blog1.jpg', '杭州周末好去处｜💰50就可以骑马啦🐎', 1, 0, '2022-01-11 16:05:47', '2022-03-10 09:21:41');
INSERT INTO `tb_blog` VALUES (7, 10, 1, '杭州周末好去处｜💰50就可以骑马啦🐎', '/imgs/blogs/blog1.jpg', '杭州周末好去处｜💰50就可以骑马啦🐎', 1, 0, '2022-01-11 16:05:47', '2022-03-10 09:21:42');

-- ----------------------------
-- Table structure for tb_blog_comments
-- ----------------------------
DROP TABLE IF EXISTS `tb_blog_comments`;
CREATE TABLE `tb_blog_comments`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户id',
  `blog_id` bigint(20) UNSIGNED NOT NULL COMMENT '探店id',
  `parent_id` bigint(20) UNSIGNED NOT NULL COMMENT '关联的1级评论id，如果是一级评论，则值为0',
  `answer_id` bigint(20) UNSIGNED NOT NULL COMMENT '回复的评论id',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '回复的内容',
  `liked` int(8) UNSIGNED NULL DEFAULT NULL COMMENT '点赞数',
  `status` tinyint(1) UNSIGNED NULL DEFAULT NULL COMMENT '状态，0：正常，1：被举报，2：禁止查看',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_blog_comments
-- ----------------------------

-- ----------------------------
-- Table structure for tb_follow
-- ----------------------------
DROP TABLE IF EXISTS `tb_follow`;
CREATE TABLE `tb_follow`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户id',
  `follow_user_id` bigint(20) UNSIGNED NOT NULL COMMENT '关联的用户id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_follow
-- ----------------------------

-- ----------------------------
-- Table structure for tb_seckill_voucher
-- ----------------------------
DROP TABLE IF EXISTS `tb_seckill_voucher`;
CREATE TABLE `tb_seckill_voucher`  (
  `voucher_id` bigint(20) UNSIGNED NOT NULL COMMENT '关联的优惠券的id',
  `stock` int(8) NOT NULL COMMENT '库存',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `begin_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '生效时间',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '失效时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`voucher_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '秒杀优惠券表，与优惠券是一对一关系' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_seckill_voucher
-- ----------------------------

-- ----------------------------
-- Table structure for tb_shop
-- ----------------------------
DROP TABLE IF EXISTS `tb_shop`;
CREATE TABLE `tb_shop`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商铺名称',
  `type_id` bigint(20) UNSIGNED NOT NULL COMMENT '商铺类型的id',
  `images` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商铺图片，多个图片以\',\'隔开',
  `area` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商圈，例如陆家嘴',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '地址',
  `x` double UNSIGNED NOT NULL COMMENT '经度',
  `y` double UNSIGNED NOT NULL COMMENT '维度',
  `avg_price` bigint(10) UNSIGNED NULL DEFAULT NULL COMMENT '均价，取整数',
  `sold` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT '销量',
  `comments` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT '评论数量',
  `score` int(2) UNSIGNED ZEROFILL NOT NULL COMMENT '评分，1~5分，乘10保存，避免小数',
  `open_hours` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '营业时间，例如 10:00-22:00',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `foreign_key_type`(`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_shop
-- ----------------------------
INSERT INTO `tb_shop` VALUES (1, '103茶餐厅', 1, 'https://qcloud.dpfile.com/pc/jiclIsCKmOI2arxKN1Uf0Hx3PucIJH8q0QSz-Z8llzcN56-_QiKuOvyio1OOxsRtFoXqu0G3iT2T27qat3WhLVEuLYk00OmSS1IdNpm8K8sG4JN9RIm2mTKcbLtc2o2vfCF2ubeXzk49OsGrXt_KYDCngOyCwZK-s3fqawWswzk.jpg,https://qcloud.dpfile.com/pc/IOf6VX3qaBgFXFVgp75w-KKJmWZjFc8GXDU8g9bQC6YGCpAmG00QbfT4vCCBj7njuzFvxlbkWx5uwqY2qcjixFEuLYk00OmSS1IdNpm8K8sG4JN9RIm2mTKcbLtc2o2vmIU_8ZGOT1OjpJmLxG6urQ.jpg', '大关', '金华路锦昌文华苑29号', 120.149192, 30.316078, 80, 0000004215, 0000003035, 37, '10:00-22:00', '2021-12-22 18:10:39', '2022-01-13 17:32:19');
INSERT INTO `tb_shop` VALUES (2, '蔡馬洪涛烤肉·老北京铜锅涮羊肉', 1, 'https://p0.meituan.net/bbia/c1870d570e73accbc9fee90b48faca41195272.jpg,http://p0.meituan.net/mogu/397e40c28fc87715b3d5435710a9f88d706914.jpg,https://qcloud.dpfile.com/pc/MZTdRDqCZdbPDUO0Hk6lZENRKzpKRF7kavrkEI99OxqBZTzPfIxa5E33gBfGouhFuzFvxlbkWx5uwqY2qcjixFEuLYk00OmSS1IdNpm8K8sG4JN9RIm2mTKcbLtc2o2vmIU_8ZGOT1OjpJmLxG6urQ.jpg', '拱宸桥/上塘', '上塘路1035号（中国工商银行旁）', 120.151505, 30.333422, 85, 0000002160, 0000001460, 46, '11:30-03:00', '2021-12-22 19:00:13', '2022-01-11 16:12:26');
INSERT INTO `tb_shop` VALUES (3, '新白鹿餐厅(运河上街店)', 1, 'https://p0.meituan.net/biztone/694233_1619500156517.jpeg,https://img.meituan.net/msmerchant/876ca8983f7395556eda9ceb064e6bc51840883.png,https://img.meituan.net/msmerchant/86a76ed53c28eff709a36099aefe28b51554088.png', '运河上街', '台州路2号运河上街购物中心F5', 120.151954, 30.32497, 61, 0000012035, 0000008045, 47, '10:30-21:00', '2021-12-22 19:10:05', '2022-01-11 16:12:42');
INSERT INTO `tb_shop` VALUES (4, 'Mamala(杭州远洋乐堤港店)', 1, 'https://img.meituan.net/msmerchant/232f8fdf09050838bd33fb24e79f30f9606056.jpg,https://qcloud.dpfile.com/pc/rDe48Xe15nQOHCcEEkmKUp5wEKWbimt-HDeqYRWsYJseXNncvMiXbuED7x1tXqN4uzFvxlbkWx5uwqY2qcjixFEuLYk00OmSS1IdNpm8K8sG4JN9RIm2mTKcbLtc2o2vmIU_8ZGOT1OjpJmLxG6urQ.jpg', '拱宸桥/上塘', '丽水路66号远洋乐堤港商城2期1层B115号', 120.146659, 30.312742, 290, 0000013519, 0000009529, 49, '11:00-22:00', '2021-12-22 19:17:15', '2022-01-11 16:12:51');
INSERT INTO `tb_shop` VALUES (5, '海底捞火锅(水晶城购物中心店）', 1, 'https://img.meituan.net/msmerchant/054b5de0ba0b50c18a620cc37482129a45739.jpg,https://img.meituan.net/msmerchant/59b7eff9b60908d52bd4aea9ff356e6d145920.jpg,https://qcloud.dpfile.com/pc/Qe2PTEuvtJ5skpUXKKoW9OQ20qc7nIpHYEqJGBStJx0mpoyeBPQOJE4vOdYZwm9AuzFvxlbkWx5uwqY2qcjixFEuLYk00OmSS1IdNpm8K8sG4JN9RIm2mTKcbLtc2o2vmIU_8ZGOT1OjpJmLxG6urQ.jpg', '大关', '上塘路458号水晶城购物中心F6', 120.15778, 30.310633, 104, 0000004125, 0000002764, 49, '10:00-07:00', '2021-12-22 19:20:58', '2022-01-11 16:13:01');
INSERT INTO `tb_shop` VALUES (6, '幸福里老北京涮锅（丝联店）', 1, 'https://img.meituan.net/msmerchant/e71a2d0d693b3033c15522c43e03f09198239.jpg,https://img.meituan.net/msmerchant/9f8a966d60ffba00daf35458522273ca658239.jpg,https://img.meituan.net/msmerchant/ef9ca5ef6c05d381946fe4a9aa7d9808554502.jpg', '拱宸桥/上塘', '金华南路189号丝联166号', 120.148603, 30.318618, 130, 0000009531, 0000007324, 46, '11:00-13:50,17:00-20:50', '2021-12-22 19:24:53', '2022-01-11 16:13:09');
INSERT INTO `tb_shop` VALUES (7, '炉鱼(拱墅万达广场店)', 1, 'https://img.meituan.net/msmerchant/909434939a49b36f340523232924402166854.jpg,https://img.meituan.net/msmerchant/32fd2425f12e27db0160e837461c10303700032.jpg,https://img.meituan.net/msmerchant/f7022258ccb8dabef62a0514d3129562871160.jpg', '北部新城', '杭行路666号万达商业中心4幢2单元409室(铺位号4005)', 120.124691, 30.336819, 85, 0000002631, 0000001320, 47, '00:00-24:00', '2021-12-22 19:40:52', '2022-01-11 16:13:19');
INSERT INTO `tb_shop` VALUES (8, '浅草屋寿司（运河上街店）', 1, 'https://img.meituan.net/msmerchant/cf3dff697bf7f6e11f4b79c4e7d989e4591290.jpg,https://img.meituan.net/msmerchant/0b463f545355c8d8f021eb2987dcd0c8567811.jpg,https://img.meituan.net/msmerchant/c3c2516939efaf36c4ccc64b0e629fad587907.jpg', '运河上街', '拱墅区金华路80号运河上街B1', 120.150526, 30.325231, 88, 0000002406, 0000001206, 46, ' 11:00-21:30', '2021-12-22 19:51:06', '2022-01-11 16:13:25');
INSERT INTO `tb_shop` VALUES (9, '羊老三羊蝎子牛仔排北派炭火锅(运河上街店)', 1, 'https://p0.meituan.net/biztone/163160492_1624251899456.jpeg,https://img.meituan.net/msmerchant/e478eb16f7e31a7f8b29b5e3bab6de205500837.jpg,https://img.meituan.net/msmerchant/6173eb1d18b9d70ace7fdb3f2dd939662884857.jpg', '运河上街', '台州路2号运河上街购物中心F5', 120.150598, 30.325251, 101, 0000002763, 0000001363, 44, '11:00-21:30', '2021-12-22 19:53:59', '2022-01-11 16:13:34');
INSERT INTO `tb_shop` VALUES (10, '开乐迪KTV（运河上街店）', 2, 'https://p0.meituan.net/joymerchant/a575fd4adb0b9099c5c410058148b307-674435191.jpg,https://p0.meituan.net/merchantpic/68f11bf850e25e437c5f67decfd694ab2541634.jpg,https://p0.meituan.net/dpdeal/cb3a12225860ba2875e4ea26c6d14fcc197016.jpg', '运河上街', '台州路2号运河上街购物中心F4', 120.149093, 30.324666, 67, 0000026891, 0000000902, 37, '00:00-24:00', '2021-12-22 20:25:16', '2021-12-22 20:25:16');
INSERT INTO `tb_shop` VALUES (11, 'INLOVE KTV(水晶城店)', 2, 'https://p0.meituan.net/dpmerchantpic/53e74b200211d68988a4f02ae9912c6c1076826.jpg,https://qcloud.dpfile.com/pc/4iWtIvzLzwM2MGgyPu1PCDb4SWEaKqUeHm--YAt1EwR5tn8kypBcqNwHnjg96EvT_Gd2X_f-v9T8Yj4uLt25Gg.jpg,https://qcloud.dpfile.com/pc/WZsJWRI447x1VG2x48Ujgu7vwqksi_9WitdKI4j3jvIgX4MZOpGNaFtM93oSSizbGybIjx5eX6WNgCPvcASYAw.jpg', '水晶城', '上塘路458号水晶城购物中心6层', 120.15853, 30.310002, 75, 0000035977, 0000005684, 47, '11:30-06:00', '2021-12-22 20:29:02', '2021-12-22 20:39:00');
INSERT INTO `tb_shop` VALUES (12, '魅(杭州远洋乐堤港店)', 2, 'https://p0.meituan.net/dpmerchantpic/63833f6ba0393e2e8722420ef33f3d40466664.jpg,https://p0.meituan.net/dpmerchantpic/ae3c94cc92c529c4b1d7f68cebed33fa105810.png,', '远洋乐堤港', '丽水路58号远洋乐堤港F4', 120.14983, 30.31211, 88, 0000006444, 0000000235, 46, '10:00-02:00', '2021-12-22 20:34:34', '2021-12-22 20:34:34');
INSERT INTO `tb_shop` VALUES (13, '讴K拉量贩KTV(北城天地店)', 2, 'https://p1.meituan.net/merchantpic/598c83a8c0d06fe79ca01056e214d345875600.jpg,https://qcloud.dpfile.com/pc/HhvI0YyocYHRfGwJWqPQr34hRGRl4cWdvlNwn3dqghvi4WXlM2FY1te0-7pE3Wb9_Gd2X_f-v9T8Yj4uLt25Gg.jpg,https://qcloud.dpfile.com/pc/F5ZVzZaXFE27kvQzPnaL4V8O9QCpVw2nkzGrxZE8BqXgkfyTpNExfNG5CEPQX4pjGybIjx5eX6WNgCPvcASYAw.jpg', 'D32天阳购物中心', '湖州街567号北城天地5层', 120.130453, 30.327655, 58, 0000018997, 0000001857, 41, '12:00-02:00', '2021-12-22 20:38:54', '2021-12-22 20:40:04');
INSERT INTO `tb_shop` VALUES (14, '星聚会KTV(拱墅区万达店)', 2, 'https://p0.meituan.net/dpmerchantpic/f4cd6d8d4eb1959c3ea826aa05a552c01840451.jpg,https://p0.meituan.net/dpmerchantpic/2efc07aed856a8ab0fc75c86f4b9b0061655777.jpg,https://qcloud.dpfile.com/pc/zWfzzIorCohKT0bFwsfAlHuayWjI6DBEMPHHncmz36EEMU9f48PuD9VxLLDAjdoU_Gd2X_f-v9T8Yj4uLt25Gg.jpg', '北部新城', '杭行路666号万达广场C座1-2F', 120.128958, 30.337252, 60, 0000017771, 0000000685, 47, '10:00-22:00', '2021-12-22 20:48:54', '2021-12-22 20:48:54');

-- ----------------------------
-- Table structure for tb_shop_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_shop_type`;
CREATE TABLE `tb_shop_type`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型名称',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图标',
  `sort` int(3) UNSIGNED NULL DEFAULT NULL COMMENT '顺序',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_shop_type
-- ----------------------------
INSERT INTO `tb_shop_type` VALUES (1, '美食', '/types/ms.png', 1, '2021-12-22 20:17:47', '2021-12-23 11:24:31');
INSERT INTO `tb_shop_type` VALUES (2, 'KTV', '/types/KTV.png', 2, '2021-12-22 20:18:27', '2021-12-23 11:24:31');
INSERT INTO `tb_shop_type` VALUES (3, '丽人·美发', '/types/lrmf.png', 3, '2021-12-22 20:18:48', '2021-12-23 11:24:31');
INSERT INTO `tb_shop_type` VALUES (4, '健身运动', '/types/jsyd.png', 10, '2021-12-22 20:19:04', '2021-12-23 11:24:31');
INSERT INTO `tb_shop_type` VALUES (5, '按摩·足疗', '/types/amzl.png', 5, '2021-12-22 20:19:27', '2021-12-23 11:24:31');
INSERT INTO `tb_shop_type` VALUES (6, '美容SPA', '/types/spa.png', 6, '2021-12-22 20:19:35', '2021-12-23 11:24:31');
INSERT INTO `tb_shop_type` VALUES (7, '亲子游乐', '/types/qzyl.png', 7, '2021-12-22 20:19:53', '2021-12-23 11:24:31');
INSERT INTO `tb_shop_type` VALUES (8, '酒吧', '/types/jiuba.png', 8, '2021-12-22 20:20:02', '2021-12-23 11:24:31');
INSERT INTO `tb_shop_type` VALUES (9, '轰趴馆', '/types/hpg.png', 9, '2021-12-22 20:20:08', '2021-12-23 11:24:31');
INSERT INTO `tb_shop_type` VALUES (10, '美睫·美甲', '/types/mjmj.png', 4, '2021-12-22 20:21:46', '2021-12-23 11:24:31');

-- ----------------------------
-- Table structure for tb_sign
-- ----------------------------
DROP TABLE IF EXISTS `tb_sign`;
CREATE TABLE `tb_sign`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户id',
  `year` year NOT NULL COMMENT '签到的年',
  `month` tinyint(2) NOT NULL COMMENT '签到的月',
  `date` date NOT NULL COMMENT '签到的日期',
  `is_backup` tinyint(1) UNSIGNED NULL DEFAULT NULL COMMENT '是否补签',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_sign
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号码',
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '密码，加密存储',
  `nick_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '昵称，默认是用户id',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '人物头像',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniqe_key_phone`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1010 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, '00000000001', '', '小鱼同学', '/imgs/blogs/blog1.jpg', '2021-12-24 10:27:19', '2022-01-11 16:04:00');
INSERT INTO `tb_user` VALUES (2, '00000000002', '', '可可今天不吃肉', '/imgs/icons/kkjtbcr.jpg', '2021-12-24 15:14:39', '2021-12-28 19:58:04');
INSERT INTO `tb_user` VALUES (4, '00000000003', '', 'user_slxaxy2au9f3tanffaxr', '', '2022-01-07 12:07:53', '2022-01-07 12:07:53');
INSERT INTO `tb_user` VALUES (5, '00000000004', '', '可爱多', '/imgs/icons/user5-icon.png', '2022-01-07 16:11:33', '2022-03-11 09:09:20');
INSERT INTO `tb_user` VALUES (6, '00000000005', '', 'user_xn5wr3hpsv', '', '2022-02-07 17:54:10', '2022-02-07 17:54:10');
INSERT INTO `tb_user` VALUES (10, '00000000006', '', 'user_88arndojw9', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (11, '00000000007', '', 'user_qcfr2k1lmi', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (12, '00000000008', '', 'user_ffsk4hli07', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (13, '00000000009', '', 'user_r62q62ijef', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (14, '00000000010', '', 'user_f3rymyt1q5', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (15, '00000000011', '', 'user_hnyhc3mjat', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (16, '00000000012', '', 'user_2spo35f5rl', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (17, '00000000013', '', 'user_q3r70baqe1', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (18, '00000000014', '', 'user_v73ottjqxt', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (19, '00000000015', '', 'user_tmh8o4r11q', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (20, '00000000016', '', 'user_4epgb7b5u1', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (21, '00000000017', '', 'user_g474zoujxj', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (22, '00000000018', '', 'user_r3kh1g6aah', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (23, '00000000019', '', 'user_u3uuo7l5fo', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (24, '00000000020', '', 'user_9o93lbsojt', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (25, '00000000021', '', 'user_jbhmr43wpq', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (26, '00000000022', '', 'user_nevyd3c5ux', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (27, '00000000023', '', 'user_oow4frmjp3', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (28, '00000000024', '', 'user_cvmknmec74', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (29, '00000000025', '', 'user_0t2x5njbz7', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (30, '00000000026', '', 'user_y5x09783hp', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (31, '00000000027', '', 'user_owe4eyuhhh', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (32, '00000000028', '', 'user_j76auh0ggg', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (33, '00000000029', '', 'user_aal5w9rm33', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (34, '00000000030', '', 'user_a2pgu8cr21', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (35, '00000000031', '', 'user_nle60p846v', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (36, '00000000032', '', 'user_w1mck7c7yv', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (37, '00000000033', '', 'user_bnpiybumlk', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (38, '00000000034', '', 'user_4w7xeo2yyt', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (39, '00000000035', '', 'user_99u4voj7xl', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (40, '00000000036', '', 'user_g03is27pd6', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (41, '00000000037', '', 'user_3j9erfkl0p', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (42, '00000000038', '', 'user_l7rs56ah9y', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (43, '00000000039', '', 'user_p3655ctliy', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (44, '00000000040', '', 'user_qi1qze1yp1', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (45, '00000000041', '', 'user_vrd5ir0rj0', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (46, '00000000042', '', 'user_tubboh1byc', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (47, '00000000043', '', 'user_j2bdj3d2eo', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (48, '00000000044', '', 'user_ncj7r0vu1h', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (49, '00000000045', '', 'user_63rhqjqa0a', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (50, '00000000046', '', 'user_80ue5cywnk', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (51, '00000000047', '', 'user_j4q037vhpi', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (52, '00000000048', '', 'user_ms0uat5bf0', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (53, '00000000049', '', 'user_oqep16bdel', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (54, '00000000050', '', 'user_vjtvjjdqh7', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (55, '00000000051', '', 'user_0168i9hv5g', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (56, '00000000052', '', 'user_vh1j6zw1q4', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (57, '00000000053', '', 'user_rkf2nxouof', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (58, '00000000054', '', 'user_whlt2chtv3', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (59, '00000000055', '', 'user_lpqr90wbeo', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (60, '00000000056', '', 'user_h40y3ipk9k', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (61, '00000000057', '', 'user_awdqkmbkt7', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (62, '00000000058', '', 'user_1xgbg9v4r5', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (63, '00000000059', '', 'user_7vf5fgiu68', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (64, '00000000060', '', 'user_lsgiz015vf', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (65, '00000000061', '', 'user_0nqjvanruk', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (66, '00000000062', '', 'user_8alg1taath', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (67, '00000000063', '', 'user_q45ykjgpxe', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (68, '00000000064', '', 'user_4hy0o6ir0r', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (69, '00000000065', '', 'user_q6rh7e6zo9', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (70, '00000000066', '', 'user_1wp3ygfyn2', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (71, '00000000067', '', 'user_13vjvo6flp', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (72, '00000000068', '', 'user_glyshbbwin', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (73, '00000000069', '', 'user_3ewzgsnhzj', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (74, '00000000070', '', 'user_ky481zf1fs', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (75, '00000000071', '', 'user_o5yzu0epev', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (76, '00000000072', '', 'user_ycbracmsi3', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (77, '00000000073', '', 'user_974wwi1283', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (78, '00000000074', '', 'user_1y0xokmk9w', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (79, '00000000075', '', 'user_nd74cho3tu', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (80, '00000000076', '', 'user_5z7u2eysa4', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (81, '00000000077', '', 'user_yvf8hfu5yy', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (82, '00000000078', '', 'user_2poi4wvpms', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (83, '00000000079', '', 'user_v4ysxjt1yu', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (84, '00000000080', '', 'user_kbvn4gpgk6', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (85, '00000000081', '', 'user_23niik1tyg', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (86, '00000000082', '', 'user_uf2zz6ispe', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (87, '00000000083', '', 'user_5k19vf7c4o', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (88, '00000000084', '', 'user_5ahdd98xbr', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (89, '00000000085', '', 'user_a5cnfnoopx', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (90, '00000000086', '', 'user_utnmcyfg13', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (91, '00000000087', '', 'user_0k6n8ikb95', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (92, '00000000088', '', 'user_zqk5maqtmi', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (93, '00000000089', '', 'user_9i9suwd3nd', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (94, '00000000090', '', 'user_u0y0ngrdjo', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (95, '00000000091', '', 'user_stvijjwvzu', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (96, '00000000092', '', 'user_7if7tttays', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (97, '00000000093', '', 'user_f9hmz0ngdu', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (98, '00000000094', '', 'user_wuhs2nq9d0', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (99, '00000000095', '', 'user_1u3rlntd5s', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (100, '00000000096', '', 'user_ywe62vhu7u', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (101, '00000000097', '', 'user_rbfpzdt6tg', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (102, '00000000098', '', 'user_jv69l0d1kg', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (103, '00000000099', '', 'user_dg6hwl48r6', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (104, '00000000100', '', 'user_8rwl92pixr', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (105, '00000000101', '', 'user_k5dek2os3m', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (106, '00000000102', '', 'user_kw1nr2scyz', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (107, '00000000103', '', 'user_h81c5g0t7s', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (108, '00000000104', '', 'user_jar6djas5e', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (109, '00000000105', '', 'user_f9x2qm4grh', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (110, '00000000106', '', 'user_mg5h6c4bcu', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (111, '00000000107', '', 'user_hcg7ocbnus', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (112, '00000000108', '', 'user_rsbxx7g2yz', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (113, '00000000109', '', 'user_bi3fhutbd1', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (114, '00000000110', '', 'user_o4pjkkyu3q', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (115, '00000000111', '', 'user_7zfs7g5vqb', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (116, '00000000112', '', 'user_oq71inq541', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (117, '00000000113', '', 'user_u9zoiadq6l', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (118, '00000000114', '', 'user_4elguvu5pz', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (119, '00000000115', '', 'user_90dclmdv94', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (120, '00000000116', '', 'user_v2of3k1liq', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (121, '00000000117', '', 'user_bg04b99iqn', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (122, '00000000118', '', 'user_6fo9sul3q6', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (123, '00000000119', '', 'user_vl7ajjlhnn', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (124, '00000000120', '', 'user_df3kaj5zi1', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (125, '00000000121', '', 'user_yo6iohe5s2', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (126, '00000000122', '', 'user_2iss3wrcm1', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (127, '00000000123', '', 'user_7y8qm8sv4r', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (128, '00000000124', '', 'user_f825rhknpq', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (129, '00000000125', '', 'user_3bigm0aauz', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (130, '00000000126', '', 'user_ib9eo5dtgk', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (131, '00000000127', '', 'user_ci5hhnufj9', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (132, '00000000128', '', 'user_cc56u62rny', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (133, '00000000129', '', 'user_i8fg7azvnt', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (134, '00000000130', '', 'user_bw5dqkv6d9', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (135, '00000000131', '', 'user_1n1o9ri5oz', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (136, '00000000132', '', 'user_1b0zexoldy', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (137, '00000000133', '', 'user_lz9dr6wxkw', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (138, '00000000134', '', 'user_zfpfscu53e', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (139, '00000000135', '', 'user_5kldn59nn9', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (140, '00000000136', '', 'user_p0mjswjh9x', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (141, '00000000137', '', 'user_z4jcqggm11', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (142, '00000000138', '', 'user_pv9yctbxza', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (143, '00000000139', '', 'user_u702tikvol', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (144, '00000000140', '', 'user_sy4a5f3qmy', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (145, '00000000141', '', 'user_n6g293r60l', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (146, '00000000142', '', 'user_uylyp6ttqz', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (147, '00000000143', '', 'user_h2zmzefha3', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (148, '00000000144', '', 'user_5outop6hz2', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (149, '00000000145', '', 'user_vp8l74sadq', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (150, '00000000146', '', 'user_n9ww3of8fg', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (151, '00000000147', '', 'user_rfm7pfgkv8', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (152, '00000000148', '', 'user_h7298xuo0u', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (153, '00000000149', '', 'user_72s0smb2wz', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (154, '00000000150', '', 'user_twhphih9nd', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (155, '00000000151', '', 'user_vfocakn5gl', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (156, '00000000152', '', 'user_tfwe1v2x82', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (157, '00000000153', '', 'user_eyrq375qgg', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (158, '00000000154', '', 'user_rg2obilrot', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (159, '00000000155', '', 'user_rzfwln2aw2', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (160, '00000000156', '', 'user_rzfgzeshe1', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (161, '00000000157', '', 'user_c67s0sjbmv', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (162, '00000000158', '', 'user_fkyp652kkn', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (163, '00000000159', '', 'user_sv1i552okx', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (164, '00000000160', '', 'user_fsrmh6e0d3', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (165, '00000000161', '', 'user_jey7gkjesn', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (166, '00000000162', '', 'user_00xdq55r0f', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (167, '00000000163', '', 'user_wkb6tveg4e', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (168, '00000000164', '', 'user_51ong6aunx', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (169, '00000000165', '', 'user_ke4h0uxthm', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (170, '00000000166', '', 'user_oswyb9opx5', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (171, '00000000167', '', 'user_iy8itbwg6q', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (172, '00000000168', '', 'user_g1mk023p9r', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (173, '00000000169', '', 'user_2507p7kvzs', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (174, '00000000170', '', 'user_piixbanfxl', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (175, '00000000171', '', 'user_w2d2is43jc', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (176, '00000000172', '', 'user_lrk4it56lt', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (177, '00000000173', '', 'user_3273q3j2ft', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (178, '00000000174', '', 'user_ltf42q0vy4', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (179, '00000000175', '', 'user_7npp13snqp', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (180, '00000000176', '', 'user_slxftqmjp9', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (181, '00000000177', '', 'user_il4dsuvdfr', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (182, '00000000178', '', 'user_esm2d4uh7a', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (183, '00000000179', '', 'user_te4prs2y3j', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (184, '00000000180', '', 'user_dycwcufgj0', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (185, '00000000181', '', 'user_jjo4dvsgag', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (186, '00000000182', '', 'user_9opl0t1sd2', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (187, '00000000183', '', 'user_hbm1dnssq6', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (188, '00000000184', '', 'user_tx88zar5cs', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (189, '00000000185', '', 'user_1p206nyupm', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (190, '00000000186', '', 'user_8lnbd2ao5u', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (191, '00000000187', '', 'user_v4uwls1wg7', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (192, '00000000188', '', 'user_z1bkh9lnjj', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (193, '00000000189', '', 'user_r7u852ex1n', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (194, '00000000190', '', 'user_yqr54gdh8t', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (195, '00000000191', '', 'user_x4kngjjng7', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (196, '00000000192', '', 'user_xvtxjocno2', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (197, '00000000193', '', 'user_1zj77q03tf', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (198, '00000000194', '', 'user_0q8yjtlp7a', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (199, '00000000195', '', 'user_nt2ogdyl73', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (200, '00000000196', '', 'user_6w0ex6afsz', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (201, '00000000197', '', 'user_qpm2vyflc3', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (202, '00000000198', '', 'user_dzvf9xujj1', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (203, '00000000199', '', 'user_aiypeaeupd', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (204, '00000000200', '', 'user_5iznj0t5hg', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (205, '00000000201', '', 'user_4t1flvqz2h', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (206, '00000000202', '', 'user_542t36rd41', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (207, '00000000203', '', 'user_kmhowbydu6', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (208, '00000000204', '', 'user_e8nz64jbym', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (209, '00000000205', '', 'user_zjbr3zq6we', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (210, '00000000206', '', 'user_ptk6qaspna', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (211, '00000000207', '', 'user_jei7tqtu1j', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (212, '00000000208', '', 'user_8x7cyv5ey8', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (213, '00000000209', '', 'user_mx3l4tj2jq', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (214, '00000000210', '', 'user_ba6e9l6exg', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (215, '00000000211', '', 'user_vlku3rop6e', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (216, '00000000212', '', 'user_hsff9net6q', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (217, '00000000213', '', 'user_mbaficnzfe', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (218, '00000000214', '', 'user_b3wglh40dk', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (219, '00000000215', '', 'user_dvi1yllk48', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (220, '00000000216', '', 'user_cxv8smu642', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (221, '00000000217', '', 'user_ze5exti1z5', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (222, '00000000218', '', 'user_b6524nuosz', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (223, '00000000219', '', 'user_jw3xmz31ss', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (224, '00000000220', '', 'user_3fqrglyqj0', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (225, '00000000221', '', 'user_uf9dy1kfmg', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (226, '00000000222', '', 'user_nn4ss4oupv', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (227, '00000000223', '', 'user_khse5vlch8', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (228, '00000000224', '', 'user_xfpqrk3hea', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (229, '00000000225', '', 'user_0sfyf9o74l', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (230, '00000000226', '', 'user_936vlojcwy', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (231, '00000000227', '', 'user_wq9m8aqmay', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (232, '00000000228', '', 'user_uqw0c5ilp5', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (233, '00000000229', '', 'user_qjucgt4ar1', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (234, '00000000230', '', 'user_sry5bqf8ev', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (235, '00000000231', '', 'user_9csdwveeh8', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (236, '00000000232', '', 'user_y9kl1yd7fk', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (237, '00000000233', '', 'user_mahwf66irm', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (238, '00000000234', '', 'user_tud2i4itlr', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (239, '00000000235', '', 'user_p1s640kfny', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (240, '00000000236', '', 'user_2tyzfj49r6', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (241, '00000000237', '', 'user_wjswilvpou', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (242, '00000000238', '', 'user_yuushg7x44', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (243, '00000000239', '', 'user_pb0fas6tob', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (244, '00000000240', '', 'user_3k4nn4dhuh', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (245, '00000000241', '', 'user_lljtt3ttml', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (246, '00000000242', '', 'user_weftqlsasg', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (247, '00000000243', '', 'user_1lo78exvpl', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (248, '00000000244', '', 'user_qzbukb32cm', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (249, '00000000245', '', 'user_k80i5kfvoj', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (250, '00000000246', '', 'user_ggx53ve2zp', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (251, '00000000247', '', 'user_yz0fmlzjxv', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (252, '00000000248', '', 'user_jh6epyjgiw', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (253, '00000000249', '', 'user_0k0ly383fy', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (254, '00000000250', '', 'user_ibc8pgs2jc', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (255, '00000000251', '', 'user_ys8yxdm6cr', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (256, '00000000252', '', 'user_7zdagyyymi', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (257, '00000000253', '', 'user_9q7fiiqwzm', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (258, '00000000254', '', 'user_64qzvesiku', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (259, '00000000255', '', 'user_5fi8fsc9e5', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (260, '00000000256', '', 'user_1wo4aktp89', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (261, '00000000257', '', 'user_5mis2rucuh', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (262, '00000000258', '', 'user_pghkcw4cog', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (263, '00000000259', '', 'user_ymh7a5t69k', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (264, '00000000260', '', 'user_58qypl26r3', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (265, '00000000261', '', 'user_oknszihfil', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (266, '00000000262', '', 'user_rx5qu0277b', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (267, '00000000263', '', 'user_4mwekx3q8z', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (268, '00000000264', '', 'user_ie9qzfwu27', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (269, '00000000265', '', 'user_l80r6phxur', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (270, '00000000266', '', 'user_np6iqqeuql', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (271, '00000000267', '', 'user_5c27qgw2o3', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (272, '00000000268', '', 'user_ujpa6juatc', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (273, '00000000269', '', 'user_van4fds7cx', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (274, '00000000270', '', 'user_ox11o9krp9', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (275, '00000000271', '', 'user_c7o3u0usf2', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (276, '00000000272', '', 'user_cq7hojlerq', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (277, '00000000273', '', 'user_kphis0ntao', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (278, '00000000274', '', 'user_nd12v2tdpj', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (279, '00000000275', '', 'user_5far04rjm0', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (280, '00000000276', '', 'user_f33abomjs2', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (281, '00000000277', '', 'user_1qty1oyawt', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (282, '00000000278', '', 'user_9l463o7me2', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (283, '00000000279', '', 'user_0seyfs8ou8', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (284, '00000000280', '', 'user_7uhqt2zf11', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (285, '00000000281', '', 'user_wy2jtbkr1t', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (286, '00000000282', '', 'user_yjf1kbl6r8', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (287, '00000000283', '', 'user_r98pel35gn', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (288, '00000000284', '', 'user_u2eg1jcwvz', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (289, '00000000285', '', 'user_5z7d4fr9ye', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (290, '00000000286', '', 'user_kl0p0ku6zv', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (291, '00000000287', '', 'user_dsdocfa64r', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (292, '00000000288', '', 'user_gbygsd03kc', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (293, '00000000289', '', 'user_dj1xqos2is', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (294, '00000000290', '', 'user_il6yctz040', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (295, '00000000291', '', 'user_y4zn043gvj', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (296, '00000000292', '', 'user_oh9tjoxq8c', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (297, '00000000293', '', 'user_6xlq088asi', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (298, '00000000294', '', 'user_0sepghh66s', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (299, '00000000295', '', 'user_dzo7q333x7', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (300, '00000000296', '', 'user_n7j3j68agt', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (301, '00000000297', '', 'user_b99vc3qr3d', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (302, '00000000298', '', 'user_o2uu01ngfw', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (303, '00000000299', '', 'user_q0yy8pvku3', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (304, '00000000300', '', 'user_lipi4iyiv9', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (305, '00000000301', '', 'user_x2dq9i90ms', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (306, '00000000302', '', 'user_bz9twrcx01', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (307, '00000000303', '', 'user_iun0ocev18', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (308, '00000000304', '', 'user_uob3pxr062', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (309, '00000000305', '', 'user_nxuwi8q3n5', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (310, '00000000306', '', 'user_g6si4hwe4r', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (311, '00000000307', '', 'user_v4xud6pxnh', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (312, '00000000308', '', 'user_n3vq5a4c49', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (313, '00000000309', '', 'user_6qdfn8dkja', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (314, '00000000310', '', 'user_872mdw0ibu', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (315, '00000000311', '', 'user_s426pmlnno', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (316, '00000000312', '', 'user_n7d3fcnlqf', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (317, '00000000313', '', 'user_d1euhpgvjt', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (318, '00000000314', '', 'user_luwqlqye4n', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (319, '00000000315', '', 'user_m9khstqle0', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (320, '00000000316', '', 'user_7u54hoeh5p', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (321, '00000000317', '', 'user_hndxi8iyg7', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (322, '00000000318', '', 'user_csagq8b16v', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (323, '00000000319', '', 'user_sa979r5vfr', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (324, '00000000320', '', 'user_gojbeoieko', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (325, '00000000321', '', 'user_vrxmccmk36', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (326, '00000000322', '', 'user_kwzzzxile8', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (327, '00000000323', '', 'user_8ik6wmzcs3', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (328, '00000000324', '', 'user_x9f4po6eok', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (329, '00000000325', '', 'user_vn0g3rywt0', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (330, '00000000326', '', 'user_0h0hqnoqvv', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (331, '00000000327', '', 'user_ne3rvn4cim', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (332, '00000000328', '', 'user_bz20tomja0', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (333, '00000000329', '', 'user_7k5d8324tm', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (334, '00000000330', '', 'user_5va74it1op', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (335, '00000000331', '', 'user_gc21xkfgph', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (336, '00000000332', '', 'user_rv1o0ousua', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (337, '00000000333', '', 'user_lkp3hk0t8q', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (338, '00000000334', '', 'user_e2kjjqo7ee', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (339, '00000000335', '', 'user_ja24gfl42z', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (340, '00000000336', '', 'user_5sxrarxxd2', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (341, '00000000337', '', 'user_lzilfx23jr', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (342, '00000000338', '', 'user_4healeh2sq', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (343, '00000000339', '', 'user_txh60qz6xe', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (344, '00000000340', '', 'user_ofie8fobtu', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (345, '00000000341', '', 'user_wxfngmqndc', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (346, '00000000342', '', 'user_n11kdqn95y', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (347, '00000000343', '', 'user_7b9etto6jl', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (348, '00000000344', '', 'user_sa23n9pacw', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (349, '00000000345', '', 'user_1lhe46upfz', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (350, '00000000346', '', 'user_jioft4gdiu', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (351, '00000000347', '', 'user_jta7ld4vty', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (352, '00000000348', '', 'user_5tkaejhk7g', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (353, '00000000349', '', 'user_fkoe771g9p', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (354, '00000000350', '', 'user_snv802ujrx', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (355, '00000000351', '', 'user_4szkwdl3hw', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (356, '00000000352', '', 'user_qq4cteo33l', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (357, '00000000353', '', 'user_hwn4ofw0dp', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (358, '00000000354', '', 'user_2r4xhcvxp2', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (359, '00000000355', '', 'user_iphgurk3nk', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (360, '00000000356', '', 'user_ih9kbl5kzb', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (361, '00000000357', '', 'user_2odlf3rqex', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (362, '00000000358', '', 'user_i9jalo3ouw', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (363, '00000000359', '', 'user_whbqd8vhr2', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (364, '00000000360', '', 'user_bzlvvy10mp', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (365, '00000000361', '', 'user_pe7y2zyii7', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (366, '00000000362', '', 'user_cnk071ghc7', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (367, '00000000363', '', 'user_21cue7tpm0', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (368, '00000000364', '', 'user_nidneujm1x', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (369, '00000000365', '', 'user_tx2y3v0pb0', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (370, '00000000366', '', 'user_i8ikz0nufr', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (371, '00000000367', '', 'user_omq8bsw2ij', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (372, '00000000368', '', 'user_ffpuo977gj', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (373, '00000000369', '', 'user_jcgx7mukv0', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (374, '00000000370', '', 'user_gn6k43jfx8', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (375, '00000000371', '', 'user_esfv726lun', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (376, '00000000372', '', 'user_l7vh3qyhnk', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (377, '00000000373', '', 'user_aqo9nsp13v', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (378, '00000000374', '', 'user_45z1cjwo34', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (379, '00000000375', '', 'user_cukuugiquc', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (380, '00000000376', '', 'user_cmzben5ql1', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (381, '00000000377', '', 'user_fm136hckhd', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (382, '00000000378', '', 'user_4neww35d6t', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (383, '00000000379', '', 'user_p4e2t04dl0', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (384, '00000000380', '', 'user_3s22mzjlgl', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (385, '00000000381', '', 'user_kf0pbo00lp', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (386, '00000000382', '', 'user_7tan2lj2jn', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (387, '00000000383', '', 'user_w88q6nof2r', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (388, '00000000384', '', 'user_9aze983wkj', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (389, '00000000385', '', 'user_wtioxpbho1', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (390, '00000000386', '', 'user_yf70g0cjfu', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (391, '00000000387', '', 'user_i1w18vru0l', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (392, '00000000388', '', 'user_6lr3w5npe5', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (393, '00000000389', '', 'user_9n8rjbb9gp', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (394, '00000000390', '', 'user_fe3u4g7p1f', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (395, '00000000391', '', 'user_618vib46zb', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (396, '00000000392', '', 'user_mj4b8uxpu3', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (397, '00000000393', '', 'user_3jq7brld6h', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (398, '00000000394', '', 'user_8577262ob3', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (399, '00000000395', '', 'user_x63u1e3sap', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (400, '00000000396', '', 'user_o2c2l1j9zs', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (401, '00000000397', '', 'user_rtupie4qut', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (402, '00000000398', '', 'user_othsv0bkha', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (403, '00000000399', '', 'user_4wqa1vn3kw', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (404, '00000000400', '', 'user_xmhuythdnn', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (405, '00000000401', '', 'user_alzyibl549', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (406, '00000000402', '', 'user_3nhqsa0htg', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (407, '00000000403', '', 'user_vn81ys9n64', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (408, '00000000404', '', 'user_iz6t7kpxz2', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (409, '00000000405', '', 'user_7gnmjhg1rh', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (410, '00000000406', '', 'user_r2i71mq5lk', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (411, '00000000407', '', 'user_gevxv4bfda', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (412, '00000000408', '', 'user_hqneva0vaz', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (413, '00000000409', '', 'user_8fvquxjm0t', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (414, '00000000410', '', 'user_9u8dxzs9nk', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (415, '00000000411', '', 'user_8mwcrg9ez9', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (416, '00000000412', '', 'user_erzqptr80b', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (417, '00000000413', '', 'user_97xgccgwaf', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (418, '00000000414', '', 'user_5rz6s0zuoh', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (419, '00000000415', '', 'user_8o7cg6rp05', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (420, '00000000416', '', 'user_rhftetybs4', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (421, '00000000417', '', 'user_mjh9uzi92z', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (422, '00000000418', '', 'user_bvaub566b3', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (423, '00000000419', '', 'user_e97b0z12jc', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (424, '00000000420', '', 'user_mcc1pteaw5', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (425, '00000000421', '', 'user_gz1ymib0dl', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (426, '00000000422', '', 'user_owszpn6jem', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (427, '00000000423', '', 'user_nyqxiekdus', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (428, '00000000424', '', 'user_ilr27xnuxu', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (429, '00000000425', '', 'user_mhzftdfxi4', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (430, '00000000426', '', 'user_kavgc8r8f6', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (431, '00000000427', '', 'user_svztbpgr9w', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (432, '00000000428', '', 'user_fdjhoysgy8', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (433, '00000000429', '', 'user_drssks7627', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (434, '00000000430', '', 'user_53kuim78p1', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (435, '00000000431', '', 'user_tpjaw9ygl6', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (436, '00000000432', '', 'user_zlj9ao4lbw', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (437, '00000000433', '', 'user_9nsckyz0k8', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (438, '00000000434', '', 'user_rkyjx5n0k9', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (439, '00000000435', '', 'user_e47mr17jmo', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (440, '00000000436', '', 'user_gdouwxu8bm', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (441, '00000000437', '', 'user_7odu05tcri', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (442, '00000000438', '', 'user_x6dga1y84j', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (443, '00000000439', '', 'user_ubzwoytroz', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (444, '00000000440', '', 'user_brivojp5b1', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (445, '00000000441', '', 'user_q5sluitgii', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (446, '00000000442', '', 'user_bbqazzzawl', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (447, '00000000443', '', 'user_82fbd0oo0u', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (448, '00000000444', '', 'user_87ft14as7t', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (449, '00000000445', '', 'user_diabg787km', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (450, '00000000446', '', 'user_oo1gf0pxln', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (451, '00000000447', '', 'user_4fc1q8u2f3', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (452, '00000000448', '', 'user_hgny53jwpn', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (453, '00000000449', '', 'user_5m75miuy6r', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (454, '00000000450', '', 'user_qx5ohjcayd', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (455, '00000000451', '', 'user_cff2zkpu62', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (456, '00000000452', '', 'user_dsb1rk9dsr', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (457, '00000000453', '', 'user_50h3ylhjnz', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (458, '00000000454', '', 'user_i02f5rjdab', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (459, '00000000455', '', 'user_3vwdqpif1l', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (460, '00000000456', '', 'user_g6xewzg33w', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (461, '00000000457', '', 'user_63u60u6o7f', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (462, '00000000458', '', 'user_m6ikxcr92q', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (463, '00000000459', '', 'user_yzd5lmecur', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (464, '00000000460', '', 'user_m3163uc9al', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (465, '00000000461', '', 'user_1x6f94jq0v', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (466, '00000000462', '', 'user_keo0udy60g', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (467, '00000000463', '', 'user_87y52es2uw', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (468, '00000000464', '', 'user_1zkkz9j0e6', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (469, '00000000465', '', 'user_baznwk8x5q', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (470, '00000000466', '', 'user_b4hnhsmpxw', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (471, '00000000467', '', 'user_1hr6wbd939', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (472, '00000000468', '', 'user_4w7dhr290a', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (473, '00000000469', '', 'user_tkxg6jo3xa', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (474, '00000000470', '', 'user_saosjqptnq', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (475, '00000000471', '', 'user_wjge9hxzfv', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (476, '00000000472', '', 'user_8ex8ynmec4', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (477, '00000000473', '', 'user_beih06msot', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (478, '00000000474', '', 'user_e4tuso2fad', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (479, '00000000475', '', 'user_iolxs2wbfs', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (480, '00000000476', '', 'user_5trre9akf1', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (481, '00000000477', '', 'user_y3l832hamq', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (482, '00000000478', '', 'user_gs7kvt65y8', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (483, '00000000479', '', 'user_8rda39nfpx', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (484, '00000000480', '', 'user_wix6t6g14l', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (485, '00000000481', '', 'user_s2k023vtn7', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (486, '00000000482', '', 'user_qc3nhavb9f', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (487, '00000000483', '', 'user_98eoecfe9s', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (488, '00000000484', '', 'user_kknik7xw80', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (489, '00000000485', '', 'user_17d7bifhpp', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (490, '00000000486', '', 'user_04vbus432n', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (491, '00000000487', '', 'user_3e1xl0tvss', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (492, '00000000488', '', 'user_jpvv20rmfk', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (493, '00000000489', '', 'user_51jd3tfl3e', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (494, '00000000490', '', 'user_agt44szvcb', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (495, '00000000491', '', 'user_pr7icguenq', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (496, '00000000492', '', 'user_2jl0qaecm0', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (497, '00000000493', '', 'user_m1fxzx8i0u', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (498, '00000000494', '', 'user_fh7a1j0vaz', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (499, '00000000495', '', 'user_ty7afbm01v', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (500, '00000000496', '', 'user_bwazk1tt71', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (501, '00000000497', '', 'user_c1wrwmqzfi', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (502, '00000000498', '', 'user_nbfyg2pfql', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (503, '00000000499', '', 'user_h85lj9y0jy', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (504, '00000000500', '', 'user_e0r5gg439j', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (505, '00000000501', '', 'user_k0s8h8v8wt', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (506, '00000000502', '', 'user_0v423qhiz2', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (507, '00000000503', '', 'user_zgze48neoq', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (508, '00000000504', '', 'user_un4nppmh7k', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (509, '00000000505', '', 'user_knr2flv5mr', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (510, '00000000506', '', 'user_cvhg3r8aqj', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (511, '00000000507', '', 'user_92xh46mlff', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (512, '00000000508', '', 'user_vhp8pxmhk6', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (513, '00000000509', '', 'user_hc4c7z9y3k', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (514, '00000000510', '', 'user_03ikpqtn96', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (515, '00000000511', '', 'user_g0l23kj1ta', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (516, '00000000512', '', 'user_hdd1qkfbjy', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (517, '00000000513', '', 'user_vmc478haq2', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (518, '00000000514', '', 'user_g16kk9w1jp', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (519, '00000000515', '', 'user_vlviloabak', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (520, '00000000516', '', 'user_f4t9c9x0qs', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (521, '00000000517', '', 'user_uhd0vskqux', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (522, '00000000518', '', 'user_uidqqwety9', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (523, '00000000519', '', 'user_ijqz4fb077', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (524, '00000000520', '', 'user_d16wfogt38', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (525, '00000000521', '', 'user_50cj7qxejp', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (526, '00000000522', '', 'user_w0mawjfxbf', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (527, '00000000523', '', 'user_vihcs8gddy', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (528, '00000000524', '', 'user_1io84j51kb', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (529, '00000000525', '', 'user_sac23jn0ct', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (530, '00000000526', '', 'user_84saoi0eaq', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (531, '00000000527', '', 'user_bqfd0lusff', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (532, '00000000528', '', 'user_a717jzadbk', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (533, '00000000529', '', 'user_3e6nd805yp', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (534, '00000000530', '', 'user_bgkv3zjjsy', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (535, '00000000531', '', 'user_4lzfuo6hcl', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (536, '00000000532', '', 'user_y748pleoq8', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (537, '00000000533', '', 'user_ciyuki97of', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (538, '00000000534', '', 'user_kaulf89rnl', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (539, '00000000535', '', 'user_h0dan7ux0u', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (540, '00000000536', '', 'user_fvmx4u2re0', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (541, '00000000537', '', 'user_njomftlkps', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (542, '00000000538', '', 'user_2ezx5lxtc4', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (543, '00000000539', '', 'user_161mxzchbt', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (544, '00000000540', '', 'user_f8e3enit63', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (545, '00000000541', '', 'user_j1ygvb30zr', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (546, '00000000542', '', 'user_lskpl9geya', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (547, '00000000543', '', 'user_feww9njnhi', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (548, '00000000544', '', 'user_e8x6u5i9ca', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (549, '00000000545', '', 'user_17al8oqa4w', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (550, '00000000546', '', 'user_nbo1m8bazt', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (551, '00000000547', '', 'user_rqfyp2isyr', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (552, '00000000548', '', 'user_epr1i52q5x', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (553, '00000000549', '', 'user_x154dr8sch', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (554, '00000000550', '', 'user_i5lvnupsu6', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (555, '00000000551', '', 'user_qsnre265gc', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (556, '00000000552', '', 'user_7f3zwt1uso', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (557, '00000000553', '', 'user_qgkrbv1r7p', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (558, '00000000554', '', 'user_b39j58u8ql', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (559, '00000000555', '', 'user_wby0tn39v5', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (560, '00000000556', '', 'user_9vt11wm6wb', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (561, '00000000557', '', 'user_y4rokt5rzh', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (562, '00000000558', '', 'user_lyarwzepjm', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (563, '00000000559', '', 'user_er844jel5s', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (564, '00000000560', '', 'user_2gkdrbu7rd', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (565, '00000000561', '', 'user_fnks15rgap', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (566, '00000000562', '', 'user_fe79dtlbf3', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (567, '00000000563', '', 'user_jrl1kdhopy', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (568, '00000000564', '', 'user_p5h5hfw0h5', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (569, '00000000565', '', 'user_756lckggox', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (570, '00000000566', '', 'user_9w56lad204', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (571, '00000000567', '', 'user_kjfvuonq64', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (572, '00000000568', '', 'user_k1i16oya8x', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (573, '00000000569', '', 'user_z4wz2wq9oj', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (574, '00000000570', '', 'user_jotms6c1vz', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (575, '00000000571', '', 'user_29iu6j1olp', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (576, '00000000572', '', 'user_rfkqpu7bs1', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (577, '00000000573', '', 'user_yecqp8c38k', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (578, '00000000574', '', 'user_1mbkrz4rng', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (579, '00000000575', '', 'user_bx6h4wu47y', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (580, '00000000576', '', 'user_usub0nsxez', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (581, '00000000577', '', 'user_2vvxjpuwgr', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (582, '00000000578', '', 'user_9tmhy4nfm1', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (583, '00000000579', '', 'user_q1gyjoatnm', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (584, '00000000580', '', 'user_vaqe3soyoz', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (585, '00000000581', '', 'user_bz81fj51ul', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (586, '00000000582', '', 'user_pwp8w2oife', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (587, '00000000583', '', 'user_6i8a8jpc4a', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (588, '00000000584', '', 'user_e19oms872y', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (589, '00000000585', '', 'user_7jnvjujuk5', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (590, '00000000586', '', 'user_1brabvuxfp', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (591, '00000000587', '', 'user_w25xjchkmt', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (592, '00000000588', '', 'user_qc38678j1q', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (593, '00000000589', '', 'user_5wqfc087pg', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (594, '00000000590', '', 'user_l921wy6ghf', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (595, '00000000591', '', 'user_qgdwy1c8ya', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (596, '00000000592', '', 'user_2ftowbar49', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (597, '00000000593', '', 'user_e0rqhfdde9', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (598, '00000000594', '', 'user_vpswd32xps', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (599, '00000000595', '', 'user_ec479wdojq', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (600, '00000000596', '', 'user_6kz95u775k', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (601, '00000000597', '', 'user_iyyh1jdjvk', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (602, '00000000598', '', 'user_jbv97r3zcf', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (603, '00000000599', '', 'user_1t7nmmwx2g', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (604, '00000000600', '', 'user_fb8j6mb1cn', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (605, '00000000601', '', 'user_ld0b3fd8uk', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (606, '00000000602', '', 'user_sv8tt0fhb0', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (607, '00000000603', '', 'user_ovqhhaqzfs', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (608, '00000000604', '', 'user_mdybbx800t', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (609, '00000000605', '', 'user_dy1n5yoxhv', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (610, '00000000606', '', 'user_xefu4y7d2d', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (611, '00000000607', '', 'user_4aun9z96dn', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (612, '00000000608', '', 'user_guva8ofunq', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (613, '00000000609', '', 'user_6l4gzaotnf', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (614, '00000000610', '', 'user_ngbcy6a2zk', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (615, '00000000611', '', 'user_dqqj7ti3pd', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (616, '00000000612', '', 'user_5zq4rzlbik', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (617, '00000000613', '', 'user_7e0qi512hf', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (618, '00000000614', '', 'user_jpmnhzwesi', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (619, '00000000615', '', 'user_00xb9uvv0m', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (620, '00000000616', '', 'user_nxn2ldt3gl', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (621, '00000000617', '', 'user_cyd1a9zfqw', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (622, '00000000618', '', 'user_0nhklq4xie', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (623, '00000000619', '', 'user_rtf3z1wptn', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (624, '00000000620', '', 'user_ov4uix8csm', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (625, '00000000621', '', 'user_lxi5i68cdf', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (626, '00000000622', '', 'user_do1slgl1ph', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (627, '00000000623', '', 'user_qj8pbsjpl5', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (628, '00000000624', '', 'user_ygrl56l48d', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (629, '00000000625', '', 'user_maynz9h3vn', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (630, '00000000626', '', 'user_m7qnvuej5k', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (631, '00000000627', '', 'user_ceg7kezzrd', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (632, '00000000628', '', 'user_v7ky9w9v6f', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (633, '00000000629', '', 'user_kk8rzbittq', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (634, '00000000630', '', 'user_mskczihgi8', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (635, '00000000631', '', 'user_0tmadlzf1j', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (636, '00000000632', '', 'user_oeui72807w', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (637, '00000000633', '', 'user_ad49besbbs', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (638, '00000000634', '', 'user_huzzpviaax', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (639, '00000000635', '', 'user_b0p11t8qon', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (640, '00000000636', '', 'user_14k8fje63n', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (641, '00000000637', '', 'user_bl5rc085pr', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (642, '00000000638', '', 'user_938covh4nt', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (643, '00000000639', '', 'user_olt9qfefvw', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (644, '00000000640', '', 'user_bhkdwtkfdg', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (645, '00000000641', '', 'user_we6790rc8v', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (646, '00000000642', '', 'user_wqmiqbrj3a', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (647, '00000000643', '', 'user_ccdo9ncgzt', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (648, '00000000644', '', 'user_pk3l58b3cf', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (649, '00000000645', '', 'user_meqr7dxbog', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (650, '00000000646', '', 'user_x70v1uaf0g', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (651, '00000000647', '', 'user_yijawdxi8k', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (652, '00000000648', '', 'user_qlv8jnv927', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (653, '00000000649', '', 'user_2tkj1s7aex', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (654, '00000000650', '', 'user_5vbfw1gln6', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (655, '00000000651', '', 'user_zseyyi59z2', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (656, '00000000652', '', 'user_8ch1tq5bfp', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (657, '00000000653', '', 'user_gdgb5nbkqn', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (658, '00000000654', '', 'user_rr5448qo4l', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (659, '00000000655', '', 'user_e6zwifzqhw', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (660, '00000000656', '', 'user_7ytv4vd6he', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (661, '00000000657', '', 'user_pc84newj49', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (662, '00000000658', '', 'user_h4wpk3e9ht', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (663, '00000000659', '', 'user_d3vt4vqim8', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (664, '00000000660', '', 'user_eqr14mgaz2', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (665, '00000000661', '', 'user_ldd4kzq961', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (666, '00000000662', '', 'user_w4qu1bb2lk', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (667, '00000000663', '', 'user_0627bn8px3', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (668, '00000000664', '', 'user_64aj20cdf1', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (669, '00000000665', '', 'user_l7u34b3ler', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (670, '00000000666', '', 'user_2ze9tl9994', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (671, '00000000667', '', 'user_m5phoejixm', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (672, '00000000668', '', 'user_8ogdovuirm', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (673, '00000000669', '', 'user_wfk4ebck83', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (674, '00000000670', '', 'user_oupbnni466', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (675, '00000000671', '', 'user_89967wcevq', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (676, '00000000672', '', 'user_xr6g2q08cm', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (677, '00000000673', '', 'user_m313bjckeq', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (678, '00000000674', '', 'user_x25nq1ss14', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (679, '00000000675', '', 'user_jeidzxzp6y', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (680, '00000000676', '', 'user_l7dkffo3n0', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (681, '00000000677', '', 'user_pqio9ol2ln', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (682, '00000000678', '', 'user_k1cbsqi4gt', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (683, '00000000679', '', 'user_p1i9b4p4sv', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (684, '00000000680', '', 'user_07yfm6qtl1', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (685, '00000000681', '', 'user_y3mmmk1kak', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (686, '00000000682', '', 'user_lkxjnwtqa7', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (687, '00000000683', '', 'user_v5w9pm18iq', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (688, '00000000684', '', 'user_364l5poxpw', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (689, '00000000685', '', 'user_trlfkptv3g', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (690, '00000000686', '', 'user_rkheg82tnp', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (691, '00000000687', '', 'user_5zmzrjgo5o', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (692, '00000000688', '', 'user_6uacx6cqhp', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (693, '00000000689', '', 'user_wnats1phoj', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (694, '00000000690', '', 'user_dcm1w7674v', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (695, '00000000691', '', 'user_r7ik7ae272', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (696, '00000000692', '', 'user_xk77qyl4gl', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (697, '00000000693', '', 'user_989d1fsji4', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (698, '00000000694', '', 'user_macs32vcct', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (699, '00000000695', '', 'user_z5mahfpa9r', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (700, '00000000696', '', 'user_tn1bnk3zir', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (701, '00000000697', '', 'user_95ajn6osry', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (702, '00000000698', '', 'user_qff1n375uc', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (703, '00000000699', '', 'user_gdjqlq4i6n', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (704, '00000000700', '', 'user_w6tsnpzfqn', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (705, '00000000701', '', 'user_lqp4c4j2ch', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (706, '00000000702', '', 'user_1raii40ps1', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (707, '00000000703', '', 'user_0r9izz201x', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (708, '00000000704', '', 'user_vlrp22q0rk', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (709, '00000000705', '', 'user_f7kvbzb8i4', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (710, '00000000706', '', 'user_yn8nntyyur', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (711, '00000000707', '', 'user_p58nxqajou', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (712, '00000000708', '', 'user_61msspy26k', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (713, '00000000709', '', 'user_fqb0ch1hh1', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (714, '00000000710', '', 'user_oyq3nszclx', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (715, '00000000711', '', 'user_ggybvkn73t', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (716, '00000000712', '', 'user_po0gph6jgp', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (717, '00000000713', '', 'user_hlzvh6wl1y', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (718, '00000000714', '', 'user_btb024hqic', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (719, '00000000715', '', 'user_wqasvon847', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (720, '00000000716', '', 'user_rdp7fvaz3z', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (721, '00000000717', '', 'user_oh5q9kfkvc', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (722, '00000000718', '', 'user_ae21kmiles', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (723, '00000000719', '', 'user_b1ouyw3sww', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (724, '00000000720', '', 'user_9o5qz4s17l', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (725, '00000000721', '', 'user_6urs1iwti9', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (726, '00000000722', '', 'user_80pnfhyqyi', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (727, '00000000723', '', 'user_mynvmq4zcn', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (728, '00000000724', '', 'user_q09fj27oc4', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (729, '00000000725', '', 'user_v4e7hkfw63', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (730, '00000000726', '', 'user_x4sol5dj4f', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (731, '00000000727', '', 'user_v53dsicdtx', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (732, '00000000728', '', 'user_fcoezs141i', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (733, '00000000729', '', 'user_viv3l4o52c', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (734, '00000000730', '', 'user_8j4m80dj76', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (735, '00000000731', '', 'user_r65xyt3opb', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (736, '00000000732', '', 'user_moi9x442th', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (737, '00000000733', '', 'user_qxkltii6ec', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (738, '00000000734', '', 'user_72vsybd20b', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (739, '00000000735', '', 'user_eai1g9ltu9', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (740, '00000000736', '', 'user_h47ubi7f36', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (741, '00000000737', '', 'user_yxo46519hp', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (742, '00000000738', '', 'user_499diayvwn', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (743, '00000000739', '', 'user_ytomkocl3c', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (744, '00000000740', '', 'user_271mt5x5uo', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (745, '00000000741', '', 'user_h5s36mj609', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (746, '00000000742', '', 'user_sklzx3z3nq', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (747, '00000000743', '', 'user_9v2ikjkwm8', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (748, '00000000744', '', 'user_w5jjd49ipx', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (749, '00000000745', '', 'user_3rzokm18yo', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (750, '00000000746', '', 'user_vm6zz6ejs7', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (751, '00000000747', '', 'user_r494p0jlle', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (752, '00000000748', '', 'user_c50thdpyv0', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (753, '00000000749', '', 'user_hc4qi0sfo2', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (754, '00000000750', '', 'user_w8y4nebzxs', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (755, '00000000751', '', 'user_mxxqu6isy9', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (756, '00000000752', '', 'user_sd3f76mtg3', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (757, '00000000753', '', 'user_6zb026vsmm', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (758, '00000000754', '', 'user_mzya91331l', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (759, '00000000755', '', 'user_adu5gmym2g', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (760, '00000000756', '', 'user_31bidh90w5', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (761, '00000000757', '', 'user_iectlacbk7', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (762, '00000000758', '', 'user_by8vl07035', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (763, '00000000759', '', 'user_n8ii3p3b6z', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (764, '00000000760', '', 'user_eopvczuyzq', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (765, '00000000761', '', 'user_2m36qy9yht', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (766, '00000000762', '', 'user_re1q80zze2', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (767, '00000000763', '', 'user_lelhu217ad', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (768, '00000000764', '', 'user_dyv7ll1h9r', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (769, '00000000765', '', 'user_7zws9wi4cp', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (770, '00000000766', '', 'user_tvseis2smv', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (771, '00000000767', '', 'user_975ls201ra', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (772, '00000000768', '', 'user_0416smxpjc', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (773, '00000000769', '', 'user_dkdw3wuvxt', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (774, '00000000770', '', 'user_d1z5jtfh2g', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (775, '00000000771', '', 'user_yg9r3ws35z', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (776, '00000000772', '', 'user_9cos7jzgmy', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (777, '00000000773', '', 'user_679sq0b6eb', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (778, '00000000774', '', 'user_kzk5m1pgqv', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (779, '00000000775', '', 'user_28qetr02oe', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (780, '00000000776', '', 'user_peazcxx51i', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (781, '00000000777', '', 'user_roghf2lerp', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (782, '00000000778', '', 'user_sth9xhgsoj', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (783, '00000000779', '', 'user_38ejcd1npp', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (784, '00000000780', '', 'user_m0y48rqbxs', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (785, '00000000781', '', 'user_a0f919rrdw', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (786, '00000000782', '', 'user_veddhmnfa7', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (787, '00000000783', '', 'user_ltexwx6bm6', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (788, '00000000784', '', 'user_euqn9si8dg', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (789, '00000000785', '', 'user_wm4s4v0o87', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (790, '00000000786', '', 'user_mthbqaorve', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (791, '00000000787', '', 'user_k63cindeeh', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (792, '00000000788', '', 'user_kz30acb48r', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (793, '00000000789', '', 'user_1jmeyd8a28', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (794, '00000000790', '', 'user_su5oi3kpfx', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (795, '00000000791', '', 'user_4eurdp0387', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (796, '00000000792', '', 'user_orxdegd4d4', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (797, '00000000793', '', 'user_50vxeli8rd', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (798, '00000000794', '', 'user_vqsnl66ot5', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (799, '00000000795', '', 'user_en3q7qyiqb', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (800, '00000000796', '', 'user_0yyk9mnng0', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (801, '00000000797', '', 'user_l48qjtjmxl', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (802, '00000000798', '', 'user_1wvigh2hxq', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (803, '00000000799', '', 'user_gr0bhwfvhu', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (804, '00000000800', '', 'user_qpku5s9nr6', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (805, '00000000801', '', 'user_kyhepj12kd', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (806, '00000000802', '', 'user_3x99ypxvqy', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (807, '00000000803', '', 'user_np8bk7b07w', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (808, '00000000804', '', 'user_dnu8kswk6o', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (809, '00000000805', '', 'user_u01mnauofu', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (810, '00000000806', '', 'user_48sv36r3xs', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (811, '00000000807', '', 'user_6ojf6nhxch', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (812, '00000000808', '', 'user_wd32jqla7r', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (813, '00000000809', '', 'user_zsdxxcpkuq', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (814, '00000000810', '', 'user_ib97xw8nl2', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (815, '00000000811', '', 'user_b7qb56z1p0', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (816, '00000000812', '', 'user_i7jmrgmisg', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (817, '00000000813', '', 'user_5nf21zmos7', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (818, '00000000814', '', 'user_mck6nqe55g', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (819, '00000000815', '', 'user_6xnadvfus7', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (820, '00000000816', '', 'user_450u8mqe4z', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (821, '00000000817', '', 'user_hv55cq5n1w', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (822, '00000000818', '', 'user_qiy3ulbyd0', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (823, '00000000819', '', 'user_sx58542ugn', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (824, '00000000820', '', 'user_9xs0uuyds5', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (825, '00000000821', '', 'user_zveuo0azp4', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (826, '00000000822', '', 'user_qwt4x5faay', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (827, '00000000823', '', 'user_ztzuqeybvp', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (828, '00000000824', '', 'user_kh5n7wfie8', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (829, '00000000825', '', 'user_dwxkvw03b7', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (830, '00000000826', '', 'user_3tyhv91k7p', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (831, '00000000827', '', 'user_0jwdppbvdk', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (832, '00000000828', '', 'user_twx4z08vzb', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (833, '00000000829', '', 'user_lly5v9ibpk', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (834, '00000000830', '', 'user_kkho7xpu2u', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (835, '00000000831', '', 'user_l51d2os1wh', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (836, '00000000832', '', 'user_i6gkyfawkv', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (837, '00000000833', '', 'user_v2k5vdh4he', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (838, '00000000834', '', 'user_7k9ql2go9e', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (839, '00000000835', '', 'user_tnz3f99w2c', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (840, '00000000836', '', 'user_833zw6fgxz', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (841, '00000000837', '', 'user_f4hq0ga1oj', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (842, '00000000838', '', 'user_uxuxrig26t', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (843, '00000000839', '', 'user_grn37re7bg', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (844, '00000000840', '', 'user_5msjf8z2fj', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (845, '00000000841', '', 'user_53x3w7l7mv', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (846, '00000000842', '', 'user_pyolvy8m0v', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (847, '00000000843', '', 'user_12i4hpk09n', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (848, '00000000844', '', 'user_zjhyyt7zfq', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (849, '00000000845', '', 'user_avv8zgw4qk', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (850, '00000000846', '', 'user_khxmnqb6ni', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (851, '00000000847', '', 'user_i80iu0pb5k', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (852, '00000000848', '', 'user_lqkx9uurmj', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (853, '00000000849', '', 'user_ewiswre8fm', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (854, '00000000850', '', 'user_d0nwznn64y', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (855, '00000000851', '', 'user_v7wyz44u6m', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (856, '00000000852', '', 'user_ipkx0z0nno', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (857, '00000000853', '', 'user_64tnyqwxun', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (858, '00000000854', '', 'user_r9bjp3fegg', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (859, '00000000855', '', 'user_i36s8hsq72', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (860, '00000000856', '', 'user_cqe1zvq4dr', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (861, '00000000857', '', 'user_omdgisd0ls', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (862, '00000000858', '', 'user_3mgz8z636y', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (863, '00000000859', '', 'user_ts3qtzwp68', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (864, '00000000860', '', 'user_56seol3kxp', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (865, '00000000861', '', 'user_4x55muo0si', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (866, '00000000862', '', 'user_ny46fscq78', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (867, '00000000863', '', 'user_raano2keb9', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (868, '00000000864', '', 'user_31m00sj2bt', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (869, '00000000865', '', 'user_2ovmzeq4f3', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (870, '00000000866', '', 'user_dis12x5ko3', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (871, '00000000867', '', 'user_jx9defd5pu', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (872, '00000000868', '', 'user_k3u9zems0n', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (873, '00000000869', '', 'user_o84aucm31f', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (874, '00000000870', '', 'user_h4msccd8qo', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (875, '00000000871', '', 'user_6sk051bxed', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (876, '00000000872', '', 'user_1s1r4kks05', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (877, '00000000873', '', 'user_2pfvfdb27x', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (878, '00000000874', '', 'user_k5nxhuil69', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (879, '00000000875', '', 'user_6wu2vujv7x', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (880, '00000000876', '', 'user_05jr9c63o0', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (881, '00000000877', '', 'user_cc2l1lrlw5', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (882, '00000000878', '', 'user_ieeqrlof8f', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (883, '00000000879', '', 'user_6m5ermqkua', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (884, '00000000880', '', 'user_mh99rug0nh', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (885, '00000000881', '', 'user_n55ceoc392', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (886, '00000000882', '', 'user_72vzhk8py3', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (887, '00000000883', '', 'user_bthii5wt36', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (888, '00000000884', '', 'user_mut3q0vunf', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (889, '00000000885', '', 'user_symgsydmbd', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (890, '00000000886', '', 'user_7qs7kedl19', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (891, '00000000887', '', 'user_uwyx1i29m0', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (892, '00000000888', '', 'user_ls2p6sldmi', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (893, '00000000889', '', 'user_1kmmkpegso', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (894, '00000000890', '', 'user_4zp483y1e7', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (895, '00000000891', '', 'user_nr78kan9c3', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (896, '00000000892', '', 'user_0r0m7ngv6x', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (897, '00000000893', '', 'user_lknjznxmau', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (898, '00000000894', '', 'user_v9g6j6h0ah', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (899, '00000000895', '', 'user_wuyim37fx5', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (900, '00000000896', '', 'user_l0lfqjjzs0', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (901, '00000000897', '', 'user_6uyxk7pa4u', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (902, '00000000898', '', 'user_f17o0qymn9', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (903, '00000000899', '', 'user_ogpqk1b39a', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (904, '00000000900', '', 'user_9jpofrgda1', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (905, '00000000901', '', 'user_n298v8udm3', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (906, '00000000902', '', 'user_0biwjc5wwt', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (907, '00000000903', '', 'user_xbbdx6wq53', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (908, '00000000904', '', 'user_nh79qly5ir', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (909, '00000000905', '', 'user_v86oajknbs', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (910, '00000000906', '', 'user_e13odsshad', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (911, '00000000907', '', 'user_6cvwrirdtl', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (912, '00000000908', '', 'user_nqr7bpgz67', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (913, '00000000909', '', 'user_wn1ae0p6gw', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (914, '00000000910', '', 'user_te48rluimb', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (915, '00000000911', '', 'user_p2r85n4k8g', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (916, '00000000912', '', 'user_ca8fdlrbty', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (917, '00000000913', '', 'user_toque00p0i', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (918, '00000000914', '', 'user_uiti5cdbhf', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (919, '00000000915', '', 'user_8pgku7viy8', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (920, '00000000916', '', 'user_cdafki4cwc', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (921, '00000000917', '', 'user_fyyk2yfpk5', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (922, '00000000918', '', 'user_78e1meevls', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (923, '00000000919', '', 'user_qzwls7m33b', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (924, '00000000920', '', 'user_jxuw8ixefk', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (925, '00000000921', '', 'user_1xye60infx', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (926, '00000000922', '', 'user_gvccna2mni', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (927, '00000000923', '', 'user_tftvpegd2c', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (928, '00000000924', '', 'user_6ihh78vpox', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (929, '00000000925', '', 'user_46qroyojdl', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (930, '00000000926', '', 'user_wwi4i2wb77', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (931, '00000000927', '', 'user_s28l0bryil', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (932, '00000000928', '', 'user_4lgib8jvrx', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (933, '00000000929', '', 'user_fczpz5s31b', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (934, '00000000930', '', 'user_3cvkn9pv9w', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (935, '00000000931', '', 'user_wtvk7gx8ar', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (936, '00000000932', '', 'user_yrel6rbyyd', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (937, '00000000933', '', 'user_hmxjnsbnon', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (938, '00000000934', '', 'user_cuxcl0d2oo', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (939, '00000000935', '', 'user_1ax8x9zw0c', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (940, '00000000936', '', 'user_p7v98oe5nm', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (941, '00000000937', '', 'user_m90rt3bwsz', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (942, '00000000938', '', 'user_xhty5jm1hy', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (943, '00000000939', '', 'user_7h88k22eo0', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (944, '00000000940', '', 'user_5a75z9jcqa', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (945, '00000000941', '', 'user_3t0twwq0nh', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (946, '00000000942', '', 'user_861ywr4gfr', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (947, '00000000943', '', 'user_iwkz8k1zpx', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (948, '00000000944', '', 'user_vzmhyoz1ap', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (949, '00000000945', '', 'user_5tmpddukgq', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (950, '00000000946', '', 'user_h6siyam4hb', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (951, '00000000947', '', 'user_n5yqq6mgka', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (952, '00000000948', '', 'user_an9epa7f2r', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (953, '00000000949', '', 'user_5vr0cdy8sz', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (954, '00000000950', '', 'user_xpanlhqjbq', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (955, '00000000951', '', 'user_3cfykc172m', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (956, '00000000952', '', 'user_1n0jceyzim', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (957, '00000000953', '', 'user_4ixi7efxtr', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (958, '00000000954', '', 'user_5adpp336iy', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (959, '00000000955', '', 'user_mflzjd6e6b', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (960, '00000000956', '', 'user_80bwfj72p7', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (961, '00000000957', '', 'user_i3anusitco', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (962, '00000000958', '', 'user_yj4pcsrkl9', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (963, '00000000959', '', 'user_7v9x6gxjdz', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (964, '00000000960', '', 'user_2ahufmnyzp', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (965, '00000000961', '', 'user_1oel6c441t', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (966, '00000000962', '', 'user_qxzcv0ib6g', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (967, '00000000963', '', 'user_9uyh0i8ykg', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (968, '00000000964', '', 'user_tb01d4d9ql', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (969, '00000000965', '', 'user_hwpkx6ovii', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (970, '00000000966', '', 'user_pqd04q9hq2', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (971, '00000000967', '', 'user_4t7wkgkufh', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (972, '00000000968', '', 'user_834e4vzf0e', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (973, '00000000969', '', 'user_pxk4urlnmo', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (974, '00000000970', '', 'user_e3x6n0ff0d', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (975, '00000000971', '', 'user_wxnvsvb5ut', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (976, '00000000972', '', 'user_ehi7k4zpjb', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (977, '00000000973', '', 'user_om0pzyh3z1', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (978, '00000000974', '', 'user_9asdqbe7od', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (979, '00000000975', '', 'user_seuabngxt9', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (980, '00000000976', '', 'user_b0qvb27eiy', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (981, '00000000977', '', 'user_63sjue2tkh', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (982, '00000000978', '', 'user_cc3lvxfr1u', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (983, '00000000979', '', 'user_in37hfw5tk', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (984, '00000000980', '', 'user_jtg0c9tyqn', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (985, '00000000981', '', 'user_qzpipaj50w', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (986, '00000000982', '', 'user_ppnb4ljetq', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (987, '00000000983', '', 'user_zbcui7783k', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (988, '00000000984', '', 'user_ki4dxb9q9b', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (989, '00000000985', '', 'user_27b5dxktn0', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (990, '00000000986', '', 'user_fxvb2av882', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (991, '00000000987', '', 'user_6vp3uflnwm', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (992, '00000000988', '', 'user_7ix7djbg30', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (993, '00000000989', '', 'user_vx8r39tjiu', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (994, '00000000990', '', 'user_l2wdiwule0', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (995, '00000000991', '', 'user_z4qe1up5zx', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (996, '00000000992', '', 'user_bklo4b32lu', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (997, '00000000993', '', 'user_ax0y473ndh', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (998, '00000000994', '', 'user_yx2p44qww3', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (999, '00000000995', '', 'user_bnw9bzib34', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1000, '00000000996', '', 'user_cdj4ojh4pc', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1001, '00000000997', '', 'user_l7o3r96hn3', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1002, '00000000998', '', 'user_zbehzrz279', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1003, '00000000999', '', 'user_tql21zepcx', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1004, '00000001000', '', 'user_jnxnrk8qt0', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1005, '00000001001', '', 'user_8e5twg6q0k', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1006, '00000001002', '', 'user_gfeusukbpp', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1007, '00000001003', '', 'user_sveivfswhn', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1008, '00000001004', '', 'user_qgf4t8jkx0', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1009, '00000001005', '', 'user_4qh6bofkol', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');

-- ----------------------------
-- Table structure for tb_user_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_info`;
CREATE TABLE `tb_user_info`  (
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '主键，用户id',
  `city` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '城市名称',
  `introduce` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '个人介绍，不要超过128个字符',
  `fans` int(8) UNSIGNED NULL DEFAULT 0 COMMENT '粉丝数量',
  `followee` int(8) UNSIGNED NULL DEFAULT 0 COMMENT '关注的人的数量',
  `gender` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '性别，0：男，1：女',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `credits` int(8) UNSIGNED NULL DEFAULT 0 COMMENT '积分',
  `level` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '会员级别，0~9级,0代表未开通会员',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_user_info
-- ----------------------------

-- ----------------------------
-- Table structure for tb_voucher
-- ----------------------------
DROP TABLE IF EXISTS `tb_voucher`;
CREATE TABLE `tb_voucher`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '商铺id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '代金券标题',
  `sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `rules` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '使用规则',
  `pay_value` bigint(10) UNSIGNED NOT NULL COMMENT '支付金额，单位是分。例如200代表2元',
  `actual_value` bigint(10) NOT NULL COMMENT '抵扣金额，单位是分。例如200代表2元',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0,普通券；1,秒杀券',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1,上架; 2,下架; 3,过期',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_voucher
-- ----------------------------
INSERT INTO `tb_voucher` VALUES (1, 1, '50元代金券', '周一至周日均可使用', '全场通用\\n无需预约\\n可无限叠加\\不兑现、不找零\\n仅限堂食', 4750, 5000, 0, 1, '2022-01-04 09:42:39', '2022-01-04 09:43:31');

-- ----------------------------
-- Table structure for tb_voucher_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_voucher_order`;
CREATE TABLE `tb_voucher_order`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '下单的用户id',
  `voucher_id` bigint(20) UNSIGNED NOT NULL COMMENT '购买的代金券id',
  `pay_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '支付方式 1：余额支付；2：支付宝；3：微信',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '订单状态，1：未支付；2：已支付；3：已核销；4：已取消；5：退款中；6：已退款',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '下单时间',
  `pay_time` timestamp NULL DEFAULT NULL COMMENT '支付时间',
  `use_time` timestamp NULL DEFAULT NULL COMMENT '核销时间',
  `refund_time` timestamp NULL DEFAULT NULL COMMENT '退款时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_user_voucher` (`user_id`, `voucher_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_voucher_order
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;

