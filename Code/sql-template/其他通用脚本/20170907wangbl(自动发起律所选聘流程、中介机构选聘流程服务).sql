--�ʲ������������������ѡƸ���̡��н����ѡƸ���̷���
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('5956eca68dc645938a7404acf5e35fb2', '������', 'tcmp.pm.project.startOfficeSelectorProcess', '����ѡƸ���̿�ʼ', null, null, 'Y', null, null, null);

insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('274ec72784b44957b6f5a16263001d46', '������', 'tcmp.pm.project.startAgencySelector', '��������ѡƸ���̿�ʼ', null, null, 'Y', null, null, null);

--�ʲ������������������ѡƸ���̡��н����ѡƸ���̷������
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('54e05151de8244a19fb6f70a27f2dbc7', '274ec72784b44957b6f5a16263001d46', '�û�ID', 'userId', 'string', null, '#{currentApproveUser}');

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('16784f56c1634d25886d6b02bcbd0d27', '274ec72784b44957b6f5a16263001d46', '�������', 'flowstatus', 'string', null, '"1"');

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('af92be59d6b24d0dab24d0da6cd8dd8d', '274ec72784b44957b6f5a16263001d46', '�Ƿ񱣴�', 'isSaveWorkflow', 'string', null, '"1"');

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('e42dfc2b39d1487c8049eb21936fe8f4', '274ec72784b44957b6f5a16263001d46', '����ʵ��id', 'processInstanceId', 'string', null, '#{processInstanceId}');

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('9589f2fec21946e998864a7bffcf3f45', '274ec72784b44957b6f5a16263001d46', '����������key', 'processKey', 'string', null, '"agencySelector1"');

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('8a599f8d61e446919769afb6de0dee49', '5956eca68dc645938a7404acf5e35fb2', '�Ƿ񱣴�', 'isSaveWorkflow', 'string', null, '"1"');

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('4a66bb34a6234a58a7e6fd8607109cc3', '5956eca68dc645938a7404acf5e35fb2', '����ʵ��id', 'processInstanceId', 'string', null, '#{processInstanceId}');

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('c841bce1719e48bca016e6a14abc20b7', '5956eca68dc645938a7404acf5e35fb2', '�û�ID', 'userId', 'string', null, '#{currentApproveUser}');

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('219ae1c6e4574f0891939abb08d9fc82', '5956eca68dc645938a7404acf5e35fb2', '�������', 'flowstatus', 'string', null, '"1"');

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('bfd3a45578b746899f12e8aef437615c', '5956eca68dc645938a7404acf5e35fb2', '����������key', 'processKey', 'string', null, '"officeSelector"');
