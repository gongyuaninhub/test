ALTER TABLE `yygl`.`yygl_flow_info` 
DROP COLUMN `audit_users`;
ALTER TABLE `yygl`.`yygl_flow_pool` 
CHANGE COLUMN `audit_user_cnt` `audit_group_cnt` int(0) NOT NULL COMMENT '可支持的审核候选组数量' AFTER `act_flow_name`;
ALTER TABLE `yygl`.`yygl_flow_apply_order` 
ADD INDEX `idx_flow_id`(`flow_id`) USING BTREE,
ADD INDEX `idx_process_instance_id`(`process_instance_id`) USING BTREE;

CREATE TABLE `yygl_flow_candidate_group` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `flow_id` bigint NOT NULL COMMENT '流程id',
  `candidate_group_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '候选组id',
  `userId` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户id',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='审批流候选组审核人'