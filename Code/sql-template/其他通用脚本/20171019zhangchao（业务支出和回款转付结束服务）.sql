
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('a7fc3596c51342bfafc7f38845368fcf', 'spring', 'paymentDataManager.updateLoancountOrtaccount', '业务支出和回款转付流程结束服务', null, null, 'Y', null, null, null);

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('3b22a6de591145448b47a43bbb2a9cb2', 'a7fc3596c51342bfafc7f38845368fcf', '人员id', '1', 'String', null, '#{currentUserId}');

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('87e9b9817df74fe49f67999b8e58abfc', 'a7fc3596c51342bfafc7f38845368fcf', '流程实例id', '0', 'String', null, '#{processInstanceId}');

