
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('9901ce27d41848a4a42765f2bc80cd0f', 'spring', 'transferContractManager.assetsDelivProcessEnd', '资产交割流程结束操作', null, null, 'Y', null, null, null);
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('52508c753f804e86802d67bf9f9689c0', '0272038b3193426e8e956ed89f9a2b6b', '流程实例号', '0', 'String', null, '#{processInstanceId}');
