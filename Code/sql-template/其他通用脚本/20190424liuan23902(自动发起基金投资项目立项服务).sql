declare
begin
--流程服务 需要添加结束符号
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''607fc0ecb0e5451cb63e8382cb3fc0b5''') then
  insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('607fc0ecb0e5451cb63e8382cb3fc0b5', 'spring', 'projectManager.startFundInvestProjectFlow', '自动发起基金投资项目立项流程服务', null, null, 'Y', null, null, null);
end if;
--服务输入参数-流程实例号
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''1e73578b77c4445489ceb79e0455e74d''') then
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
  values ('1e73578b77c4445489ceb79e0455e74d', '607fc0ecb0e5451cb63e8382cb3fc0b5', '流程实例号', '0', 'String', null, '#{processInstanceId}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''c6fcbc1cffd24796a5d7e1a34127b226''') then
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
  values ('c6fcbc1cffd24796a5d7e1a34127b226', '607fc0ecb0e5451cb63e8382cb3fc0b5', '用户id', '1', 'String', null, '#{currentApproveUser}');
end if;
end;
/