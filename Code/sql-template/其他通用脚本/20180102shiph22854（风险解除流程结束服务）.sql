declare
begin
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''d727ac5810c44dfab4c7a12a9bfaeb74''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('d727ac5810c44dfab4c7a12a9bfaeb74', 'spring', 'riskWarningManager.riskRemoveFlowEndService', '风险解除流程结束服务', '风险解除流程审批通过后，更新风险预警状态为“已解决”。', '', 'Y', '', 0, 0);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''45f3e2f062d54616bd67dae3035a73d6''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('45f3e2f062d54616bd67dae3035a73d6', 'd727ac5810c44dfab4c7a12a9bfaeb74', '流程实例号', '0', 'String', '当前流程的实例id', '#{processInstanceId}');
end if;
end;
/
