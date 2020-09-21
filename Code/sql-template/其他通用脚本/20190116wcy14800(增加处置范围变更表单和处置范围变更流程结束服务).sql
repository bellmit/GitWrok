declare
begin
if not fc_IsDataExists('select count(*) from jbpm4_ext_formreg t where t.uuid = ''20d0cc6dda62497cb5bf3d090c0c2def''') then
insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3, C_FORMBEAN, C_SYSTEM)
values ('20d0cc6dda62497cb5bf3d090c0c2def', '-1                              ', 'PAGE_MW', '处置范围变更表单', '/pm/handleproject/disposalObjectChangeFlow.htm', null, null, null, null, null, null, null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''f7a972e1cd8746e48db6514d3eba7c51''') then
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('f7a972e1cd8746e48db6514d3eba7c51', 'spring', 'handlProjectManager.doEndDisposalObjectChangeFlow', '处置范围变更流程结束', null, null, 'Y', null, null, null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''e31c897a56e6454184f30ebb3c49b027''') then
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('e31c897a56e6454184f30ebb3c49b027', 'f7a972e1cd8746e48db6514d3eba7c51', '审批结果', '1', 'String', null, null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''2908b68dd6f94c1aa12aa31d174b36f7''') then
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('2908b68dd6f94c1aa12aa31d174b36f7', 'f7a972e1cd8746e48db6514d3eba7c51', '流程实例号', '0', 'String', null, '#{processInstanceId}');
end if;
end;
/
