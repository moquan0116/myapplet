/*
 Navicat Premium Data Transfer

 Source Server         : 47.104.177.158
 Source Server Type    : MySQL
 Source Server Version : 50640
 Source Host           : 47.104.177.158:3306
 Source Schema         : myapplet

 Target Server Type    : MySQL
 Target Server Version : 50640
 File Encoding         : 65001

 Date: 11/12/2018 23:41:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Banner名称，通常作为标识',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Banner描述',
  `delete_time` int(11) NULL DEFAULT NULL,
  `update_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'banner管理表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES (1, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (2, 'test', 'aa', NULL, NULL);
INSERT INTO `banner` VALUES (3, '547s', 'aa', NULL, NULL);
INSERT INTO `banner` VALUES (4, 'swef', 'nhf', NULL, NULL);
INSERT INTO `banner` VALUES (6, '547s', 'aa', NULL, NULL);
INSERT INTO `banner` VALUES (7, '547s', 'aa', NULL, NULL);
INSERT INTO `banner` VALUES (8, '547s', 'aa', NULL, NULL);
INSERT INTO `banner` VALUES (9, '547s', 'aa', NULL, NULL);
INSERT INTO `banner` VALUES (10, '547s', 'aa', NULL, NULL);
INSERT INTO `banner` VALUES (11, '547s', 'aa', NULL, NULL);
INSERT INTO `banner` VALUES (12, '547s', 'aa', NULL, NULL);

-- ----------------------------
-- Table structure for banner_item
-- ----------------------------
DROP TABLE IF EXISTS `banner_item`;
CREATE TABLE `banner_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_id` int(11) NOT NULL COMMENT '外键，关联image表',
  `key_word` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '执行关键字，根据不同的type含义不同',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '跳转类型，可能导向商品，可能导向专题，可能导向其他。0，无导向；1：导向商品;2:导向专题',
  `delete_time` int(11) NULL DEFAULT NULL,
  `banner_id` int(11) NOT NULL COMMENT '外键，关联banner表',
  `update_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'banner子项表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of banner_item
-- ----------------------------
INSERT INTO `banner_item` VALUES (1, 65, '6', 1, NULL, 1, NULL);
INSERT INTO `banner_item` VALUES (2, 2, '25', 1, NULL, 1, NULL);
INSERT INTO `banner_item` VALUES (3, 3, '11', 1, NULL, 1, NULL);
INSERT INTO `banner_item` VALUES (5, 1, '10', 1, NULL, 1, NULL);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分类名称',
  `topic_img_id` int(11) NULL DEFAULT NULL COMMENT '外键，关联image表',
  `delete_time` int(11) NULL DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `update_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品类目' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (2, '果味', 6, NULL, NULL, NULL);
INSERT INTO `category` VALUES (3, '蔬菜', 5, NULL, NULL, NULL);
INSERT INTO `category` VALUES (4, '炒货', 7, NULL, NULL, NULL);
INSERT INTO `category` VALUES (5, '点心', 4, NULL, NULL, NULL);
INSERT INTO `category` VALUES (6, '粗茶', 8, NULL, NULL, NULL);
INSERT INTO `category` VALUES (7, '淡饭', 9, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图片路径',
  `from` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 来自本地，2 来自公网',
  `delete_time` int(11) NULL DEFAULT NULL,
  `update_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '图片总表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES (1, '/banner-1a.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (2, '/banner-2a.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (3, '/banner-3a.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (4, '/category-cake.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (5, '/category-vg.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (6, '/category-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (7, '/category-fry-a.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (8, '/category-tea.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (9, '/category-rice.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (10, '/product-dryfruit@1.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (13, '/product-vg@1.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (14, '/product-rice@6.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (16, '/1@theme.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (17, '/2@theme.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (18, '/3@theme.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (19, '/detail-1@1-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (20, '/detail-2@1-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (21, '/detail-3@1-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (22, '/detail-4@1-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (23, '/detail-5@1-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (24, '/detail-6@1-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (25, '/detail-7@1-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (26, '/detail-8@1-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (27, '/detail-9@1-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (28, '/detail-11@1-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (29, '/detail-10@1-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (31, '/product-rice@1.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (32, '/product-tea@1.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (33, '/product-dryfruit@2.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (36, '/product-dryfruit@3.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (37, '/product-dryfruit@4.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (38, '/product-dryfruit@5.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (39, '/product-dryfruit-a@6.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (40, '/product-dryfruit@7.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (41, '/product-rice@2.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (42, '/product-rice@3.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (43, '/product-rice@4.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (44, '/product-fry@1.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (45, '/product-fry@2.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (46, '/product-fry@3.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (47, '/product-tea@2.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (48, '/product-tea@3.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (49, '/1@theme-head.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (50, '/2@theme-head.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (51, '/3@theme-head.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (52, '/product-cake@1.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (53, '/product-cake@2.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (54, '/product-cake-a@3.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (55, '/product-cake-a@4.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (56, '/product-dryfruit@8.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (57, '/product-fry@4.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (58, '/product-fry@5.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (59, '/product-rice@5.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (60, '/product-rice@7.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (62, '/detail-12@1-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (63, '/detail-13@1-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (65, '/banner-4a.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (66, '/product-vg@4.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (67, '/product-vg@5.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (68, '/product-vg@2.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (69, '/product-vg@3.png', 1, NULL, NULL);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单号',
  `user_id` int(11) NOT NULL COMMENT '外键，用户id，注意并不是openid',
  `delete_time` int(11) NULL DEFAULT NULL,
  `create_time` int(11) NULL DEFAULT NULL,
  `total_price` decimal(6, 2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1:未支付， 2：已支付，3：已发货 , 4: 已支付，但库存不足',
  `snap_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单快照图片',
  `snap_name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单快照名称',
  `total_count` int(11) NOT NULL DEFAULT 0,
  `update_time` int(11) NULL DEFAULT NULL,
  `snap_items` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '订单其他信息快照（json)',
  `snap_address` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址快照',
  `prepay_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单微信支付的预订单id（用于发送模板消息）',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `order_no`(`order_no`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (29, 'B624020885551939', 1, NULL, 1529802088, 0.04, 1, 'http://z.cn/images/product-vg@1.png', '芹菜 半斤等', 4, 1529802088, '[{\"id\":1,\"haveStock\":true,\"count\":2,\"name\":\"\\u82b9\\u83dc \\u534a\\u65a4\",\"totalPrice\":0.02},{\"id\":2,\"haveStock\":true,\"count\":2,\"name\":\"\\u68a8\\u82b1\\u5e26\\u96e8 3\\u4e2a\",\"totalPrice\":0.02}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (30, 'B624021114421854', 1, NULL, 1529802111, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529802111, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (31, 'B624023761150224', 1, NULL, 1529802375, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529802375, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (32, 'B624024474114131', 1, NULL, 1529802447, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529802447, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (33, 'B624025109138035', 1, NULL, 1529802510, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529802510, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (34, 'B624026289126552', 1, NULL, 1529802628, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529802628, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (35, 'B624027398419722', 1, NULL, 1529802739, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529802739, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (36, 'B624027704677357', 1, NULL, 1529802770, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529802770, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (37, 'B624289583389509', 1, NULL, 1529828958, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529828958, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (38, 'B624292434998399', 1, NULL, 1529829243, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529829243, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (39, 'B624296277295111', 1, NULL, 1529829627, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529829627, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (40, 'B624296954613438', 1, NULL, 1529829677, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529829677, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (41, 'B624298025445196', 1, NULL, 1529829721, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529829721, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (42, 'B624299176658495', 1, NULL, 1529829917, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529829917, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (43, 'B624299685513625', 1, NULL, 1529829968, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529829968, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (44, 'B624301232744439', 1, NULL, 1529830122, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529830122, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (45, 'B624302506774751', 1, NULL, 1529830250, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529830250, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (46, 'B624303144378181', 1, NULL, 1529830313, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529830313, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (47, 'B624303387732673', 1, NULL, 1529830338, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529830338, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (48, 'B624307270829617', 1, NULL, 1529830690, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529830690, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (49, 'B624307273802431', 1, NULL, 1529830708, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529830708, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (50, 'B624307276717288', 1, NULL, 1529830713, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529830713, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (51, 'B624307279795498', 1, NULL, 1529830715, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529830715, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (52, 'B624307283826582', 1, NULL, 1529830715, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529830715, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (53, 'B624307286700639', 1, NULL, 1529830715, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529830715, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (54, 'B624307289940830', 1, NULL, 1529830715, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529830715, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (55, 'B624307294220139', 1, NULL, 1529830719, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529830719, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (56, 'B624307344290371', 1, NULL, 1529830734, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529830734, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (57, 'B624308169851917', 1, NULL, 1529830816, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529830816, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (58, 'B624321886980902', 1, NULL, 1529832188, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529832188, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (59, 'B624322353709019', 1, NULL, 1529832234, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529832234, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (60, 'B624322519137034', 1, NULL, 1529832251, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529832251, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (61, 'B624322793688734', 1, NULL, 1529832278, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529832278, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (62, 'B624323097586521', 1, NULL, 1529832309, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529832309, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (63, 'B624323317559135', 1, NULL, 1529832331, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529832331, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (64, 'B624323370956854', 1, NULL, 1529832336, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529832336, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (65, 'B624323535476697', 1, NULL, 1529832353, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529832353, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (66, 'B624323795683565', 1, NULL, 1529832379, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529832379, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (67, 'B624335742372853', 1, NULL, 1529833573, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529833573, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (68, 'B624342016321774', 1, NULL, 1529834201, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529834201, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);
INSERT INTO `order` VALUES (69, 'B624345846953218', 1, NULL, 1529834584, 0.03, 1, 'http://z.cn/images/product-rice@7.png', '深涧木耳 78克等', 3, 1529834584, '[{\"id\":31,\"haveStock\":true,\"count\":2,\"name\":\"\\u6df1\\u6da7\\u6728\\u8033 78\\u514b\",\"totalPrice\":0.02},{\"id\":32,\"haveStock\":true,\"count\":1,\"name\":\"\\u571f\\u8c46 \\u534a\\u65a4\",\"totalPrice\":0.01}]', '{\"id\":3,\"name\":\"zuohe\",\"mobile\":\"15123585569\",\"province\":\"\\u6cb3\\u5357\\u7701\",\"city\":\"\\u8bb8\\u660c\\u5e02\",\"country\":\"\\u79b9\\u5dde\\u53bf\",\"detail\":\"\\u78e8\\u8857\\u4e61\",\"user_id\":1}', NULL);

-- ----------------------------
-- Table structure for order_product
-- ----------------------------
DROP TABLE IF EXISTS `order_product`;
CREATE TABLE `order_product`  (
  `order_id` int(11) NOT NULL COMMENT '联合主键，订单id',
  `product_id` int(11) NOT NULL COMMENT '联合主键，商品id',
  `count` int(11) NOT NULL COMMENT '商品数量',
  `delete_time` int(11) NULL DEFAULT NULL,
  `update_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`, `order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of order_product
-- ----------------------------
INSERT INTO `order_product` VALUES (29, 1, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (29, 2, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (30, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (31, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (32, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (33, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (34, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (35, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (36, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (37, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (38, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (39, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (40, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (41, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (42, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (43, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (44, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (45, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (46, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (47, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (48, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (49, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (50, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (51, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (52, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (53, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (54, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (55, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (56, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (57, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (58, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (59, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (60, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (61, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (62, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (63, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (64, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (65, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (66, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (67, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (68, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (69, 31, 2, NULL, NULL);
INSERT INTO `order_product` VALUES (30, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (31, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (32, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (33, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (34, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (35, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (36, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (37, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (38, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (39, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (40, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (41, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (42, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (43, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (44, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (45, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (46, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (47, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (48, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (49, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (50, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (51, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (52, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (53, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (54, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (55, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (56, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (57, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (58, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (59, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (60, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (61, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (62, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (63, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (64, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (65, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (66, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (67, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (68, 32, 1, NULL, NULL);
INSERT INTO `order_product` VALUES (69, 32, 1, NULL, NULL);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品名称',
  `price` decimal(6, 2) NOT NULL COMMENT '价格,单位：分',
  `stock` int(11) NOT NULL DEFAULT 0 COMMENT '库存量',
  `delete_time` int(11) NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `main_img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主图ID号，这是一个反范式设计，有一定的冗余',
  `from` tinyint(4) NOT NULL DEFAULT 1 COMMENT '图片来自 1 本地 ，2公网',
  `create_time` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) NULL DEFAULT NULL,
  `summary` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '摘要',
  `img_id` int(11) NULL DEFAULT NULL COMMENT '图片外键',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '芹菜 半斤', 0.01, 0, NULL, 3, '/product-vg@1.png', 1, 1528953486, NULL, NULL, 13);
INSERT INTO `product` VALUES (2, '梨花带雨 3个', 0.01, 984, NULL, 2, '/product-dryfruit@1.png', 1, 1528952000, NULL, NULL, 10);
INSERT INTO `product` VALUES (3, '素米 327克', 0.01, 996, NULL, 7, '/product-rice@1.png', 1, 1528951000, NULL, NULL, 31);
INSERT INTO `product` VALUES (4, '红袖枸杞 6克*3袋', 0.01, 998, NULL, 6, '/product-tea@1.png', 1, NULL, NULL, NULL, 32);
INSERT INTO `product` VALUES (5, '春生龙眼 500克', 0.01, 995, NULL, 2, '/product-dryfruit@2.png', 1, NULL, NULL, NULL, 33);
INSERT INTO `product` VALUES (6, '小红的猪耳朵 120克', 0.01, 997, NULL, 5, '/product-cake@2.png', 1, NULL, NULL, NULL, 53);
INSERT INTO `product` VALUES (7, '泥蒿 半斤', 0.01, 998, NULL, 3, '/product-vg@2.png', 1, NULL, NULL, NULL, 68);
INSERT INTO `product` VALUES (8, '夏日芒果 3个', 0.01, 995, NULL, 2, '/product-dryfruit@3.png', 1, NULL, NULL, NULL, 36);
INSERT INTO `product` VALUES (9, '冬木红枣 500克', 0.01, 996, NULL, 2, '/product-dryfruit@4.png', 1, NULL, NULL, NULL, 37);
INSERT INTO `product` VALUES (10, '万紫千凤梨 300克', 0.01, 996, NULL, 2, '/product-dryfruit@5.png', 1, NULL, NULL, NULL, 38);
INSERT INTO `product` VALUES (11, '贵妃笑 100克', 0.01, 994, NULL, 2, '/product-dryfruit-a@6.png', 1, NULL, NULL, NULL, 39);
INSERT INTO `product` VALUES (12, '珍奇异果 3个', 0.01, 999, NULL, 2, '/product-dryfruit@7.png', 1, NULL, NULL, NULL, 40);
INSERT INTO `product` VALUES (13, '绿豆 125克', 0.01, 999, NULL, 7, '/product-rice@2.png', 1, NULL, NULL, NULL, 41);
INSERT INTO `product` VALUES (14, '芝麻 50克', 0.01, 999, NULL, 7, '/product-rice@3.png', 1, NULL, NULL, NULL, 42);
INSERT INTO `product` VALUES (15, '猴头菇 370克', 0.01, 999, NULL, 7, '/product-rice@4.png', 1, NULL, NULL, NULL, 43);
INSERT INTO `product` VALUES (16, '西红柿 1斤', 0.01, 999, NULL, 3, '/product-vg@3.png', 1, NULL, NULL, NULL, 69);
INSERT INTO `product` VALUES (17, '油炸花生 300克', 0.01, 999, NULL, 4, '/product-fry@1.png', 1, NULL, NULL, NULL, 44);
INSERT INTO `product` VALUES (18, '春泥西瓜子 128克', 0.01, 997, NULL, 4, '/product-fry@2.png', 1, NULL, NULL, NULL, 45);
INSERT INTO `product` VALUES (19, '碧水葵花籽 128克', 0.01, 999, NULL, 4, '/product-fry@3.png', 1, 1528955000, NULL, NULL, 46);
INSERT INTO `product` VALUES (20, '碧螺春 12克*3袋', 0.01, 999, NULL, 6, '/product-tea@2.png', 1, NULL, NULL, NULL, 47);
INSERT INTO `product` VALUES (21, '西湖龙井 8克*3袋', 0.01, 998, NULL, 6, '/product-tea@3.png', 1, NULL, NULL, NULL, 48);
INSERT INTO `product` VALUES (22, '梅兰清花糕 1个', 0.01, 997, NULL, 5, '/product-cake-a@3.png', 1, NULL, NULL, NULL, 54);
INSERT INTO `product` VALUES (23, '清凉薄荷糕 1个', 0.01, 998, NULL, 5, '/product-cake-a@4.png', 1, NULL, NULL, NULL, 55);
INSERT INTO `product` VALUES (25, '小明的妙脆角 120克', 0.01, 999, NULL, 5, '/product-cake@1.png', 1, NULL, NULL, NULL, 52);
INSERT INTO `product` VALUES (26, '红衣青瓜 混搭160克', 0.01, 999, NULL, 2, '/product-dryfruit@8.png', 1, NULL, NULL, NULL, 56);
INSERT INTO `product` VALUES (27, '锈色瓜子 100克', 0.01, 998, NULL, 4, '/product-fry@4.png', 1, NULL, NULL, NULL, 57);
INSERT INTO `product` VALUES (28, '春泥花生 200克', 0.01, 999, NULL, 4, '/product-fry@5.png', 1, NULL, NULL, NULL, 58);
INSERT INTO `product` VALUES (29, '冰心鸡蛋 2个', 0.01, 999, NULL, 7, '/product-rice@5.png', 1, NULL, NULL, NULL, 59);
INSERT INTO `product` VALUES (30, '八宝莲子 200克', 0.01, 999, NULL, 7, '/product-rice@6.png', 1, NULL, NULL, NULL, 14);
INSERT INTO `product` VALUES (31, '深涧木耳 78克', 0.01, 999, NULL, 7, '/product-rice@7.png', 1, NULL, NULL, NULL, 60);
INSERT INTO `product` VALUES (32, '土豆 半斤', 0.01, 999, NULL, 3, '/product-vg@4.png', 1, NULL, NULL, NULL, 66);
INSERT INTO `product` VALUES (33, '青椒 半斤', 0.01, 999, NULL, 3, '/product-vg@5.png', 1, NULL, NULL, NULL, 67);

-- ----------------------------
-- Table structure for product_image
-- ----------------------------
DROP TABLE IF EXISTS `product_image`;
CREATE TABLE `product_image`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_id` int(11) NOT NULL COMMENT '外键，关联图片表',
  `delete_time` int(11) NULL DEFAULT NULL COMMENT '状态，主要表示是否删除，也可以扩展其他状态',
  `order` int(11) NOT NULL DEFAULT 0 COMMENT '图片排序序号',
  `product_id` int(11) NOT NULL COMMENT '商品id，外键',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product_image
-- ----------------------------
INSERT INTO `product_image` VALUES (4, 19, NULL, 1, 11);
INSERT INTO `product_image` VALUES (5, 20, NULL, 2, 11);
INSERT INTO `product_image` VALUES (6, 21, NULL, 3, 11);
INSERT INTO `product_image` VALUES (7, 22, NULL, 4, 11);
INSERT INTO `product_image` VALUES (8, 23, NULL, 5, 11);
INSERT INTO `product_image` VALUES (9, 24, NULL, 6, 11);
INSERT INTO `product_image` VALUES (10, 25, NULL, 7, 11);
INSERT INTO `product_image` VALUES (11, 26, NULL, 8, 11);
INSERT INTO `product_image` VALUES (12, 27, NULL, 9, 11);
INSERT INTO `product_image` VALUES (13, 28, NULL, 11, 11);
INSERT INTO `product_image` VALUES (14, 29, NULL, 10, 11);
INSERT INTO `product_image` VALUES (18, 62, NULL, 12, 11);
INSERT INTO `product_image` VALUES (19, 63, NULL, 13, 11);

-- ----------------------------
-- Table structure for product_property
-- ----------------------------
DROP TABLE IF EXISTS `product_property`;
CREATE TABLE `product_property`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '详情属性名称',
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '详情属性',
  `product_id` int(11) NOT NULL COMMENT '商品id，外键',
  `delete_time` int(11) NULL DEFAULT NULL,
  `update_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product_property
-- ----------------------------
INSERT INTO `product_property` VALUES (1, '品名', '杨梅', 11, NULL, NULL);
INSERT INTO `product_property` VALUES (2, '口味', '青梅味 雪梨味 黄桃味 菠萝味', 11, NULL, NULL);
INSERT INTO `product_property` VALUES (3, '产地', '火星', 11, NULL, NULL);
INSERT INTO `product_property` VALUES (4, '保质期', '180天', 11, NULL, NULL);
INSERT INTO `product_property` VALUES (5, '品名', '梨子', 2, NULL, NULL);
INSERT INTO `product_property` VALUES (6, '产地', '金星', 2, NULL, NULL);
INSERT INTO `product_property` VALUES (7, '净含量', '100g', 2, NULL, NULL);
INSERT INTO `product_property` VALUES (8, '保质期', '10天', 2, NULL, NULL);

-- ----------------------------
-- Table structure for theme
-- ----------------------------
DROP TABLE IF EXISTS `theme`;
CREATE TABLE `theme`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '专题名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '专题描述',
  `topic_img_id` int(11) NOT NULL COMMENT '主题图，外键',
  `delete_time` int(11) NULL DEFAULT NULL,
  `head_img_id` int(11) NOT NULL COMMENT '专题列表页，头图',
  `update_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '主题信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of theme
-- ----------------------------
INSERT INTO `theme` VALUES (1, '专题栏位一', '美味水果世界', 16, NULL, 49, NULL);
INSERT INTO `theme` VALUES (2, '专题栏位二', '新品推荐', 17, NULL, 50, NULL);
INSERT INTO `theme` VALUES (3, '专题栏位三', '做个干物女', 18, NULL, 18, NULL);

-- ----------------------------
-- Table structure for theme_product
-- ----------------------------
DROP TABLE IF EXISTS `theme_product`;
CREATE TABLE `theme_product`  (
  `theme_id` int(11) NOT NULL COMMENT '主题外键',
  `product_id` int(11) NOT NULL COMMENT '商品外键',
  PRIMARY KEY (`theme_id`, `product_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '主题所包含的商品' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of theme_product
-- ----------------------------
INSERT INTO `theme_product` VALUES (1, 2);
INSERT INTO `theme_product` VALUES (1, 5);
INSERT INTO `theme_product` VALUES (1, 8);
INSERT INTO `theme_product` VALUES (1, 10);
INSERT INTO `theme_product` VALUES (1, 12);
INSERT INTO `theme_product` VALUES (2, 1);
INSERT INTO `theme_product` VALUES (2, 2);
INSERT INTO `theme_product` VALUES (2, 3);
INSERT INTO `theme_product` VALUES (2, 5);
INSERT INTO `theme_product` VALUES (2, 6);
INSERT INTO `theme_product` VALUES (2, 16);
INSERT INTO `theme_product` VALUES (2, 33);
INSERT INTO `theme_product` VALUES (3, 15);
INSERT INTO `theme_product` VALUES (3, 18);
INSERT INTO `theme_product` VALUES (3, 19);
INSERT INTO `theme_product` VALUES (3, 27);
INSERT INTO `theme_product` VALUES (3, 30);
INSERT INTO `theme_product` VALUES (3, 31);

-- ----------------------------
-- Table structure for third_app
-- ----------------------------
DROP TABLE IF EXISTS `third_app`;
CREATE TABLE `third_app`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '应用app_id',
  `app_secret` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '应用secret',
  `app_description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '应用程序描述',
  `scope` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '应用权限',
  `scope_description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限描述',
  `delete_time` int(11) NULL DEFAULT NULL,
  `update_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '访问API的各应用账号密码表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of third_app
-- ----------------------------
INSERT INTO `third_app` VALUES (1, 'moquan', '123456789a', 'CMS', '32', 'Super', NULL, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `extend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `delete_time` int(11) NULL DEFAULT NULL,
  `create_time` int(11) NULL DEFAULT NULL COMMENT '注册时间',
  `update_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `openid`(`openid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'ogVUT0QH6dp_1p9w27YKlJyiwoMY', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for user_address
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收获人姓名',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号',
  `province` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市',
  `country` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区',
  `detail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `delete_time` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL COMMENT '外键',
  `update_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_address
-- ----------------------------
INSERT INTO `user_address` VALUES (2, 'luopeng', '18782933565', '四川123456', '西昌123', '凉山州', '详细地址', NULL, 6, NULL);
INSERT INTO `user_address` VALUES (3, 'zuohe', '15123585569', '河南省', '许昌市', '禹州县', '磨街乡', NULL, 1, NULL);

SET FOREIGN_KEY_CHECKS = 1;
