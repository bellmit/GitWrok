declare
begin
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''6d0a323916504876bb7a0cc8b11dda8a''') then
  insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('6d0a323916504876bb7a0cc8b11dda8a', 'spring', 'aimsProjectInfoManager.changeAssetStatusAfterHandleProjectSetup', '处置立项变更资产处置状态', '', '', 'Y', '', null, null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''578d216011634510af1a81b207dce82c''') then
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('578d216011634510af1a81b207dce82c', '6d0a323916504876bb7a0cc8b11dda8a', '项目编号', '0', 'String', '', '#{projectcode}');
end if;
end;
/