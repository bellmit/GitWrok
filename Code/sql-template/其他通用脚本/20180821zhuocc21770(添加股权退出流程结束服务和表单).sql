declare
begin

--添加股权资产作废流程结束服务
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''9efd3af786b943e2b69d17e2665b5c08''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('9efd3af786b943e2b69d17e2665b5c08', 'spring', 'equityAssetManager.equityQuitFlowEndService', '股权退出结束服务', '股权退出结束服务', null, 'Y', null, null, null);
end if;

--服务输入参数-流程实例号
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''0dce9b61606a43e1a981472e9e376aaf''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('0dce9b61606a43e1a981472e9e376aaf', '9efd3af786b943e2b69d17e2665b5c08', '流程实例号', '0', 'String', '', '#{processInstanceId}');
end if;

--服务输入参数-审批状态
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''626ff8efb60b4f668bfc04a22b7dd89c''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('626ff8efb60b4f668bfc04a22b7dd89c', '9efd3af786b943e2b69d17e2665b5c08', '审批状态', '1', 'String', null, '"1"');
end if;

--服务输入参数-审批人
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''2e367f01ec1d45f791cf5cda210822a5''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('2e367f01ec1d45f791cf5cda210822a5', '9efd3af786b943e2b69d17e2665b5c08', '审批人', '2', 'String', null, '#{currentApproveUser}');
end if;

--股权退出表单
if not fc_IsDataExists('select count(*) from jbpm4_ext_formreg t where t.UUID=''e1fa52413316410c9943797be7cf5226''') then 
	insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3)
	values ('e1fa52413316410c9943797be7cf5226', '-1', 'PAGE_MW', '股权退出表单', '/pm/equityasset/equityQuitRecordForm.htm', null, null, null, null, null);
end if;

end;
/
