--����ʱЧ�����������̽�������
delete from  jbpm4_ext_service_para_in t where t.service_dbid='cf277c6f0529497a972f04fa45de187c';
delete  from  jbpm4_ext_servicereg t where t.uuid='cf277c6f0529497a972f04fa45de187c';
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('cf277c6f0529497a972f04fa45de187c', 'spring', 'newContractManager.endLimitationBatchAdjust', '����ʱЧ�����������̽�������', null, null, 'Y', null, null, null);
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('d1d4790a63814c858aa17421dfd6052b', 'cf277c6f0529497a972f04fa45de187c', '����ʵ����', '0', 'String', null, '#{processInstanceId}');

