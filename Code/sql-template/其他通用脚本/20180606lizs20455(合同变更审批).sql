declare
begin
if not fc_IsDataExists('select count(*) from jbpm4_ext_formreg t where t.UUID =''dbbe54f6f6cc429581eaa25196547688''') then 
insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3, C_FORMBEAN)
values ('dbbe54f6f6cc429581eaa25196547688', 'd33ff84a0c684c838c255d1c4420a769', 'PAGE_MW', '合同变更表单', '/contract/newcontract/commonModifyContractForm.htm', null, 'modifyContractForm', null, null, null, 'cbmsInvestContractManager');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.UUID =''390a83bc5c3e473fa558f6a58a1b4bed''') then
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('390a83bc5c3e473fa558f6a58a1b4bed', 'spring', 'cbmsInvestContractManager.reviewInvestContractNew', '合同变更流程结束服务', null, null, 'Y', null, null, null);
end if;
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID =''829421caefc6464196e552bd84695f72''') then 
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('829421caefc6464196e552bd84695f72', '390a83bc5c3e473fa558f6a58a1b4bed', '用户编号', '2', 'String', null, '#{currentApproveUser}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID =''70ceffac95fc4240adb6d863cd69c423''') then 
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('70ceffac95fc4240adb6d863cd69c423', '390a83bc5c3e473fa558f6a58a1b4bed', '流程实例号', '0', 'String', null, '#{processInstanceId}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID =''058d1ca3824349e8beca995bdfd95bf7''') then
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('058d1ca3824349e8beca995bdfd95bf7', '390a83bc5c3e473fa558f6a58a1b4bed', '合同编号', '1', 'String', null, '#{contractid}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID =''5d33ead2fc7d4558ab29bfd7c1c72b37''') then
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('5d33ead2fc7d4558ab29bfd7c1c72b37', '390a83bc5c3e473fa558f6a58a1b4bed', '操作类型(1为同意0为驳回)', '3', 'String', null, '''1''');
end if;

end;
/