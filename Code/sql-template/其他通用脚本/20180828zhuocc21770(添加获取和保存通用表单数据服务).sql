declare
begin

--添加获取通用表单数据服务
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''747a38d0ce755175e05011ac06007d42''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('747a38d0ce755175e05011ac06007d42', 'spring', 'lawsuitManager.saveLawsuitFlowChangeLog', '获取通用表单数据服务', '获取通用表单数据服务', null, 'Y', null, null, null);
end if;

--服务输入参数-流程实例号
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''747ba0640e62bcc6e05011ac06007edc''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('747ba0640e62bcc6e05011ac06007edc', '747a38d0ce755175e05011ac06007d42', '流程实例号', '0', 'String', '', '#{processInstanceId}');
end if;

--服务输入参数-任务编号
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''747ba0640e68bcc6e05011ac06007edc''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('747ba0640e68bcc6e05011ac06007edc', '747a38d0ce755175e05011ac06007d42', '任务编号', '1', 'String', null, '#{lastTaskId}');
end if;

end;
/
