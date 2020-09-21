delete from jbpm4_ext_service_para_in t where t.uuid='eca64e75623f41a89e83712d4d093b46';
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('eca64e75623f41a89e83712d4d093b46', '5956eca68dc645938a7404acf5e35fb2', '是否需要选聘律所', 'isNeedLawfirm', 'string', null, '#{isNeedLawfirm}');
