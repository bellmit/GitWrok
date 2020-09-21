declare
begin
if not fc_IsDataExists('select count(*) from jbpm4_ext_formreg t where t.uuid = ''d1331142e057466f8eee028d5bdf4c6b''') then
	insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3, C_FORMBEAN, C_SYSTEM)
values ('d1331142e057466f8eee028d5bdf4c6b', 'b4f539ddefb848f99ff48c1a8f4b5f8f', 'PAGE_MW', '保证金转收入表单(新)', '/v2/financial/deposit/depositTurnIncomeFlowNew.htm', '', '', 'print.jsp', '', '', '', '');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''47f720450f7a49ac9e9966036cd37936''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('47f720450f7a49ac9e9966036cd37936', 'spring', 'depositManager.changeFundVaryCheckFlagService', '保证金转收入结束服务(新)', '保证金转收入结束服务(新)', '', 'Y', '', null, null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''6a41e7db894c4d109ab6261733b6e9c9''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('6a41e7db894c4d109ab6261733b6e9c9', '47f720450f7a49ac9e9966036cd37936', '状态', '1', 'String', '【0审核不通过/3审核通过/4已交收】', '4');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''2e3708cd7c5d4e68afebb0345196b40e''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('2e3708cd7c5d4e68afebb0345196b40e', '47f720450f7a49ac9e9966036cd37936', '流程实例号', '0', 'String', '流程实例号', '#{processInstanceId}');
end if;


if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''890cbd125f494e8c8e1684d4416bb3b3''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('890cbd125f494e8c8e1684d4416bb3b3', 'spring', 'depositManager.autoStartDepositTurnIncomeFlowNew', '自动发起保证金转收入流程服务(新)', '自动发起保证金转收入流程服务(新)', '', 'Y', '', null, null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''b03ceb76966c4d8b9b2b18c11afddd7a''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('b03ceb76966c4d8b9b2b18c11afddd7a', '890cbd125f494e8c8e1684d4416bb3b3', '流程发起人', '0', 'String', '流程发起人', '#{starter}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''54ae854fae80486ea2a71fec98cfbeb3''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('54ae854fae80486ea2a71fec98cfbeb3', '890cbd125f494e8c8e1684d4416bb3b3', '流程实例号', '1', 'String', '流程实例号', '#{processInstanceId}');
end if;

end;
/