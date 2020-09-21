
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('131c3e1e56614096afcdce4950db7d3b', 'spring', 'afterInvestManager.updateStatusforafterinvest', '变更投后跟踪流程状态', '变更投后跟踪流程状态', null, 'Y', null, null, null);

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('c3bfc0eff2f34147b9555c8cf425cb7a', '131c3e1e56614096afcdce4950db7d3b', '流程实例号', '0', 'String', null, '#{processInstanceId}');

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('d27eadc1c76f4749850aab2000d46e65', '131c3e1e56614096afcdce4950db7d3b', '流程状态', '1', 'String', null, null);

