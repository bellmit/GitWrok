declare
begin
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''bcf518f0fb9743009e15ab89de485ce6''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('bcf518f0fb9743009e15ab89de485ce6', 'spring', 'payPlanManager.createOrUpdatePayPlan', '���ɻ�����ÿ�ƻ�', '����Ŀ����᰸����ͬ�����ɻ�����ÿ�ƻ�', '', 'Y', '', 0, 0);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''1a56e096839a434eba4cd160cf04b7c6''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('1a56e096839a434eba4cd160cf04b7c6', 'bcf518f0fb9743009e15ab89de485ce6', '����ʵ����', '0', 'String', '����ʵ����', '#{processInstanceId}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''16b4299073c0456d89ad61aa11164b0c''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('16b4299073c0456d89ad61aa11164b0c', 'bcf518f0fb9743009e15ab89de485ce6', '�û�', '1', 'String', '���ɻ��޸��ÿ�ƻ����û�id', '#{starter}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''5dce7ef99f824aea8f47bb1ef97e270a''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('5dce7ef99f824aea8f47bb1ef97e270a', 'bcf518f0fb9743009e15ab89de485ce6', '����', '2', 'String', 'type=1��Ŀ, type =2��ͬ', '"1"');
end if;

end;
/