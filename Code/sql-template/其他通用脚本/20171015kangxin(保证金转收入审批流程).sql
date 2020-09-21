delete  from jbpm4_ext_servicereg t where t.SERVICEID ='depositDataManager.changeFundVaryCheckFlagService';
delete  from jbpm4_ext_service_para_in t where t.PARAM_NAME in ('流程实例id','流水状态');

insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('5f78f9eb17184263aee2221f953e4294', 'spring', 'depositDataManager.changeFundVaryCheckFlagService', '修改流水状态', null, null, 'Y', null, null, null);

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('a28ce05f9c31486b80bc351811375b30', '5f78f9eb17184263aee2221f953e4294', '流程实例id', '0', 'String', null, '#{processInstanceId}');

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('8cdc6eec2d6943d780e0f748fd0cd794', '5f78f9eb17184263aee2221f953e4294', '流水状态', '1', 'String', null, null);
