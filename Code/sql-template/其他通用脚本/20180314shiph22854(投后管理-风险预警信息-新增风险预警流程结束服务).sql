--[201802080616]20180314shiph22854(Ͷ�����-����Ԥ����Ϣ-��������Ԥ�����̽�������)--start--
declare
begin
--���̷���
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''62480a9c6ca54172b7d0bbadf9162eaa''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('62480a9c6ca54172b7d0bbadf9162eaa', 'spring', 'riskWarningManager.riskWarningFlowEndService', '����Ԥ�����̽�������', '���շ������̽����󣬸��·���Ԥ����Ϣ��¼����״̬����', '', 'Y', '', 0, 0);
end if;
--�����������-����ʵ����
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''3b86ebf0feb44f6db6977fd289da4bf9''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('3b86ebf0feb44f6db6977fd289da4bf9', '62480a9c6ca54172b7d0bbadf9162eaa', '����ʵ����', '0', 'String', '��ǰ���̵�ʵ��id', '#{processInstanceId}');
end if;
--�����������-�������
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''8cfd634a327b4c16a11e8574aad83432''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('8cfd634a327b4c16a11e8574aad83432', '62480a9c6ca54172b7d0bbadf9162eaa', '�������', '1', 'String', '���������"1"������ͨ������"2"��������ͨ��', null);
end if;
--�����������-��ǰ������
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''88906a69873046d9bd0719200447a33d''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('88906a69873046d9bd0719200447a33d', '62480a9c6ca54172b7d0bbadf9162eaa', '��ǰ������', '2', 'String', '���̵�ǰ������', '#{currentApproveUser}');
end if;
end;
/
--[201802080616]20180314shiph22854(Ͷ�����-����Ԥ����Ϣ-��������Ԥ�����̽�������)--start--
