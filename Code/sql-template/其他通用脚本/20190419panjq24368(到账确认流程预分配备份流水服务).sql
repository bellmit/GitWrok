declare
begin
--20190419panjq24368(����ȷ������Ԥ���䱸����ˮ����)---start--
--���̷��� ��Ҫ��ӽ�������
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''1c98733947b3473f8bc2201681191b02''') then
  insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('1c98733947b3473f8bc2201681191b02', 'spring', 'arrivalDataManager.copyInvestTraceProcess', '����ȷ��Ԥ�����˻���ˮ��¼���ݷ���', '����Ͷ����ˮ��Ͷ����ˮ��ϸ��', '', 'Y', '', 0, 0);
end if;
--�����������-����ʵ����
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''dce43c44faa145f98187f2e97dd1674f''') then
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('dce43c44faa145f98187f2e97dd1674f', '1c98733947b3473f8bc2201681191b02', '����ʵ����', '0', 'String', '����ʵ����', '#{processInstanceId}');
end if;

--20190419panjq24368(����ȷ������Ԥ���䱸����ˮ����)---start--

end;
/