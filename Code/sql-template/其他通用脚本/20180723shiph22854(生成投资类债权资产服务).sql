--[201806140573]20180723shiph22854(ծȨ�ʲ�����-����Ͷ����ծȨ�ʲ�����)-- start --
declare
begin
--���̷���
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''734B4ECA4C8A4ECDA6FBFC2A7B2DBA1B''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('734B4ECA4C8A4ECDA6FBFC2A7B2DBA1B', 'spring', 'creditorContractManager.generateInvestAssetService', '����Ͷ����ծȨ�ʲ�����', 'Ͷ�����ͬ�ĸ���������������ͨ��������Ͷ����ծȨ�ʲ���', '', 'Y', '', 0, 0);
end if;
--�����������-����ʵ����
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''1EDC8799FBC245B8AE895E4C563CEB20''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('1EDC8799FBC245B8AE895E4C563CEB20', '734B4ECA4C8A4ECDA6FBFC2A7B2DBA1B', '����ʵ����', '0', 'String', '��ǰ���̵�ʵ��id', '#{processInstanceId}');
end if;
--�����������-�������
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''2A627D5AA06C4C1698017ADF5B27EB1C''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('2A627D5AA06C4C1698017ADF5B27EB1C', '734B4ECA4C8A4ECDA6FBFC2A7B2DBA1B', '�������', '1', 'String', '���������1-����ͨ����2-������ͨ����Ĭ������1', '1');
end if;
end;
/
--[201806140573]20180723shiph22854(ծȨ�ʲ�����-����Ͷ����ծȨ�ʲ�����)-- start --
