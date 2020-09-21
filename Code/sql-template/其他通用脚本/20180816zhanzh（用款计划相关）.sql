declare
begin


if not fc_IsDataExists('select count(*) from jbpm4_ext_formreg t where t.FORMNAME=''批量计划新增页面'' and t.FORMURL=''/financial/payplan/payplanAddflow.htm''') then
insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3, C_FORMBEAN)
values ('dbec6253155a4d5390f62489d8f129fc', 'b4f539ddefb848f99ff48c1a8f4b5f8f', 'PAGE_MW', '批量计划新增页面', '/financial/payplan/payplanAddflow.htm', null, null, null, null, null, null);
end if;


if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.SERVICEID=''payPlanManager.endBatchProcess'' and t.SERVICENAME=''用款计划批量结束流程''') then
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('919090e07083445781842c60caa5a2ae', 'spring', 'payPlanManager.endBatchProcess', '用款计划批量结束流程', '用款计划批量流程', null, 'Y', null, null, null);

end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.SERVICE_DBID=''919090e07083445781842c60caa5a2ae'' and t.PARAM_NAME=''流程实例号''') then
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('3e4761a47dd044fc8b2761198b8301f4', '919090e07083445781842c60caa5a2ae', '流程实例号', '0', 'String', '流程实例号', '#{processInstanceId}');

end if;
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.SERVICE_DBID=''919090e07083445781842c60caa5a2ae'' and t.PARAM_NAME=''审批状态''') then
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('d6400c7df2ca4112896b5a0bdf70dc2a', '919090e07083445781842c60caa5a2ae', '审批状态', '1', 'String', '"1"：审批通过，''0"：驳回', '"1"');

end if;
end;
/