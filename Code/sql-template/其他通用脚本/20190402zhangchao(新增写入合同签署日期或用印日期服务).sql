declare
begin
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg where UUID = ''20f38d283376428b80cd39bc509f3cf5''') then 
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('20f38d283376428b80cd39bc509f3cf5', 'spring', 'cbmsInvestContractManager.updateContractsigndate', 'д���ͬǩ������/��ӡ����', 'д���ͬǩ������/��ӡ����', null, 'Y', null, null, null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in where SERVICE_DBID = ''20f38d283376428b80cd39bc509f3cf5''') then 
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('b6d0f6ac482644ecbb30a31423dd198e', '20f38d283376428b80cd39bc509f3cf5', '����ʵ����', '0', 'String', null, '#{processInstanceId}');
end if;
end;
/
