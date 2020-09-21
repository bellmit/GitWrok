declare
begin
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.UUID=''1b25420256b1427795a9ffef4dab528b''') then
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('1b25420256b1427795a9ffef4dab528b', 'spring', 'riskWarningManager.riskWarningMessageNotice', '风险预警消息提醒', '风险预警流程审批结束后，发送消息给指定的人', null, 'Y', null, null, null);
end if;
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID=''8aaec51e1fe3434f8835392ad40b224d''') then
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('8aaec51e1fe3434f8835392ad40b224d', '1b25420256b1427795a9ffef4dab528b', '流程实例号', '0', 'String', null, '#{processInstanceId}');
end if;
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID=''d062196b01e947dfb6a773b5bcfa5178''') then
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('d062196b01e947dfb6a773b5bcfa5178', '1b25420256b1427795a9ffef4dab528b', ' ', '1', 'String', null, ' ');
end if;
end;
/