declare
begin

if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.UUID =''fe286eb7ec4e4afa9c1437f9303e586b''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('fe286eb7ec4e4afa9c1437f9303e586b', 'spring', 'disposalObjectInfoManager.updateDisposalObjectInfoByProcessInstanceid', '处置立项否决更改资产状态', null, null, 'Y', null, null, null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID =''f73e86d355be4c66984439d7c2c2ee84''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('f73e86d355be4c66984439d7c2c2ee84', 'fe286eb7ec4e4afa9c1437f9303e586b', '处置对象是否有效', '1', 'string', '0无效，1有效', '0');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID =''7d4b60512ed345c0961e355cfcc330ee''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('7d4b60512ed345c0961e355cfcc330ee', 'fe286eb7ec4e4afa9c1437f9303e586b', '流程实例号', '0', 'string', null, '#{processInstanceId}');
end if;

end;
/