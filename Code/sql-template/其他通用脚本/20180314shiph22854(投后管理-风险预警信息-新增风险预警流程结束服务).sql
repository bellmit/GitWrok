--[201802080616]20180314shiph22854(投后管理-风险预警信息-新增风险预警流程结束服务)--start--
declare
begin
--流程服务
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''62480a9c6ca54172b7d0bbadf9162eaa''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('62480a9c6ca54172b7d0bbadf9162eaa', 'spring', 'riskWarningManager.riskWarningFlowEndService', '风险预警流程结束服务', '风险反馈流程结束后，更新风险预警信息记录审批状态”。', '', 'Y', '', 0, 0);
end if;
--服务输入参数-流程实例号
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''3b86ebf0feb44f6db6977fd289da4bf9''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('3b86ebf0feb44f6db6977fd289da4bf9', '62480a9c6ca54172b7d0bbadf9162eaa', '流程实例号', '0', 'String', '当前流程的实例id', '#{processInstanceId}');
end if;
--服务输入参数-审批结果
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''8cfd634a327b4c16a11e8574aad83432''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('8cfd634a327b4c16a11e8574aad83432', '62480a9c6ca54172b7d0bbadf9162eaa', '审批结果', '1', 'String', '审批结果，"1"：审批通过，，"2"：审批不通过', null);
end if;
--服务输入参数-当前处理人
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''88906a69873046d9bd0719200447a33d''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('88906a69873046d9bd0719200447a33d', '62480a9c6ca54172b7d0bbadf9162eaa', '当前处理人', '2', 'String', '流程当前处理人', '#{currentApproveUser}');
end if;
end;
/
--[201802080616]20180314shiph22854(投后管理-风险预警信息-新增风险预警流程结束服务)--start--
