declare
begin

--��ӻ�ȡͨ�ñ����ݷ���
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''747a38d0ce755175e05011ac06007d42''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('747a38d0ce755175e05011ac06007d42', 'spring', 'lawsuitManager.saveLawsuitFlowChangeLog', '��ȡͨ�ñ����ݷ���', '��ȡͨ�ñ����ݷ���', null, 'Y', null, null, null);
end if;

--�����������-����ʵ����
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''747ba0640e62bcc6e05011ac06007edc''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('747ba0640e62bcc6e05011ac06007edc', '747a38d0ce755175e05011ac06007d42', '����ʵ����', '0', 'String', '', '#{processInstanceId}');
end if;

--�����������-������
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''747ba0640e68bcc6e05011ac06007edc''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('747ba0640e68bcc6e05011ac06007edc', '747a38d0ce755175e05011ac06007d42', '������', '1', 'String', null, '#{lastTaskId}');
end if;

end;
/
