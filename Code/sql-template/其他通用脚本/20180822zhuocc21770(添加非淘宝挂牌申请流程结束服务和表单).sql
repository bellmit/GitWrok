declare
begin

--��ӷ��Ա������������̽�������
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''e8a69a8f6f19499c8d0123b6acec9500''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('e8a69a8f6f19499c8d0123b6acec9500', 'spring', 'handlProjectManager.setListingInfo', '���Ա����������������', '��Ȩ�˳���������', null, 'Y', null, null, null);
end if;

--�����������-����ʵ����
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''e769cbc4559c4d66a8fa58c27ba4f45d''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('e769cbc4559c4d66a8fa58c27ba4f45d', 'e8a69a8f6f19499c8d0123b6acec9500', '����ʵ����', '0', 'String', '', '#{processInstanceId}');
end if;

--�����������-����״̬
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''129047c19d244443ab68322c01d62a4c''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('129047c19d244443ab68322c01d62a4c', 'e8a69a8f6f19499c8d0123b6acec9500', '����״̬', '1', 'String', null, '"1"');
end if;

--�����������-������
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''a01896f957874015a1e473cea916a37e''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('a01896f957874015a1e473cea916a37e', 'e8a69a8f6f19499c8d0123b6acec9500', '������', '2', 'String', null, '#{currentApproveUser}');
end if;

end;
/
