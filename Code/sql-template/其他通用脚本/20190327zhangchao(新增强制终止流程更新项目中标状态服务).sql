declare
begin
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.UUID=''b8ab8f4d7a0f4887ab4406b73ce9dc8c''') then
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('b8ab8f4d7a0f4887ab4406b73ce9dc8c', 'spring', 'bidResultManager.updateProjectBidResult', '强制终止流程更新项目中标状态', null, null, 'Y', null, null, null);
end if;
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID=''5871edf2b71045b5a70d3ff119872283''') then
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('5871edf2b71045b5a70d3ff119872283', 'b8ab8f4d7a0f4887ab4406b73ce9dc8c', '流程实例号', '0', 'String', null, '#{processInstanceId}');
end if;

end;
/