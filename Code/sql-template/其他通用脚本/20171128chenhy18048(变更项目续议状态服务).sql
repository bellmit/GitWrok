declare
begin
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''07d5fc1f6a624a4ebe556251e50550c5''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('07d5fc1f6a624a4ebe556251e50550c5', 'spring', 'meetingApplyManager.updateProjectConditionContinueDiscuss', '�����Ŀ����״̬', '', '', 'Y', '', null, null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''9d8031f499f2429c8b9a206ac70a4bc4''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('9d8031f499f2429c8b9a206ac70a4bc4', '07d5fc1f6a624a4ebe556251e50550c5', '����ʵ����', '0', 'String', '����ʵ����', '#{processInstanceId}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''d27d569bef0e4753b8672caddeb2d61c''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('d27d569bef0e4753b8672caddeb2d61c', '07d5fc1f6a624a4ebe556251e50550c5', '�Ƿ�����', '1', 'flag', '0��1��', '"1"');
end if;
end;
/