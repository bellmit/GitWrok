declare
begin
--���̷��� ��Ҫ��ӽ�������
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''607fc0ecb0e5451cb63e8382cb3fc0b5''') then
  insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('607fc0ecb0e5451cb63e8382cb3fc0b5', 'spring', 'projectManager.startFundInvestProjectFlow', '�Զ��������Ͷ����Ŀ�������̷���', null, null, 'Y', null, null, null);
end if;
--�����������-����ʵ����
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''1e73578b77c4445489ceb79e0455e74d''') then
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
  values ('1e73578b77c4445489ceb79e0455e74d', '607fc0ecb0e5451cb63e8382cb3fc0b5', '����ʵ����', '0', 'String', null, '#{processInstanceId}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''c6fcbc1cffd24796a5d7e1a34127b226''') then
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
  values ('c6fcbc1cffd24796a5d7e1a34127b226', '607fc0ecb0e5451cb63e8382cb3fc0b5', '�û�id', '1', 'String', null, '#{currentApproveUser}');
end if;
end;
/