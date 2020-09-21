declare
begin
if not fc_IsDataExists('select count(*) from jbpm4_ext_formclass t where t.UUID=''bcdbab627dad4d11ad745de83c2069e1''') then 
insert into jbpm4_ext_formclass (UUID, PARENTID, FORMCLASSNAME, DESCRIPTION)
values ('bcdbab627dad4d11ad745de83c2069e1', '0', '债权合同变更', null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_formreg t where t.UUID=''b539e4e4ffb3439ca5ee1286758ca3e3''') then 
insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3)
values ('b539e4e4ffb3439ca5ee1286758ca3e3', 'bcdbab627dad4d11ad745de83c2069e1', 'PAGE_MW', '债权合同变更表单', 'creditorcontract/updatecreditorcontractinfobyflow.htm', null, 'amcUpdateContract', null, null, null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.UUID=''efee2771d68441c9b5129123a04380f6''') then 
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('efee2771d68441c9b5129123a04380f6', 'spring', 'creditorContractManager.updateCreditorContractInfo', '更新债权合同信息', null, null, 'Y', null, null, null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID=''823877905be4401789511a99062ee203''') then 
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('823877905be4401789511a99062ee203', 'efee2771d68441c9b5129123a04380f6', '流程实例号', '0', 'String', null, '#{processInstanceId}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID=''fb753e58129e458fa8ee4c9776f20e18''') then 
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('fb753e58129e458fa8ee4c9776f20e18', 'efee2771d68441c9b5129123a04380f6', '合同编号', '1', 'String', null, '#{creditorcontractcode}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID=''e54e83d65c54433aa0d16d194859e493''') then 
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('e54e83d65c54433aa0d16d194859e493', 'efee2771d68441c9b5129123a04380f6', '是否驳回（1是，0否）', '2', 'String', null, '');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID=''3322EC7CBF44482F9BBA3A569C08B76D''') then 
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('3322EC7CBF44482F9BBA3A569C08B76D', 'efee2771d68441c9b5129123a04380f6', '当前用户', '3', 'String', null, '#{currentApproveUser}');
end if;

end;
/