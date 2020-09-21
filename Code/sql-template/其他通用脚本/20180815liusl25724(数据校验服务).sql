declare
begin
--数据校验服务
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''01399f4c823c4084af790d452c16da5e'' and t.serviceid=''projectInfoManager.dataVerification''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
	values ('01399f4c823c4084af790d452c16da5e', 'spring', 'projectInfoManager.dataVerification', '数据校验服务', null, null, 'Y', null, null, null);
end if;

--数据校验服务输入参数
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''9ecae5b116ad4dbf803b1619485ee916''') then
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
	values ('9ecae5b116ad4dbf803b1619485ee916', '01399f4c823c4084af790d452c16da5e', '数据类型', '1', 'String', '字段的数据类型', null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''e8746f163af7429da5d2902c422ee29a''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
	values ('e8746f163af7429da5d2902c422ee29a', '01399f4c823c4084af790d452c16da5e', '校验字段', '0', 'String', '需要校验的字段', null);
end if;
	
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''cba33ff3118b442eb75caac5eb53c85f''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
	values ('cba33ff3118b442eb75caac5eb53c85f', '01399f4c823c4084af790d452c16da5e', '等于值', '2', 'String', '字段的等于值', null);
end if;
	
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''d4d236e0b8c141e7ba014554fadff2ae''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
	values ('d4d236e0b8c141e7ba014554fadff2ae', '01399f4c823c4084af790d452c16da5e', '最小值', '3', 'String', '字段的最小值', null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''f2b7a40b8d754eb8b69ca451f23c3b8a''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
	values ('f2b7a40b8d754eb8b69ca451f23c3b8a', '01399f4c823c4084af790d452c16da5e', '最大值', '4', 'String', '字段的最大值', null);
end if;
	
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''c7b815706e0248868a3a2d9a01638ece''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
	values ('c7b815706e0248868a3a2d9a01638ece', '01399f4c823c4084af790d452c16da5e', '提示信息', '5', 'String', '当校验不通过时的提示信息', null);
end if;
end;
/