--[201802080616]20180314shiph22854(Ͷ�����-����Ԥ����Ϣ-�������շ������̽�������)--start--
declare
begin
--���̷���
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''4e172c706cec400aaf0a357239136593''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('4e172c706cec400aaf0a357239136593', 'spring', 'riskWarningManager.riskFeedbackFlowEndService', '���շ������̽�������', '���շ������̽����󣬸��·��շ�����Ϣ��¼����״̬����', '', 'Y', '', 0, 0);
end if;
--�����������-����ʵ����
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''b1f3af1e5bbc4d7cafc82dac4aec8848''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('b1f3af1e5bbc4d7cafc82dac4aec8848', '4e172c706cec400aaf0a357239136593', '����ʵ����', '0', 'String', '��ǰ���̵�ʵ��id', '#{processInstanceId}');
end if;
--�����������-�������
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''3a93a451db2c4fc88fe5739dd39849a2''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('3a93a451db2c4fc88fe5739dd39849a2', '4e172c706cec400aaf0a357239136593', '�������', '1', 'String', '���������"1"������ͨ������"2"��������ͨ��', null);
end if;
--�����������-��ǰ������
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''342284ae5b424b2a82c915741920f336''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('342284ae5b424b2a82c915741920f336', '4e172c706cec400aaf0a357239136593', '��ǰ������', '2', 'String', '���̵�ǰ������', '#{currentApproveUser}');
end if;
end;
/
--[201802080616]20180314shiph22854(Ͷ�����-����Ԥ����Ϣ-�������շ������̽�������)--start--
