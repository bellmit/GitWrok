
--[201802080616]20180314shiph22854(Ͷ�����-����Ԥ����Ϣ-�޸ķ��ս�����̽���������������ʵ���ź͵�ǰ�����������������)--start--
declare
begin
--���̷���
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''d727ac5810c44dfab4c7a12a9bfaeb74''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('d727ac5810c44dfab4c7a12a9bfaeb74', 'spring', 'riskWarningManager.riskRemoveFlowEndService', '���ս�����̽�������', '���ս����������ͨ���󣬸��·���Ԥ��״̬Ϊ���ѽ������', '', 'Y', '', 0, 0);
end if;
--�����������-����ʵ����
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''481b1f3ef9844d8993c980a4162ea58a''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('481b1f3ef9844d8993c980a4162ea58a', 'd727ac5810c44dfab4c7a12a9bfaeb74', '����ʵ����', '0', 'String', '��ǰ���̵�ʵ��id', '#{processInstanceId}');
end if;
--�����������-�������
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''4c284d7b448b4fa49b13f6ead18b346a''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('4c284d7b448b4fa49b13f6ead18b346a', 'd727ac5810c44dfab4c7a12a9bfaeb74', '�������', '1', 'String', '���������"1"������ͨ������"2"��������ͨ��', null);
end if;
--�����������-��ǰ������
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''7ee2c3719766480c8696e4440e7cd76d''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('7ee2c3719766480c8696e4440e7cd76d', 'd727ac5810c44dfab4c7a12a9bfaeb74', '��ǰ������', '2', 'String', '���̵�ǰ������', '#{currentApproveUser}');
end if;
end;
/
--[201802080616]20180314shiph22854(Ͷ�����-����Ԥ����Ϣ-�޸ķ��ս�����̽���������������ʵ���ź͵�ǰ�����������������)--end--
