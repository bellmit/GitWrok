--[201806140573]20180723shiph22854(ծȨ�ʲ�����-���ɴ�����ծȨ�ʲ�����)-- start --
declare
begin
--���̷���
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''0EEFA2EE1B8F4DC8BFC55472798AD0F5''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('0EEFA2EE1B8F4DC8BFC55472798AD0F5', 'spring', 'creditorContractManager.generateDisposalAssetService', '���ɴ�����ծȨ�ʲ�����', '�������ͬ�ĺ�ͬ�ı�������������ͨ�������ɴ�����ծȨ�ʲ���', '', 'Y', '', 0, 0);
end if;
--�����������-����ʵ����
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''91669EDD1A47481B8827B101CFB0525E''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('91669EDD1A47481B8827B101CFB0525E', '0EEFA2EE1B8F4DC8BFC55472798AD0F5', '����ʵ����', '0', 'String', '��ǰ���̵�ʵ��id', '#{processInstanceId}');
end if;
--�����������-�������
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''1C9A134CE0F142FEB60DEEBDD7339E23''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('1C9A134CE0F142FEB60DEEBDD7339E23', '0EEFA2EE1B8F4DC8BFC55472798AD0F5', '�������', '1', 'String', '���������1-����ͨ����2-������ͨ����Ĭ������1', '1');
end if;
end;
/
--[201806140573]20180723shiph22854(ծȨ�ʲ�����-���ɴ�����ծȨ�ʲ�����)-- start --
