declare
begin

if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''701c97c2e30b47c885840af3255449a0''') then
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('701c97c2e30b47c885840af3255449a0', 'spring', 'meetingApplyManager.startMeetingApproveProcess', '根据项目性质自动发起投决审批流程', null, null, 'Y', null, null, null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''acf18f7d22b54effa96096bdc33a3e60''') then
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('acf18f7d22b54effa96096bdc33a3e60', '701c97c2e30b47c885840af3255449a0', '流程实例号', '0', 'string', null, '#{processInstanceId}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''6a4f8f495e1b4b9c8c415cb5c65d043e''') then
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('6a4f8f495e1b4b9c8c415cb5c65d043e', '701c97c2e30b47c885840af3255449a0', '用户ID', '1', 'string', '投决审批流程的发起人', null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''c1083e03fec744f3b8e7c06b92592ac1''') then
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('c1083e03fec744f3b8e7c06b92592ac1', '701c97c2e30b47c885840af3255449a0', '投决审批流程key', '2', 'string', '根据项目性质配置为json格式，如：{"01":"meetingApprove","02":"meetingApprove_TZ"}', null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''7d4c07b5ec134d5cac5c75bd778ebc70''') then
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('7d4c07b5ec134d5cac5c75bd778ebc70', '701c97c2e30b47c885840af3255449a0', '是否保存', '3', 'string', null, '"1"');
end if;
end;
/