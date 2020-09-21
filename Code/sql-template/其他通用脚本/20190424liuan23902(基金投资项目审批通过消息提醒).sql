declare
begin
--流程服务
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''97c707bb5dd54d588e135e18b3ac59aa''') then
  insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
 values ('97c707bb5dd54d588e135e18b3ac59aa', 'spring', 'projectManager.fundInvestProPassSendNotice', '基金投资项目审批通过消息提醒', null, null, 'Y', null, null, null);
end if;

--服务输入参数
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''d17e1d2cfce248a9a07c0679f1c73c2b''') then
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
  values ('d17e1d2cfce248a9a07c0679f1c73c2b', '97c707bb5dd54d588e135e18b3ac59aa', '发送人', '0', 'string', null, '#{currentApproveUser}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''43102e337050401eb1440ff3d5998c0b''') then
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
  values ('43102e337050401eb1440ff3d5998c0b', '97c707bb5dd54d588e135e18b3ac59aa', '流程实例号', '2', 'string', null, '#{processInstanceId}');
end if;

execute immediate 'update jbpm4_ext_service_para_in t set t.param_code = ''1'' where t.uuid = ''43102e337050401eb1440ff3d5998c0b''';
end;
/