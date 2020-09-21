declare
begin

--添加股权资产作废流程结束服务
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''99461f5319fc4dac95cff1a0488b2616''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('99461f5319fc4dac95cff1a0488b2616', 'spring', 'equityAssetManager.endProcess', '资产作废流程结束服务', '资产作废流程结束服务', null, 'Y', null, null, null);
end if;

--服务输入参数-审批状态
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''3197006ea80c42f9bcb0cbeb9602e9cf''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('2a1354b399274f70b2a82cba8a71001b', '99461f5319fc4dac95cff1a0488b2616', '审批状态', '1', 'String', '"1"：审批通过，''0"：驳回发起人', '"1"');
end if;

--服务输入参数-流程实例号
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''2620f551b12f4ce5bf007c21e9a70f74''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('c443a14dba7c4acb856a7e06f75221be', '99461f5319fc4dac95cff1a0488b2616', '流程实例号', '0', 'String', null, '#{processInstanceId}');
end if;

--股权资产作废流程表单
if not fc_IsDataExists('select count(*) from jbpm4_ext_formreg t where t.UUID=''da1b21e1dff84ee787959eb6296c6a50''') then 
	insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3)
values ('da1b21e1dff84ee787959eb6296c6a50', '-1', 'PAGE_MW', '股权资产作废流程表单', '/pm/equityasset/delEquityAssetFlow.htm', null, null, null, null, null);
end if;

end;
/
