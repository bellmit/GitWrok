
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('476550f0e5bb40c2b74d3e6127338011', 'spring', 'paymentDataManager.updatecontractstatus', '���º�ͬ״̬', '���º�ͬ״̬', null, 'Y', null, null, null);

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('ca483da5bfe442d5a452f615ffd76db4', '476550f0e5bb40c2b74d3e6127338011', '����ʵ����', '0', 'String', null, '#{processInstanceId}');

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('b86958387cc34e41afa271f270f08995', '476550f0e5bb40c2b74d3e6127338011', '�޸ĺ�ĺ�ͬ״̬', '1', 'String', null, '''1''');

