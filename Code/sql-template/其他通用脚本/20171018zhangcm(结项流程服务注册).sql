
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('2e7e77cd37444bdc8ffa2d9efba3a025', 'spring', 'projectEndFlowManager.updateProjectStatusById', '结项流程状态更新', null, null, 'Y', null, null, null);


insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('a9e5fe49a713478fa5cf25d2b64f7d19', '2e7e77cd37444bdc8ffa2d9efba3a025', '流程实例号', '0', 'String', null, '#{processInstanceId}');

