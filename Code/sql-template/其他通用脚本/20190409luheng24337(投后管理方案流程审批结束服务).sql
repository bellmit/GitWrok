declare
begin
--流程服务 需要添加结束符号
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''86186C5ACE53D68FE05011AC050073D6''') then
  insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('86186C5ACE53D68FE05011AC050073D6', 'spring', 'afterProgramManager.afterProgramFlowEndService', '投后管理方案流程审批结束服务', '流程审批通过后更新表单审核状态', '', 'Y', '', 0, 0);
end if;
--服务输入参数-流程实例号
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''86186C5ACE62D68FE05011AC050073D6''') then
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('86186C5ACE62D68FE05011AC050073D6', '86186C5ACE53D68FE05011AC050073D6', '流程实例号', '0', 'String', '当前流程的实例id', '#{processInstanceId}');
end if;
--服务输入参数-审批结果
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''86186C5ACE63D68FE05011AC050073D6''') then
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('86186C5ACE63D68FE05011AC050073D6', '86186C5ACE53D68FE05011AC050073D6', '审批结果', '1', 'String', '审批结果，"1"：审批通过，，"2"：审批不通过', null);
end if;
--服务输入参数-当前处理人
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''86186C5ACE65D68FE05011AC050073D6''') then
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('86186C5ACE65D68FE05011AC050073D6', '86186C5ACE53D68FE05011AC050073D6', '当前处理人', '2', 'String', '流程当前处理人', '#{currentApproveUser}');
end if;
end;
/