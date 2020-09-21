declare
begin

--添加非淘宝挂牌申请流程结束服务
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''e8a69a8f6f19499c8d0123b6acec9500''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('e8a69a8f6f19499c8d0123b6acec9500', 'spring', 'handlProjectManager.setListingInfo', '非淘宝挂牌申请结束服务', '股权退出结束服务', null, 'Y', null, null, null);
end if;

--服务输入参数-流程实例号
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''e769cbc4559c4d66a8fa58c27ba4f45d''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('e769cbc4559c4d66a8fa58c27ba4f45d', 'e8a69a8f6f19499c8d0123b6acec9500', '流程实例号', '0', 'String', '', '#{processInstanceId}');
end if;

--服务输入参数-审批状态
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''129047c19d244443ab68322c01d62a4c''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('129047c19d244443ab68322c01d62a4c', 'e8a69a8f6f19499c8d0123b6acec9500', '审批状态', '1', 'String', null, '"1"');
end if;

--服务输入参数-审批人
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''a01896f957874015a1e473cea916a37e''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('a01896f957874015a1e473cea916a37e', 'e8a69a8f6f19499c8d0123b6acec9500', '审批人', '2', 'String', null, '#{currentApproveUser}');
end if;

end;
/
