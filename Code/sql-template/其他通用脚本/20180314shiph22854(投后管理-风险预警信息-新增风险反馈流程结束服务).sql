--[201802080616]20180314shiph22854(投后管理-风险预警信息-新增风险反馈流程结束服务)--start--
declare
begin
--流程服务
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''4e172c706cec400aaf0a357239136593''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('4e172c706cec400aaf0a357239136593', 'spring', 'riskWarningManager.riskFeedbackFlowEndService', '风险反馈流程结束服务', '风险反馈流程结束后，更新风险反馈信息记录审批状态”。', '', 'Y', '', 0, 0);
end if;
--服务输入参数-流程实例号
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''b1f3af1e5bbc4d7cafc82dac4aec8848''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('b1f3af1e5bbc4d7cafc82dac4aec8848', '4e172c706cec400aaf0a357239136593', '流程实例号', '0', 'String', '当前流程的实例id', '#{processInstanceId}');
end if;
--服务输入参数-审批结果
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''3a93a451db2c4fc88fe5739dd39849a2''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('3a93a451db2c4fc88fe5739dd39849a2', '4e172c706cec400aaf0a357239136593', '审批结果', '1', 'String', '审批结果，"1"：审批通过，，"2"：审批不通过', null);
end if;
--服务输入参数-当前处理人
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''342284ae5b424b2a82c915741920f336''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('342284ae5b424b2a82c915741920f336', '4e172c706cec400aaf0a357239136593', '当前处理人', '2', 'String', '流程当前处理人', '#{currentApproveUser}');
end if;
end;
/
--[201802080616]20180314shiph22854(投后管理-风险预警信息-新增风险反馈流程结束服务)--start--
