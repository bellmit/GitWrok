declare
begin

--��ӹ�Ȩ�ʲ��������̽�������
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''9efd3af786b943e2b69d17e2665b5c08''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('9efd3af786b943e2b69d17e2665b5c08', 'spring', 'equityAssetManager.equityQuitFlowEndService', '��Ȩ�˳���������', '��Ȩ�˳���������', null, 'Y', null, null, null);
end if;

--�����������-����ʵ����
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''0dce9b61606a43e1a981472e9e376aaf''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('0dce9b61606a43e1a981472e9e376aaf', '9efd3af786b943e2b69d17e2665b5c08', '����ʵ����', '0', 'String', '', '#{processInstanceId}');
end if;

--�����������-����״̬
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''626ff8efb60b4f668bfc04a22b7dd89c''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('626ff8efb60b4f668bfc04a22b7dd89c', '9efd3af786b943e2b69d17e2665b5c08', '����״̬', '1', 'String', null, '"1"');
end if;

--�����������-������
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''2e367f01ec1d45f791cf5cda210822a5''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('2e367f01ec1d45f791cf5cda210822a5', '9efd3af786b943e2b69d17e2665b5c08', '������', '2', 'String', null, '#{currentApproveUser}');
end if;

--��Ȩ�˳���
if not fc_IsDataExists('select count(*) from jbpm4_ext_formreg t where t.UUID=''e1fa52413316410c9943797be7cf5226''') then 
	insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3)
	values ('e1fa52413316410c9943797be7cf5226', '-1', 'PAGE_MW', '��Ȩ�˳���', '/pm/equityasset/equityQuitRecordForm.htm', null, null, null, null, null);
end if;

end;
/
