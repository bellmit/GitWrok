declare
begin

if not fc_IsDataExists('select count(*) from jbpm4_ext_formreg t where t.UUID=''e76491a8a5c14670a544e2a9d735085f''') then
	insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3, C_FORMBEAN)
values ('e76491a8a5c14670a544e2a9d735085f', 'b4f539ddefb848f99ff48c1a8f4b5f8f', 'PAGE_MW', '���д���������ˮ��¼��', '/financial/arrivaldata/repayflowform.htm', '', '', '', '', '', '');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.UUID=''39361901d850483f960c2dc5bcfa29a5''') then 
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('39361901d850483f960c2dc5bcfa29a5', 'spring', 'arrivalDataManager.endRepayFlow', '���д���������ˮ��¼���̽�������', '���д���������ˮ��¼���̽�������', '', 'Y', '', null, null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID=''92876f9512a241f49033320f2d9c19ae''') then 
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('92876f9512a241f49033320f2d9c19ae', '39361901d850483f960c2dc5bcfa29a5', '����ʵ����', '0', 'string', '����ʵ����', '#{processInstanceId}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID=''767c069f94ab4af1b3d4c038e5098a71''') then 
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('767c069f94ab4af1b3d4c038e5098a71', '39361901d850483f960c2dc5bcfa29a5', '����״̬', '1', 'string', '"1"������ͨ��,"0"��������ͨ����', '"1"');
end if;
end;
/





