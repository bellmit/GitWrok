--[201806140573]20180723shiph22854(债权资产改造-生成处置类债权资产服务)-- start --
declare
begin
--流程服务
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''0EEFA2EE1B8F4DC8BFC55472798AD0F5''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('0EEFA2EE1B8F4DC8BFC55472798AD0F5', 'spring', 'creditorContractManager.generateDisposalAssetService', '生成处置类债权资产服务', '处置类合同的合同文本审批流程审批通过后，生成处置类债权资产。', '', 'Y', '', 0, 0);
end if;
--服务输入参数-流程实例号
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''91669EDD1A47481B8827B101CFB0525E''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('91669EDD1A47481B8827B101CFB0525E', '0EEFA2EE1B8F4DC8BFC55472798AD0F5', '流程实例号', '0', 'String', '当前流程的实例id', '#{processInstanceId}');
end if;
--服务输入参数-审批结果
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''1C9A134CE0F142FEB60DEEBDD7339E23''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('1C9A134CE0F142FEB60DEEBDD7339E23', '0EEFA2EE1B8F4DC8BFC55472798AD0F5', '审批结果', '1', 'String', '审批结果：1-审批通过，2-审批不通过，默认配置1', '1');
end if;
end;
/
--[201806140573]20180723shiph22854(债权资产改造-生成处置类债权资产服务)-- start --
