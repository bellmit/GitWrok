declare
begin
--����ҵ����������Ŀ�׶η���
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''508190e551444273bfeaacb12d3f5914'' and t.serviceid=''projectInfoManager.projectModification''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
	values ('508190e551444273bfeaacb12d3f5914', 'spring', 'projectInfoManager.projectModification', '������Ŀҵ���������Ŀ�׶�', '����ҵ����������Ŀ�׶�', null, 'Y', null, null, null);
end if;
	
--����ҵ����������Ŀ�׶η����������
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''ff5365999cd44f24b7558c2a525adf90''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
	values ('ff5365999cd44f24b7558c2a525adf90', '508190e551444273bfeaacb12d3f5914', '��Ŀ����', '0', 'string', null, '#{projectcode}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''fd07b98c19754bfb98cfa98add2ff39c''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
	values ('fd07b98c19754bfb98cfa98add2ff39c', '508190e551444273bfeaacb12d3f5914', '��������', '1', 'string', '��������', '#{busiflag}');
end if;
	
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''80d3c0b241fb45acb01a755867e9c471''') then	
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
	values ('80d3c0b241fb45acb01a755867e9c471', '508190e551444273bfeaacb12d3f5914', '���ʽ', '2', 'string', '{"":"",...}', null);
end if;
	
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''36eb289e069e40bf8df4b407a61f5998''') then	
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
	values ('36eb289e069e40bf8df4b407a61f5998', '508190e551444273bfeaacb12d3f5914', '��Ŀ�����׶�', '3', 'string', '��Ŀ�����׶�', null);
end if;
	
end;
/
