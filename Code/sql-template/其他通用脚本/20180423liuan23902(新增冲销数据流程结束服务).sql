declare
begin
--流程服务
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''3ce4cb7a7e014a6abc474447f647ddbb''') then
  insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('3ce4cb7a7e014a6abc474447f647ddbb', 'spring', 'fundRepayManager.endProcess', '冲销数据流程结束服务', '冲销数据流程结束服务', null, 'Y', null, null, null);
end if;

--服务输入参数-审批状态
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''3197006ea80c42f9bcb0cbeb9602e9cf''') then
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('3197006ea80c42f9bcb0cbeb9602e9cf', '3ce4cb7a7e014a6abc474447f647ddbb', '审批状态', '1', 'String', '"1"：审批通过，''0"：驳回发起人', '"1"');
end if;
--服务输入参数-流程实例号
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''2620f551b12f4ce5bf007c21e9a70f74''') then
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('2620f551b12f4ce5bf007c21e9a70f74', '3ce4cb7a7e014a6abc474447f647ddbb', '流程实例号', '0', 'String', null, '#{processInstanceId}');
end if;
end;
/