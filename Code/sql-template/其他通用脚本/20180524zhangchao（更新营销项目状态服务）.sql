delete from jbpm4_ext_servicereg t where t.UUID = 'fdb8fbf054c2459783e07fad3be59b21';
delete from jbpm4_ext_service_para_in t where t.UUID = '69daac9d4e7e40a2a3ba1d8b00bbc857';
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('fdb8fbf054c2459783e07fad3be59b21', 'spring', 'marketProjectManager.updateMarketprojectstatus', '����Ӫ����Ŀ״̬����', '�������̺����Ӫ����Ŀ״̬', null, 'Y', null, null, null);

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('69daac9d4e7e40a2a3ba1d8b00bbc857', 'fdb8fbf054c2459783e07fad3be59b21', '����ʵ����', '0', 'String', '����ʵ����', '#{mpccode}');

