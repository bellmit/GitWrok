declare
begin
--���̷��� ��Ҫ��ӽ�������
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''86186C5ACE53D68FE05011AC050073D6''') then
  insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('86186C5ACE53D68FE05011AC050073D6', 'spring', 'afterProgramManager.afterProgramFlowEndService', 'Ͷ�����������������������', '��������ͨ������±����״̬', '', 'Y', '', 0, 0);
end if;
--�����������-����ʵ����
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''86186C5ACE62D68FE05011AC050073D6''') then
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('86186C5ACE62D68FE05011AC050073D6', '86186C5ACE53D68FE05011AC050073D6', '����ʵ����', '0', 'String', '��ǰ���̵�ʵ��id', '#{processInstanceId}');
end if;
--�����������-�������
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''86186C5ACE63D68FE05011AC050073D6''') then
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('86186C5ACE63D68FE05011AC050073D6', '86186C5ACE53D68FE05011AC050073D6', '�������', '1', 'String', '���������"1"������ͨ������"2"��������ͨ��', null);
end if;
--�����������-��ǰ������
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''86186C5ACE65D68FE05011AC050073D6''') then
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('86186C5ACE65D68FE05011AC050073D6', '86186C5ACE53D68FE05011AC050073D6', '��ǰ������', '2', 'String', '���̵�ǰ������', '#{currentApproveUser}');
end if;
end;
/