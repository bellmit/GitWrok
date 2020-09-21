declare
begin

--添加户信息确认流程结束服务
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''7e003a317c1a4f0ea696bd16d8803127''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
  values ('7e003a317c1a4f0ea696bd16d8803127', 'spring', 'loanAccountInfoManager.loanstatusConfirmEndService', '户信息确认结束服务', '户信息结束服务', null, 'Y', null, null, null);
end if;

--服务输入参数-流程实例号
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''b88749e1c55449c18e9f98bfe105ce9b''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
  values ('b88749e1c55449c18e9f98bfe105ce9b', '7e003a317c1a4f0ea696bd16d8803127', '流程实例号', '0', 'String', '', '#{processInstanceId}');
end if;

--服务输入参数-审批状态
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''aef9e5aa06a74e769046b93ef95ff842''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
  values ('aef9e5aa06a74e769046b93ef95ff842', '7e003a317c1a4f0ea696bd16d8803127', '审批状态', '1', 'String', null, '"1"');
end if;

--服务输入参数-审批人
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''aea8e8c7c0584e3fb042853460fd93a4''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
  values ('aea8e8c7c0584e3fb042853460fd93a4', '7e003a317c1a4f0ea696bd16d8803127', '审批人', '2', 'String', null, '#{currentApproveUser}');
end if;

--表单
if not fc_IsExistsExtFormReg('b6fac1e0ff374e4e9d2c0ed000811d03')then
  insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3, C_FORMBEAN)
  values ('b6fac1e0ff374e4e9d2c0ed000811d03', '-1', 'PAGE_MW', '户信息确认表单', '/creditorcontract/loanerstatusconfirm.htm', null, null, null, null, null, null);
end if;

end;
/
