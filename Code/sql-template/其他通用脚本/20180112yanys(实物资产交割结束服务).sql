
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('538a3c8563534bddaab2cb6db685c80b', 'spring', 'cbmsTinvestCollateralManager.realAssetDevilEnd', 'ʵ���ʲ������������', null, null, 'Y', null, null, null);

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('63b29adc4b3d4cc8a8f9d680ce033bf4', '538a3c8563534bddaab2cb6db685c80b', '����ʵ����', '0', 'String', null, '#{processInstanceId}');

