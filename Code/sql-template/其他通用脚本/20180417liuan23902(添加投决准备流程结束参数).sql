declare
begin

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID=''995f6f97f85e412b96d8edf125c4278e''') then 
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('995f6f97f85e412b96d8edf125c4278e', '6daf4818c00a462b965da1121c404107', '用户ID', 'userId', 'string', null, '#{currentApproveUser');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID=''06e23a87d9e34c738dd1265c43f134e0''') then 
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('06e23a87d9e34c738dd1265c43f134e0', '6daf4818c00a462b965da1121c404107', '流程实例id', 'processInstanceId', 'string', null, '#{processInstanceId}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID=''dc15391619bd40c090b262f28db67c26''') then 
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('dc15391619bd40c090b262f28db67c26', '6daf4818c00a462b965da1121c404107', '审批结果', 'flowstatus', 'string', null, '"1"');
end if;

end;
/