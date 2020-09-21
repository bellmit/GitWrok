
declare
begin
if not fc_IsDataExists('select count(*) from jbpm4_ext_formreg t where t.FORMNAME=''回款计划新增'' and t.FORMURL=''/financial/Receivables/receivablesAddflow.htm''') then
insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3, C_FORMBEAN)
values ('3b428aaedf384318b892b732ac9e4fe5', 'b4f539ddefb848f99ff48c1a8f4b5f8f', 'PAGE_MW', '回款计划新增', '/financial/Receivables/receivablesAddflow.htm', null, null, null, null, null, null);

end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_formreg t where t.FORMNAME=''回款计划修改'' and t.FORMURL=''/financial/Receivables/receivablesEditflow.htm''') then
insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3, C_FORMBEAN)
values ('9c421e6fabea4ea88981bd42b9fa0ad6', 'b4f539ddefb848f99ff48c1a8f4b5f8f', 'PAGE_MW', '回款计划修改', '/financial/Receivables/receivablesEditflow.htm', null, null, null, null, null, null);

end if;
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.SERVICEID=''receivablesPlanManager.endAddProcess'' and t.SERVICENAME=''回款计划新增结束流程''') then
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('434cdf12585041c1ad15777fa7ed1adb', 'spring', 'receivablesPlanManager.endAddProcess', '回款计划新增结束流程', '回款计划新增结束流程', null, 'Y', null, null, null);

end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.SERVICEID=''receivablesPlanManager.endUpdateProcess'' and t.SERVICENAME=''回款计划修改结束流程''') then
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('c1fc96f7eef64a01972051c5e0435767', 'spring', 'receivablesPlanManager.endUpdateProcess', '回款计划修改结束流程', '回款计划修改结束流程', null, 'Y', null, 0, 0);

end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.SERVICE_DBID=''434cdf12585041c1ad15777fa7ed1adb'' and t.PARAM_NAME=''流程实例号''') then
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('c08445bf964b48258871e2808a58abb1', '434cdf12585041c1ad15777fa7ed1adb', '流程实例号', '0', 'String', '流程实例号', '#{processInstanceId}');

end if;
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.SERVICE_DBID=''434cdf12585041c1ad15777fa7ed1adb'' and t.PARAM_NAME=''审批状态''') then
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('02db190ceec74ba2941a63affcf33132', '434cdf12585041c1ad15777fa7ed1adb', '审批状态', '1', 'String', '"1"：审批通过，''0"：驳回', '"1"');

end if;
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.SERVICE_DBID=''c1fc96f7eef64a01972051c5e0435767'' and t.PARAM_NAME=''流程实例号''') then
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('2ee6d3727a5a41f887cd64a26cdeaa9b', 'c1fc96f7eef64a01972051c5e0435767', '流程实例号', '0', 'String', '流程实例号', '#{processInstanceId}');

end if;
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.SERVICE_DBID=''c1fc96f7eef64a01972051c5e0435767'' and t.PARAM_NAME=''审批状态''') then
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('1a576edfb810460b84d31111668c5709', 'c1fc96f7eef64a01972051c5e0435767', '审批状态', '1', 'String', '"1"：审批通过，''0"：驳回', '"1"');

end if;
end ;
/





