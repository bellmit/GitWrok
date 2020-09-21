--新增生成决议通知书服务
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('aa48e4fe80cb485f8efaec901587a65c', 'spring', 'meetingApplyManager.generateMeetingResolutionNotice', '生成提案决议通知书', '生成提案决议通知书', '', 'Y', '', null, null);

--生成决议通知书参数
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('b1a2cb1402c14ba595708ad9f0794702', 'aa48e4fe80cb485f8efaec901587a65c', '流程实例id', '0', 'String', '', '#{processInstanceId}');

