
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('fb960db6c5994fbdbba79bbcc7182096', 'spring', 'afterInvestManager.autoStartRiskWarningFlow', '�Զ��������Ԥ������', '�Զ��������Ԥ������', null, 'Y', null, null, null);

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('d4dc9584240d44e5a28fdabbe8aa9088', 'fb960db6c5994fbdbba79bbcc7182096', '����ʵ��id', '0', 'string', null, '#{processInstanceId}');
