declare
begin
--���̷���
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''a7fc3596c51342bfafc7f38845368fcf''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('a7fc3596c51342bfafc7f38845368fcf', 'spring', 'paymentDataManager.updateLoancountOrtaccount', 'ҵ��֧���ͻؿ�ת�����̽�������', null, null, 'Y', null, null, null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''3b22a6de591145448b47a43bbb2a9cb2''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('3b22a6de591145448b47a43bbb2a9cb2', 'a7fc3596c51342bfafc7f38845368fcf', '��Աid', '1', 'String', '', '#{currentUserId}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''525260075bce44898d562b5319abd108''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('525260075bce44898d562b5319abd108', 'a7fc3596c51342bfafc7f38845368fcf', '��ˮ״̬', '2', 'String', '0��˲�ͨ��/1δ���/2�����/3���ͨ��/4�����ˣ��ѽ��գ�', '"4"');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''87e9b9817df74fe49f67999b8e58abfc''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('87e9b9817df74fe49f67999b8e58abfc', 'a7fc3596c51342bfafc7f38845368fcf', '����ʵ��id', '0', 'String', '', '#{processInstanceId}');
end if;
end;
/
