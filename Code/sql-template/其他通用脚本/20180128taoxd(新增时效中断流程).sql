declare
begin
--表单jbpm4_ext_formreg
if not fc_IsExistsExtFormReg('f7532e28d1f1488ca25e6241ccda9b2b') then
	insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3)
	values ('f7532e28d1f1488ca25e6241ccda9b2b', '-1 ', 'PAGE_MW', '时效中断处理表单', 'creditorcontract/timestopFlow.htm', null, 'timestopFlowVM', null, null, null);
end if;

--服务jbpm4_ext_servicereg
if not fc_IsExistsExtServiceReg('99c364aa2a76479d9ae6675497bf1325') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
	values ('99c364aa2a76479d9ae6675497bf1325', 'spring', 'creditorContractManager.endTimestopInfo', '时效中断流程结束服务', null, null, 'Y', null, null, null);
end if;
--服务输入参数jbpm4_ext_service_para_in
if not fc_IsExistsExtServiceParaIn('7dc4e1ea91e646fdbbb1c5a207b0a3b1') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
	values ('7dc4e1ea91e646fdbbb1c5a207b0a3b1', '99c364aa2a76479d9ae6675497bf1325', '流程实例号', '0', 'String', null, '#{processInstanceId}');
end if;

end;
/
