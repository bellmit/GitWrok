declare
begin

if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''b60bfbd73dd9402d8a193b3020774917''') then
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('b60bfbd73dd9402d8a193b3020774917', 'spring', 'fundFactorManager.setupFundInfo', '基金成立结束服务', null, null, 'Y', null, null, null);
end if;


if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''6920abac7d424259ba2f7dedbf5bed87''') then
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('6920abac7d424259ba2f7dedbf5bed87', 'b60bfbd73dd9402d8a193b3020774917', '流程实例号', '0', 'string', null, '#{processInstanceId}');
end if;

end;
/