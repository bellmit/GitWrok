declare
begin

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID=''e160a686a8f44220960ebc51cf7ad005''') then 
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('e160a686a8f44220960ebc51cf7ad005', '7c8be8b624924ed989f7c2db2bb8ed42', '审批结果', 'flowstatus', 'string', null, '"0"');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID=''e5d376357b09470b9f43b07852f87160''') then 
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('e5d376357b09470b9f43b07852f87160', '7c8be8b624924ed989f7c2db2bb8ed42', '用户ID', 'userId', 'string', null, '#{currentApproveUser}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID=''754e0c4fecb140ab867ed162e56abbb4''') then 
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('754e0c4fecb140ab867ed162e56abbb4', '7c8be8b624924ed989f7c2db2bb8ed42', '流程实例id', '流程实例id', 'string', null, '#{processInstanceId}');
end if;

end;
/