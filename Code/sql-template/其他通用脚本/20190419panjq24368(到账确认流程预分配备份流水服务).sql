declare
begin
--20190419panjq24368(到账确认流程预分配备份流水服务)---start--
--流程服务 需要添加结束符号
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''1c98733947b3473f8bc2201681191b02''') then
  insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('1c98733947b3473f8bc2201681191b02', 'spring', 'arrivalDataManager.copyInvestTraceProcess', '到账确认预分配退回流水记录备份服务', '备份投资流水表、投资流水明细表', '', 'Y', '', 0, 0);
end if;
--服务输入参数-流程实例号
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''dce43c44faa145f98187f2e97dd1674f''') then
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('dce43c44faa145f98187f2e97dd1674f', '1c98733947b3473f8bc2201681191b02', '流程实例号', '0', 'String', '流程实例号', '#{processInstanceId}');
end if;

--20190419panjq24368(到账确认流程预分配备份流水服务)---start--

end;
/