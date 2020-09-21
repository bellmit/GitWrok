declare
begin
--批复编号生成服务
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''9aaff3bc3dd441f9ae15588287d36f70'' and t.serviceid=''projectInfoManager.buildApprovalnumber''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
	values ('9aaff3bc3dd441f9ae15588287d36f70', 'spring', 'projectInfoManager.buildApprovalnumber', '批复编号生成服务', null, null, 'Y', null, 0, 0);
end if;

--批复编号生成服务输入参数
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''4b642f2c6c5d4184b12185bc162dd6b6''') then
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
	values ('4b642f2c6c5d4184b12185bc162dd6b6', '9aaff3bc3dd441f9ae15588287d36f70', '批复编号编码', '2', 'String', null, '"approvalnumber"');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''2d1f1f3b76524df6abbbe1113b5ba2ba''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
	values ('2d1f1f3b76524df6abbbe1113b5ba2ba', '9aaff3bc3dd441f9ae15588287d36f70', '流程实例号', '1', 'String', null, '#{processInstanceId}');
end if;
	
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''70467ed5f8a04504b7f98b769c0cd454''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
	values ('70467ed5f8a04504b7f98b769c0cd454', '9aaff3bc3dd441f9ae15588287d36f70', '项目编码', '0', 'String', null, '#{projectcode}');
end if;


end;
/
