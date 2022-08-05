ALTER TABLE `yygl_flow_form_info` 
MODIFY COLUMN `field_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '表单字段类型。SINGLE_RADIO=单选，MULTI_RADIO=多选框，DOWN_BOX=下拉框，TEXT=文本框，DATE=日期插件(年月日)，DATE_TIME=日期插件(年月日时分秒)';