declare
begin
if not fc_IsExistsExtServiceReg('387865abfbac44e4bbe46191d6f8daf0') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('387865abfbac44e4bbe46191d6f8daf0', 'spring', 'handlProjectManager.pushGPInfoToTaobao', '将挂牌申请信息推送至淘宝服务', null, null, 'Y', null, null, null);
end if;
if not fc_IsExistsExtServiceParaIn('42c4bef6928b489a91a6555e0ec05057') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('42c4bef6928b489a91a6555e0ec05057', '387865abfbac44e4bbe46191d6f8daf0', '流程实例号', '0', 'String', null, '#{processInstanceId}');
end if;
end;
/
