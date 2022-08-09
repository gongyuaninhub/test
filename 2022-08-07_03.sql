
DROP TABLE IF EXISTS `yygl_workorder_type_relationship`;
CREATE TABLE `yygl_workorder_type_relationship`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主键',
  `work_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '工单类别',
  `business_type_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '工单类别的uuid，注意测试环境和生产环境不一样',
  `work_order_type_lev1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '一级业务类型',
  `work_order_type_lev2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '二级业务类型',
  `work_order_type_lev3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '三级业务类型',
  `business_segments` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '业务模块',
  `business_segments_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '业务模块编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

INSERT INTO `yygl_workorder_type_relationship` VALUES ('1', '客户报装工单', '094e9b08e28f4be6b52e0c0160e5249b', '', '', '', '天然气', 'gas');
INSERT INTO `yygl_workorder_type_relationship` VALUES ('10', '客户维修工单', 'a286e0789c7047b9a6449c6dacf6f119', '', '', '', '天然气', 'gas');
INSERT INTO `yygl_workorder_type_relationship` VALUES ('11', '产品采购工单', 'c59e1c8fd44a44bdbddd380b1d627640', '', '', '', '天然气', 'gas');
INSERT INTO `yygl_workorder_type_relationship` VALUES ('13', '天然气投诉工单', '470bda02d65a4dfa852bfc78346124af', '诉愿受理', '投诉', '专业公司投诉', '天然气', 'gas');
INSERT INTO `yygl_workorder_type_relationship` VALUES ('14', '通用信息传递单', '9dc074b571584887863dac9fa3e51b68', '', '', '', '天然气', 'gas');
INSERT INTO `yygl_workorder_type_relationship` VALUES ('15', '应急工单', 'e20c6dbcf1ec41b4a837d8d7dbe849e8', '', '', '', '天然气', 'gas');
INSERT INTO `yygl_workorder_type_relationship` VALUES ('16', '发票及资金业务处理单', 'af83826828e54b53a929986cd6d85d18', '', '', '', '天然气', 'gas');
INSERT INTO `yygl_workorder_type_relationship` VALUES ('17', '投诉申诉工单', '9cf21822f9b6443aacaeee38371825d0', '', '', '', '天然气', 'gas');
INSERT INTO `yygl_workorder_type_relationship` VALUES ('18', '需求反馈工单', '310360c1638f4396b065ba3ba493a660', '诉愿受理', '需求建议', '合作需求', '天然气', 'gas');
INSERT INTO `yygl_workorder_type_relationship` VALUES ('2', '居民安检工单', '1d07b7ced6994a33b1a5e56bc3c571eb', '业务办理', '服务申请', '安检', '天然气', 'gas');
INSERT INTO `yygl_workorder_type_relationship` VALUES ('3', '非居民置换通气工单', '8eb2e55555124961b23e619a38f5a076', '', '', '', '天然气', 'gas');
INSERT INTO `yygl_workorder_type_relationship` VALUES ('4', '居民置换通气工单', 'a4b63b05897044a9b3bef0ecc9e4051a', '业务办理', '服务申请', '置换通气', '天然气', 'gas');
INSERT INTO `yygl_workorder_type_relationship` VALUES ('5', '非居民安检工单', '573a4cbb127244ceae95fa0dafc082e3', '', '', '', '天然气', 'gas');
INSERT INTO `yygl_workorder_type_relationship` VALUES ('6', '拆改迁工单', 'cedae0e126184b67b0a7dc9bc2b25792', '', '', '', '天然气', 'gas');
INSERT INTO `yygl_workorder_type_relationship` VALUES ('7', '信息通知申请工单', '3ff6abf59c6747e885e7a55f8dc53cf0', '增值服务', '信息', '信息通知', '天然气', 'gas');
INSERT INTO `yygl_workorder_type_relationship` VALUES ('8', '问卷调查申请工单', '7bc5e3ade16a4052b869d5252328ef90', '', '', '', '天然气', 'gas');
INSERT INTO `yygl_workorder_type_relationship` VALUES ('9', '外呼申请工单', 'c91044cc183446508829d797a1bd003e', '', '', '', '天然气', 'gas');



