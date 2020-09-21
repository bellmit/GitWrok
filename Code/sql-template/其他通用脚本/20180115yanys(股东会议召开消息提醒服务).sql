insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('0896c127c9664276999be0c345a13deb', 'spring', 'meetingApplyManager.shareholderMeetingMsg', '生成并发送股东会议召开消息提醒服务', null, null, 'Y', null, 0, 0);
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('ad25b1dfe3f94d13aebce54e84585c26', '0896c127c9664276999be0c345a13deb', '流程实例ID', '0', 'string', null, '#{processInstanceId}');

