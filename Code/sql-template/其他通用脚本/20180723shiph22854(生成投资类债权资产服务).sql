--[201806140573]20180723shiph22854(债权资产改造-生成投资类债权资产服务)-- start --
declare
begin
--流程服务
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''734B4ECA4C8A4ECDA6FBFC2A7B2DBA1B''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('734B4ECA4C8A4ECDA6FBFC2A7B2DBA1B', 'spring', 'creditorContractManager.generateInvestAssetService', '生成投资类债权资产服务', '投资类合同的付款审批流程审批通过后，生成投资类债权资产。', '', 'Y', '', 0, 0);
end if;
--服务输入参数-流程实例号
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''1EDC8799FBC245B8AE895E4C563CEB20''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('1EDC8799FBC245B8AE895E4C563CEB20', '734B4ECA4C8A4ECDA6FBFC2A7B2DBA1B', '流程实例号', '0', 'String', '当前流程的实例id', '#{processInstanceId}');
end if;
--服务输入参数-审批结果
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''2A627D5AA06C4C1698017ADF5B27EB1C''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('2A627D5AA06C4C1698017ADF5B27EB1C', '734B4ECA4C8A4ECDA6FBFC2A7B2DBA1B', '审批结果', '1', 'String', '审批结果：1-审批通过，2-审批不通过，默认配置1', '1');
end if;
end;
/
--[201806140573]20180723shiph22854(债权资产改造-生成投资类债权资产服务)-- start --
