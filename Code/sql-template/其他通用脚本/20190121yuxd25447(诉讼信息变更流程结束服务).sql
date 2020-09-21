declare
begin
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.UUID=''d45c8ccf2807436e940f0c3be8a3518a''') then
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('d45c8ccf2807436e940f0c3be8a3518a', 'spring', 'lawsuitManager.lawsuitChangeProcessEndService', '诉讼主体变流程结束服务', null, null, 'Y', null, null, null);
end if;
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID=''fe1d6a8cf2c6465ea8b06404dfd39d21''') then
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('fe1d6a8cf2c6465ea8b06404dfd39d21', 'd45c8ccf2807436e940f0c3be8a3518a', '审批人', '2', 'String', null, '#{currentApproveUser}');
end if;
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID=''991c5b9b4e0b4acba50708887c3bfbf4''') then
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('991c5b9b4e0b4acba50708887c3bfbf4', 'd45c8ccf2807436e940f0c3be8a3518a', '流程实例号', '0', 'String', null, '#{processInstanceId}');
end if;
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID=''19db0f4a8c0946b7a4ca5cb6fcaf9162''') then
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('19db0f4a8c0946b7a4ca5cb6fcaf9162', 'd45c8ccf2807436e940f0c3be8a3518a', '审批状态', '1', 'String', null, '1');
end if;
end;
/