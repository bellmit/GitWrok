declare
begin
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''bcf518f0fb9743009e15ab89de485ce6''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('bcf518f0fb9743009e15ab89de485ce6', 'spring', 'payPlanManager.createOrUpdatePayPlan', '生成或更新用款计划', '在项目立项、提案、合同处生成或更新用款计划', '', 'Y', '', 0, 0);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''1a56e096839a434eba4cd160cf04b7c6''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('1a56e096839a434eba4cd160cf04b7c6', 'bcf518f0fb9743009e15ab89de485ce6', '流程实例号', '0', 'String', '流程实例号', '#{processInstanceId}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''16b4299073c0456d89ad61aa11164b0c''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('16b4299073c0456d89ad61aa11164b0c', 'bcf518f0fb9743009e15ab89de485ce6', '用户', '1', 'String', '生成或修改用款计划的用户id', '#{starter}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''5dce7ef99f824aea8f47bb1ef97e270a''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('5dce7ef99f824aea8f47bb1ef97e270a', 'bcf518f0fb9743009e15ab89de485ce6', '类型', '2', 'String', 'type=1项目, type =2合同', '"1"');
end if;

end;
/