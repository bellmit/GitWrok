declare
begin
--流程服务
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''A223017F7B654BB38086799853753E6E''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('A223017F7B654BB38086799853753E6E', 'spring', 'handlProjectManager.autoHangoutProcess', '自动发起挂牌申请流程服务', null, null, null, null, null, null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''374695F7F7DC459CA1EDFC7A0FA455EB''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('374695F7F7DC459CA1EDFC7A0FA455EB', 'A223017F7B654BB38086799853753E6E', '审批结果', '1', 'string', null, '"1"');
end if;
if  fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''374695F7F7DC459CA1EDFC7A0FA455EB''') then
update jbpm4_ext_service_para_in t set t.PARAM_CODE='1' where t.UUID='374695F7F7DC459CA1EDFC7A0FA455EB';
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''E8493AF66C37428DB66ACC123B6952EA''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('E8493AF66C37428DB66ACC123B6952EA', 'A223017F7B654BB38086799853753E6E', '流程实例号', '0', 'string', null, '#{processInstanceId}');
end if;
if  fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''E8493AF66C37428DB66ACC123B6952EA''') then
update jbpm4_ext_service_para_in t set t.PARAM_CODE='0' where t.UUID='E8493AF66C37428DB66ACC123B6952EA';
end if;

end;
/
