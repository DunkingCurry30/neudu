/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 26/08/2019 18:55:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `a_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a_account` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `a_pwd` varchar(65) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `a_email` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `a_mark` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`a_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1a4c439da601b74ad7c4c9bfd813cf3a', 'Jerry', '^<r32q73n84967aneu1jr0n8uvvp3ch4e4->_', 'Jerry@qq.com', '0');
INSERT INTO `account` VALUES ('b052490aac14e1ea0ca486b9d64c6749', 'admin', '^<9jl4rpbfau4avln7gf6lk8tms8lr16v5->_', 'b@qq.com', '1');
INSERT INTO `account` VALUES ('cf67a846fcb4949aafa422f6441ce5e2', 'Tony', '^<j68ov8ffq1ac70tqsia0jtdcjuvdug52>_', '12345@qq.com', '0');
INSERT INTO `account` VALUES ('f281545be4e48b5bd7e4b70fc003095c', 'Tom', '^<r32q73n84967aneu1jr0n8uvvp3ch4e4->_', '12345@qq.com', '0');

-- ----------------------------
-- Table structure for account_menu
-- ----------------------------
DROP TABLE IF EXISTS `account_menu`;
CREATE TABLE `account_menu`  (
  `a_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `m_id` int(11) NOT NULL,
  PRIMARY KEY (`a_id`, `m_id`) USING BTREE,
  INDEX `FK_acconut_emnu2`(`m_id`) USING BTREE,
  CONSTRAINT `FK_acconut_emnu` FOREIGN KEY (`a_id`) REFERENCES `account` (`a_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_acconut_emnu2` FOREIGN KEY (`m_id`) REFERENCES `menu` (`m_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of account_menu
-- ----------------------------
INSERT INTO `account_menu` VALUES ('1a4c439da601b74ad7c4c9bfd813cf3a', 1);
INSERT INTO `account_menu` VALUES ('b052490aac14e1ea0ca486b9d64c6749', 1);
INSERT INTO `account_menu` VALUES ('f281545be4e48b5bd7e4b70fc003095c', 1);
INSERT INTO `account_menu` VALUES ('b052490aac14e1ea0ca486b9d64c6749', 2);
INSERT INTO `account_menu` VALUES ('1a4c439da601b74ad7c4c9bfd813cf3a', 3);
INSERT INTO `account_menu` VALUES ('b052490aac14e1ea0ca486b9d64c6749', 3);
INSERT INTO `account_menu` VALUES ('cf67a846fcb4949aafa422f6441ce5e2', 3);
INSERT INTO `account_menu` VALUES ('f281545be4e48b5bd7e4b70fc003095c', 3);
INSERT INTO `account_menu` VALUES ('1a4c439da601b74ad7c4c9bfd813cf3a', 4);
INSERT INTO `account_menu` VALUES ('b052490aac14e1ea0ca486b9d64c6749', 4);
INSERT INTO `account_menu` VALUES ('cf67a846fcb4949aafa422f6441ce5e2', 4);
INSERT INTO `account_menu` VALUES ('f281545be4e48b5bd7e4b70fc003095c', 4);
INSERT INTO `account_menu` VALUES ('b052490aac14e1ea0ca486b9d64c6749', 5);

-- ----------------------------
-- Table structure for chargeitems
-- ----------------------------
DROP TABLE IF EXISTS `chargeitems`;
CREATE TABLE `chargeitems`  (
  `c_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收费项目编号',
  `c_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目名称',
  `c_format` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格',
  `c_before_price` float(10, 2) NULL DEFAULT NULL COMMENT '优惠前单价',
  `c_after_price` float(10, 2) NULL DEFAULT NULL COMMENT '优惠后单价',
  `c_amount` int(255) NULL DEFAULT NULL COMMENT '开立数量',
  `c_unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位',
  `c_return_amount` int(255) NULL DEFAULT NULL COMMENT '可退数量',
  `c_set_return_amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '退费数量',
  `c_return_price` float(10, 2) NULL DEFAULT NULL COMMENT '退费金额',
  `c_after_return_price` float(10, 2) NULL DEFAULT NULL COMMENT '优惠后退费金额',
  `c_mark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发药标识',
  `u_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `p_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单据编号',
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of chargeitems
-- ----------------------------
INSERT INTO `chargeitems` VALUES ('19b490d6-599e-48ef-b20a-94e7adc8cdbb', '阿莫西林', '板', 106.00, 31.80, 4, '粒', 4, '未退', 0.00, 0.00, '已发', '周小华', '201908201710010');
INSERT INTO `chargeitems` VALUES ('9bea3c20-9988-47cf-bb8f-e06c5308a35a', '小苏打', '盒', 35.00, 35.00, 34, '瓶', 34, '未退', 0.00, 0.00, '已发', '周小华', '201908201710010');
INSERT INTO `chargeitems` VALUES ('b05b07e9-3c40-4076-a7b9-0c0248911f6a', '青霉素', '盒', 18.00, 5.40, 1, '袋', 1, '未退', 0.00, 0.00, '已发', '王小明', '201908201710011');
INSERT INTO `chargeitems` VALUES ('c6551309-093e-4fc0-834f-8eda55bb9174', '阿莫西林', '板', 106.00, 42.40, 3, '粒', 3, '未退', 0.00, 0.00, '已发', '周小华', '201908201710010');
INSERT INTO `chargeitems` VALUES ('m4a1', '小苏打', '瓶', 35.00, 28.00, 1, '瓶', 1, '未退', 35.00, 28.00, '已发', '王小明', '201908201710011');
INSERT INTO `chargeitems` VALUES ('m82a1', '青霉素', '盒', 18.00, 10.00, 2, '粒', 2, '未退', 36.00, 20.00, '已发', '周小华', '201908201710010');

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `d_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `d_name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `d_mkar` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`d_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1b8c9bb4c352e6ea52c4abe08e159bfa', '眼科', '0');
INSERT INTO `dept` VALUES ('434c38360362389b20447ce81875a97b', '儿科', '0');
INSERT INTO `dept` VALUES ('79c4c893730485dbfe941601a0f795bd', '内科', '0');
INSERT INTO `dept` VALUES ('928abd5d26b95998e2b4e48efd24f60c', '外科', '0');

-- ----------------------------
-- Table structure for doctor
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor`  (
  `do_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `do_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `do_d_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`do_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES ('3f6f4316-3386-4ebc-b8ef-17338d14ae9a', '老中医', '434c38360362389b20447ce81875a97b');
INSERT INTO `doctor` VALUES ('90880339-3f61-4318-b45f-9885de44e20f', '华佗', '928abd5d26b95998e2b4e48efd24f60c');
INSERT INTO `doctor` VALUES ('912d21c5-8c1a-464b-93f3-cb467c0a93e9', '李时珍', '79c4c893730485dbfe941601a0f795bd');
INSERT INTO `doctor` VALUES ('acfd2e54-eebc-4194-8776-b875530dfc92', '光博士', '1b8c9bb4c352e6ea52c4abe08e159bfa');

-- ----------------------------
-- Table structure for drugs
-- ----------------------------
DROP TABLE IF EXISTS `drugs`;
CREATE TABLE `drugs`  (
  `dr_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dr_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dr_money` float(10, 0) NULL DEFAULT NULL,
  `dr_unit` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dr_mark` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dr_format` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`dr_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of drugs
-- ----------------------------
INSERT INTO `drugs` VALUES ('001', '小苏打', 35, '瓶', '0', '盒');
INSERT INTO `drugs` VALUES ('002', '青霉素', 18, '袋', '0', '盒');
INSERT INTO `drugs` VALUES ('003', '阿莫西林', 106, '粒', '0', '板');

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job`  (
  `j_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `j_name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `j_mkar` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `d_j_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`j_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES ('58d50383feb234cabbc47c1934951501', '医生', '0', NULL);
INSERT INTO `job` VALUES ('59cc3e6cdd2cb0383a24742e61d442dc', '护士', '0', NULL);
INSERT INTO `job` VALUES ('dec56b8e81d23b79e4b4272a738263be', '超级管理员', '0', NULL);

-- ----------------------------
-- Table structure for medicaltypes
-- ----------------------------
DROP TABLE IF EXISTS `medicaltypes`;
CREATE TABLE `medicaltypes`  (
  `mt_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mt_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mt_mkar` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`mt_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of medicaltypes
-- ----------------------------
INSERT INTO `medicaltypes` VALUES ('3e2b9fad79a1ca7a24240ca2245f4e79', '老人', '0');
INSERT INTO `medicaltypes` VALUES ('5c1f3cbdd93215c94ca44e6102de16c6', '公务员', '0');
INSERT INTO `medicaltypes` VALUES ('60ff30b6e314ed880f844b03536eedd0', '残疾人', '0');
INSERT INTO `medicaltypes` VALUES ('66d878eb8c4def6b6d74836d45fcf2ee', '军人', '0');
INSERT INTO `medicaltypes` VALUES ('78699dcc9cb4fc8866a4634f9af7168b', '儿童', '0');
INSERT INTO `medicaltypes` VALUES ('9712d2bcff724ef855d40f38c0ac6bf0', '成人', '0');
INSERT INTO `medicaltypes` VALUES ('971587f6c13f4a6869c40621a3663503', '外籍人', '0');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `m_style` varchar(68) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `m_url` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `m_pr_id` int(11) NULL DEFAULT NULL,
  `m_mark` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '门诊管理', '<i class=\"icon-interface-windows\"></i>', NULL, 0, '0');
INSERT INTO `menu` VALUES (2, '门诊挂号', '<i class=\"icon-line-chart\"></i>', 'GuaHaoServlet', 1, '0');
INSERT INTO `menu` VALUES (3, '门诊收费', '<i class=\"fa fa-bar-chart\"></i>', 'searchFeeServlet', 1, '0');
INSERT INTO `menu` VALUES (4, '门诊退费', '<i class=\"icon icon-check\"></i>', 'RefundServlet', 1, '0');
INSERT INTO `menu` VALUES (5, '门诊退号', '<i class=\"icon icon-list-1\"></i>', 'ToTuiHaoServlet', 1, '0');

-- ----------------------------
-- Table structure for number_message
-- ----------------------------
DROP TABLE IF EXISTS `number_message`;
CREATE TABLE `number_message`  (
  `n_u_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `n_u_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `n_u_sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `n_u_age` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `n_u_medicine_number` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `n_u_date` datetime(0) NULL DEFAULT NULL,
  `n_u_id_number` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `n_u_adder` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jiesuantype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yiliaotype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `haobietype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `keshitype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yishengtype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `laiyuantype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kanzhendate` datetime(0) NULL DEFAULT NULL,
  `money` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ns_numbet_date` datetime(0) NULL DEFAULT NULL,
  `mssage_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`n_u_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of number_message
-- ----------------------------
INSERT INTO `number_message` VALUES ('11f86cc6-6ef0-4dda-bf95-7d5a6b0e1fd5', '周小华', '女', '22', '4353535', '1997-07-01 17:02:32', '110101199003078355', '中国香港', '医保', '公务员', '专家', '眼科', NULL, '电话预约', '2019-08-19 00:00:00', '23', '2019-08-26 21:47:36', '201908262147036', '201908262147036');
INSERT INTO `number_message` VALUES ('24ae52be-1c00-45aa-8db8-4e9935392838', '王小明', '男', '31', '3242424', '2019-08-25 17:06:44', '110101199003076595', '天安门', '自付', '公务员', '专家', '内科', NULL, '微信摇一摇', '2019-08-14 00:00:00', '23', '2019-08-20 17:10:11', '201908201710011', '201908201710011');
INSERT INTO `number_message` VALUES ('683496b0-4f8e-49fe-8fb1-640079faac6e', '周小华', '男', '22', '4353535', '2019-08-25 17:06:44', '110101199003078355', '中国香港', '自付', '公务员', '专家', '内科', NULL, '微信摇一摇', '2019-08-14 00:00:00', '23', '2019-08-20 17:10:10', '201908201710010', '201908201710010');
INSERT INTO `number_message` VALUES ('919efa2d-e755-41c5-b063-109ea50ed1e4', '周小华', '女', '22', '4353535', '1997-07-01 17:02:32', '110101199003078355', '中国香港', '医保', '老人', '专家', '内科', NULL, '电话预约', '2019-08-24 00:00:00', '22', '2019-08-24 16:03:51', '201908241603051', '201908241603051');
INSERT INTO `number_message` VALUES ('a64f725e-5486-44d6-ae4e-17f920acc264', '周小华', '女', '22', '4353535', '1997-07-01 17:02:32', '110101199003078355', '中国香港', '医保', '老人', '专家', '眼科', NULL, '电话预约', '2019-07-29 00:00:00', '30', '2019-08-24 18:45:43', '201908241845043', '201908241845043');

-- ----------------------------
-- Table structure for numbertypes
-- ----------------------------
DROP TABLE IF EXISTS `numbertypes`;
CREATE TABLE `numbertypes`  (
  `nt_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nt_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nt_mkar` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`nt_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of numbertypes
-- ----------------------------
INSERT INTO `numbertypes` VALUES ('16095b12a200a62bbd14a42853294fa0', '专家', '0');
INSERT INTO `numbertypes` VALUES ('e54524844b0c63fa2714f6c54abe2c94', '普通', '0');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `o_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `o_number` int(11) NULL DEFAULT NULL,
  `o_orally_number` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `o_mark` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `o_d_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `o_tota_moneryl` float NULL DEFAULT NULL,
  `o_dr_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `o_ns_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`o_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for payment
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment`  (
  `p_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发票编号',
  `p_total_money` float(10, 2) NULL DEFAULT NULL COMMENT '总金额',
  `p_money` float(10, 2) NULL DEFAULT NULL COMMENT '实付金额',
  `p_money1` float(10, 2) NULL DEFAULT NULL COMMENT '现金支付',
  `p_money2` float(10, 2) NULL DEFAULT NULL COMMENT '账户支付',
  `p_return_money` float(10, 2) NULL DEFAULT NULL COMMENT '报销金额',
  `p_mark` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付标识',
  `p_o_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收费项目编号',
  `u_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`p_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of payment
-- ----------------------------
INSERT INTO `payment` VALUES ('201908201710010', 35.00, 30.00, 15.00, 15.00, 5.00, '0', '001', '周小华');
INSERT INTO `payment` VALUES ('201908201710011', 67.50, 43.50, 40.00, 3.50, 24.00, '0', '003', '王小明');

-- ----------------------------
-- Table structure for paymenttypes
-- ----------------------------
DROP TABLE IF EXISTS `paymenttypes`;
CREATE TABLE `paymenttypes`  (
  `pt_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pt_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pt_mark` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pt_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of paymenttypes
-- ----------------------------
INSERT INTO `paymenttypes` VALUES ('20574791fafedc8a8194ec81e6a30f72', '医保', '0');
INSERT INTO `paymenttypes` VALUES ('c23d0bfb76a1992a42a4c23a5673ddaf', '自付', '1');
INSERT INTO `paymenttypes` VALUES ('d34bfed581732dfad5441d7f50b292fb', '农保', '2');

-- ----------------------------
-- Table structure for registertypes
-- ----------------------------
DROP TABLE IF EXISTS `registertypes`;
CREATE TABLE `registertypes`  (
  `rt_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rt_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rt_mkar` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`rt_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of registertypes
-- ----------------------------
INSERT INTO `registertypes` VALUES ('16095b12a200a62bbd14a42853294fa0', '专家', '0');
INSERT INTO `registertypes` VALUES ('e54524844b0c63fa2714f6c54abe2c94', '普通', '0');

-- ----------------------------
-- Table structure for sourcenumber
-- ----------------------------
DROP TABLE IF EXISTS `sourcenumber`;
CREATE TABLE `sourcenumber`  (
  `sn_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sn_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sn_mkar` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sn_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sourcenumber
-- ----------------------------
INSERT INTO `sourcenumber` VALUES ('7ef63df4113490cbd6c4facaecd7f1c6', '窗口挂号', '0');
INSERT INTO `sourcenumber` VALUES ('93a27d34860e757b90b45dd8a0da0ad9', '电话预约', '0');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `u_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `u_sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `u_date` datetime(0) NULL DEFAULT NULL,
  `u_medicine_number` int(50) NULL DEFAULT NULL,
  `u_id_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `u_adder` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `a_u_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `j_u_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `d_u_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `u_age` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `u_mark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('7b27ef77-4993-4bb6-a6ef-97770bd34ac7', NULL, NULL, NULL, NULL, NULL, NULL, 'f281545be4e48b5bd7e4b70fc003095c', '58d50383feb234cabbc47c1934951501', NULL, NULL, NULL);
INSERT INTO `users` VALUES ('81f17b14-0427-43b1-8da5-2ca08e5f84df', NULL, NULL, NULL, NULL, NULL, NULL, '1a4c439da601b74ad7c4c9bfd813cf3a', '58d50383feb234cabbc47c1934951501', NULL, NULL, NULL);
INSERT INTO `users` VALUES ('96f22407-ff6d-4635-b8df-6d2774542368', '周小华', '女', '1997-07-01 17:02:32', 4353535, '110101199003078355', '中国香港', 'cf67a846fcb4949aafa422f6441ce5e2', '58d50383feb234cabbc47c1934951501', NULL, '22', '0');
INSERT INTO `users` VALUES ('b369b72e-e216-4970-a07a-66d5f0860b4b', '迪丽热巴', '女', '2019-08-21 17:12:36', 423424, '110101191103076595', '城堡', '59cc3e6cdd2cb0383a24742e61d442dc', '59cc3e6cdd2cb0383a24742e61d442dc', NULL, '53', '0');
INSERT INTO `users` VALUES ('d0928924-46bc-4ff3-9a75-75d6ebb86188', '王小明', '男', '1988-08-25 17:06:44', 3242424, '110101199003076595', '天安门', 'b052490aac14e1ea0ca486b9d64c6749', 'dec56b8e81d23b79e4b4272a738263be', NULL, '31', '0');

SET FOREIGN_KEY_CHECKS = 1;
