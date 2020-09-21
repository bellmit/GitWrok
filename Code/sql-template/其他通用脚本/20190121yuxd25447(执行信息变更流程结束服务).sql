declare
begin
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.UUID=''275ac8eb050c4fbfba9333c6fedbbf50''') then
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('275ac8eb050c4fbfba9333c6fedbbf50', 'spring', 'lawsuitExecutionManager.executeChangeProcessEndService', '执行主体流程变更结束服务', null, null, 'Y', null, null, null);
end if;
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID=''da0ec689d55949afbd4002883c783c1f''') then
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('da0ec689d55949afbd4002883c783c1f', '275ac8eb050c4fbfba9333c6fedbbf50', '审批人', '2', 'String', null, '#{currentApproveUser}');
end if;
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID=''dd2a22cd1ed94852bca953e1c8382737''') then
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('dd2a22cd1ed94852bca953e1c8382737', '275ac8eb050c4fbfba9333c6fedbbf50', '流程实例号', '0', 'String', null, '#{processInstanceId}');
end if;
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID=''825742b4d8db4e7681a5782d3921f61d''') then
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('825742b4d8db4e7681a5782d3921f61d', '275ac8eb050c4fbfba9333c6fedbbf50', '审批状态', '1', 'String', null, '1');
end if;
end;
/