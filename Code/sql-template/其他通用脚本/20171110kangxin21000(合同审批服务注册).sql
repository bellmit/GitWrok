insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('cc8e0348a08a4320ac0e9a766b429b44', 'spring', 'cbmsInvestContractManager.endApproveContract', '��ͬ������������', null, null, 'Y', null, null, null);

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('bf7f090f75de4680b9aae50003eb31cb', 'cc8e0348a08a4320ac0e9a766b429b44', '����ʵ��id', '0', 'String', null, '#{processInstanceId}');

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('385eaf5620ce4bf9852cf2d08843873f', 'cc8e0348a08a4320ac0e9a766b429b44', '�Ƿ���������', '1', 'String', '������Ϊ1��Ϊ���� ͨ����Ϊ0��δͨ��', null);
