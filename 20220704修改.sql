ALTER TABLE `yygl`.`yygl_flow_candidate_group` 
CHANGE COLUMN `userId` `user_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '”√ªßid' AFTER `candidate_group_id`;