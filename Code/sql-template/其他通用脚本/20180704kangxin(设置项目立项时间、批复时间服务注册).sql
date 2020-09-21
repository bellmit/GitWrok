declare
begin

if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.UUID=''95a6e2d93a0440fa8971790abe43f683''') then
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('95a6e2d93a0440fa8971790abe43f683', 'spring', 'assetPacketManager.setProjectSetUpdate', '设置项目立项时间', null, null, 'Y', null, null, null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.UUID=''38e170bb9f0c4b3b9a4f7ce89b1624ab''') then 
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('38e170bb9f0c4b3b9a4f7ce89b1624ab', 'spring', 'assetPacketManager.setProjectReplydate', '设置项目批复时间', null, null, 'Y', null, null, null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID=''123de68ee4764264a8895c217543d9ef''') then 
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('123de68ee4764264a8895c217543d9ef', '38e170bb9f0c4b3b9a4f7ce89b1624ab', '流程实例号', '0', 'string', null, '#{processInstanceId}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID=''f99e663ba1e84127b50c05e53537c391''') then 
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('f99e663ba1e84127b50c05e53537c391', '95a6e2d93a0440fa8971790abe43f683', '流程实例号', '0', 'String', null, '#{processInstanceId}');
end if;

end;
/

