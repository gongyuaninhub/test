-- 
ALTER TABLE `yygl_flow_form_info` 
ADD COLUMN `sort` int(2) NOT NULL DEFAULT 0 COMMENT '字段展示排序，从小到大依次展示' AFTER `ext_info`;
-- 
ALTER TABLE `yygl_flow_info` 
DROP COLUMN `flow_key`,
DROP COLUMN `file_path`,
DROP COLUMN `deploy_id`,
DROP COLUMN `status`,
MODIFY COLUMN `flow_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '业务流程名' AFTER `id`,
ADD COLUMN `bind_flow_pool_id` bigint(0) NULL COMMENT '所绑定的流程池中具体的某个流程' AFTER `id`,
ADD COLUMN `use_status` tinyint(1) NULL COMMENT '使用状态。0=使用中，1=已废弃' AFTER `cc_users`;
-- 
CREATE TABLE `yygl_flow_pool` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `act_flow_key` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '工作流审批流程key',
  `act_flow_name` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '工作流审批流程名',
  `audit_user_cnt` int NOT NULL COMMENT '可支持的审核用户数量',
  `deploy_id` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '工作流引擎流程部署id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='工作流引擎已部署的流程池'