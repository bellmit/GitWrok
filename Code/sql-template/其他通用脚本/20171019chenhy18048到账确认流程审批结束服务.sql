declare
begin
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''a3eb2bb05d7c42d7b2880624908866d3''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('a3eb2bb05d7c42d7b2880624908866d3', 'spring', 'arrivalDataManager.endProcess', '����ȷ������������������', '����ȷ������������������', '', 'Y', '', 0, 0);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''0143badbf946407a8e3ead55b977a838''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('0143badbf946407a8e3ead55b977a838', 'a3eb2bb05d7c42d7b2880624908866d3', '����ʵ����', '0', 'String', '����ʵ����', '#{processInstanceId}');
end if;
end;
/