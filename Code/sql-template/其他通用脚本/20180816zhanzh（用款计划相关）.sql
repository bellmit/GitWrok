declare
begin


if not fc_IsDataExists('select count(*) from jbpm4_ext_formreg t where t.FORMNAME=''�����ƻ�����ҳ��'' and t.FORMURL=''/financial/payplan/payplanAddflow.htm''') then
insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3, C_FORMBEAN)
values ('dbec6253155a4d5390f62489d8f129fc', 'b4f539ddefb848f99ff48c1a8f4b5f8f', 'PAGE_MW', '�����ƻ�����ҳ��', '/financial/payplan/payplanAddflow.htm', null, null, null, null, null, null);
end if;


if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.SERVICEID=''payPlanManager.endBatchProcess'' and t.SERVICENAME=''�ÿ�ƻ�������������''') then
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('919090e07083445781842c60caa5a2ae', 'spring', 'payPlanManager.endBatchProcess', '�ÿ�ƻ�������������', '�ÿ�ƻ���������', null, 'Y', null, null, null);

end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.SERVICE_DBID=''919090e07083445781842c60caa5a2ae'' and t.PARAM_NAME=''����ʵ����''') then
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('3e4761a47dd044fc8b2761198b8301f4', '919090e07083445781842c60caa5a2ae', '����ʵ����', '0', 'String', '����ʵ����', '#{processInstanceId}');

end if;
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.SERVICE_DBID=''919090e07083445781842c60caa5a2ae'' and t.PARAM_NAME=''����״̬''') then
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('d6400c7df2ca4112896b5a0bdf70dc2a', '919090e07083445781842c60caa5a2ae', '����״̬', '1', 'String', '"1"������ͨ����''0"������', '"1"');

end if;
end;
/