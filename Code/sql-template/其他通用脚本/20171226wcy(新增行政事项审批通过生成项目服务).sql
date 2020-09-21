insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('c0518312a7c741a7b4f3e60e2d1aee1c', 'spring', 'meetingApplyManager.createProjectInfoByNobusi', '行政事项审批流程结束生成项目', null, null, 'Y', null, null, null);

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('f19afb3c970a4ca5899fe8b730b9186e', 'c0518312a7c741a7b4f3e60e2d1aee1c', '流程实例号', '0', 'String', null, '#{processInstanceId}');
