declare
begin
--流程服务 需要添加结束符号
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''cbcfc9166b9e486880b82af1bd14f4eb''') then
  insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('cbcfc9166b9e486880b82af1bd14f4eb', 'spring', 'projectManager.setUpFund', '自动生成基金服务', null, null, 'Y', null, null, null);
end if;
--服务输入参数-流程实例号
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''e3fe3c49fc884175ac73c07a70eb7ccf''') then
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('e3fe3c49fc884175ac73c07a70eb7ccf', 'cbcfc9166b9e486880b82af1bd14f4eb', '流程实例号', '0', 'String', null, '#{processInstanceId}');
end if;
end;
/