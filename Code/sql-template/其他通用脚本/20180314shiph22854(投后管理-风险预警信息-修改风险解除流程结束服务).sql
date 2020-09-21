
--[201802080616]20180314shiph22854(投后管理-风险预警信息-修改风险解除流程结束服务，增加流程实例号和当前处理人两个输入参数)--start--
declare
begin
--流程服务
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''d727ac5810c44dfab4c7a12a9bfaeb74''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('d727ac5810c44dfab4c7a12a9bfaeb74', 'spring', 'riskWarningManager.riskRemoveFlowEndService', '风险解除流程结束服务', '风险解除流程审批通过后，更新风险预警状态为“已解决”。', '', 'Y', '', 0, 0);
end if;
--服务输入参数-流程实例号
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''481b1f3ef9844d8993c980a4162ea58a''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('481b1f3ef9844d8993c980a4162ea58a', 'd727ac5810c44dfab4c7a12a9bfaeb74', '流程实例号', '0', 'String', '当前流程的实例id', '#{processInstanceId}');
end if;
--服务输入参数-审批结果
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''4c284d7b448b4fa49b13f6ead18b346a''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('4c284d7b448b4fa49b13f6ead18b346a', 'd727ac5810c44dfab4c7a12a9bfaeb74', '审批结果', '1', 'String', '审批结果，"1"：审批通过，，"2"：审批不通过', null);
end if;
--服务输入参数-当前处理人
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''7ee2c3719766480c8696e4440e7cd76d''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('7ee2c3719766480c8696e4440e7cd76d', 'd727ac5810c44dfab4c7a12a9bfaeb74', '当前处理人', '2', 'String', '流程当前处理人', '#{currentApproveUser}');
end if;
end;
/
--[201802080616]20180314shiph22854(投后管理-风险预警信息-修改风险解除流程结束服务，增加流程实例号和当前处理人两个输入参数)--end--
