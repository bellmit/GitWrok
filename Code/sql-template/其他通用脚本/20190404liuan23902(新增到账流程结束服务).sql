declare
begin

if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg where UUID = ''78648d3d6b8f4c42b8110f471b982c39''') then 
    insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
  values ('78648d3d6b8f4c42b8110f471b982c39', 'spring', 'arrivalManager.endAddProcess', '���������������̽�������', null, null, 'Y', null, null, null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in where UUID = ''97d51456522a4581866ca4fd04485010''') then 
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
  values ('97d51456522a4581866ca4fd04485010', '78648d3d6b8f4c42b8110f471b982c39', '����ʵ����', '1', 'String', null, '#{processInstanceId}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in where UUID = ''4740c698b45c431cb0a90a1157f314f8''') then 
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
  values ('4740c698b45c431cb0a90a1157f314f8', '78648d3d6b8f4c42b8110f471b982c39', '��ǰ���̴�����', '2', 'String', null, '#{currentUserId}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in where UUID = ''3b23edab306948c888a2e13bb97adcfa''') then 
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
  values ('3b23edab306948c888a2e13bb97adcfa', '78648d3d6b8f4c42b8110f471b982c39', '���̷�����', '3', 'String', null, '#{starter}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in where UUID = ''6b24321ece984e7c9a080b70517e6c8a''') then 
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
  values ('6b24321ece984e7c9a080b70517e6c8a', '78648d3d6b8f4c42b8110f471b982c39', '�������', '0', 'String', null, null);
end if;

end;
/