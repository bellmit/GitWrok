declare
begin

--��ӹ�Ȩ�ʲ��������̽�������
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''99461f5319fc4dac95cff1a0488b2616''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('99461f5319fc4dac95cff1a0488b2616', 'spring', 'equityAssetManager.endProcess', '�ʲ��������̽�������', '�ʲ��������̽�������', null, 'Y', null, null, null);
end if;

--�����������-����״̬
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''3197006ea80c42f9bcb0cbeb9602e9cf''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('2a1354b399274f70b2a82cba8a71001b', '99461f5319fc4dac95cff1a0488b2616', '����״̬', '1', 'String', '"1"������ͨ����''0"�����ط�����', '"1"');
end if;

--�����������-����ʵ����
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''2620f551b12f4ce5bf007c21e9a70f74''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('c443a14dba7c4acb856a7e06f75221be', '99461f5319fc4dac95cff1a0488b2616', '����ʵ����', '0', 'String', null, '#{processInstanceId}');
end if;

--��Ȩ�ʲ��������̱�
if not fc_IsDataExists('select count(*) from jbpm4_ext_formreg t where t.UUID=''da1b21e1dff84ee787959eb6296c6a50''') then 
	insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3)
values ('da1b21e1dff84ee787959eb6296c6a50', '-1', 'PAGE_MW', '��Ȩ�ʲ��������̱�', '/pm/equityasset/delEquityAssetFlow.htm', null, null, null, null, null);
end if;

end;
/
