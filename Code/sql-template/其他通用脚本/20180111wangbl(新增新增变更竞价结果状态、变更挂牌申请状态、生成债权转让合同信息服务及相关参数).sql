--新增变更竞价结果状态、变更挂牌申请状态、生成债权转让合同信息服务及相关参数
declare
begin
if not fc_IsExistsExtServiceReg('6cc033af63a94c2faf476d9fc716b611')then
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('6cc033af63a94c2faf476d9fc716b611', 'spring', 'handlProjectManager.setBiddingResultStatus', '变更竞价结果状态', null, null, 'Y', null, null, null);
end if;

if not fc_IsExistsExtServiceParaIn('8ba0a5445631486ebceea8085046a0db')then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('8ba0a5445631486ebceea8085046a0db', '6cc033af63a94c2faf476d9fc716b611', '流程实例号', '0', 'String', null, '#{processInstanceId}');
end if;

if not fc_IsExistsExtServiceParaIn('fe8a6e5d44934bce978709bfe13d1bb9')then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('fe8a6e5d44934bce978709bfe13d1bb9', '6cc033af63a94c2faf476d9fc716b611', '竞价结果状态', '1', 'String', null, null);
end if;

if not fc_IsExistsExtServiceReg('f526b13e21e54f1c8d1d288252736e5a')then
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('f526b13e21e54f1c8d1d288252736e5a', 'spring', 'handlProjectManager.setProjectListingStatus', '变更挂牌申请状态', null, null, 'Y', null, null, null);
end if;

if not fc_IsExistsExtServiceParaIn('6d6c089464e44736b2355563f5438df7')then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('6d6c089464e44736b2355563f5438df7', 'f526b13e21e54f1c8d1d288252736e5a', '流程实例号', '0', 'String', null, '#{processInstanceId}');
end if;

if not fc_IsExistsExtServiceParaIn('b79f45c06bce40e09f37d4344b45c77d')then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('b79f45c06bce40e09f37d4344b45c77d', 'f526b13e21e54f1c8d1d288252736e5a', '挂牌申请状态', '1', 'String', null, null);
end if;

if not fc_IsExistsExtServiceReg('083e0cc4e44345b0a6a1971205c32a15')then
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('083e0cc4e44345b0a6a1971205c32a15', 'spring', 'handlProjectManager.generateZQZRContract', '生成债权转让合同信息', null, null, 'Y', null, null, null);
end if;

if not fc_IsExistsExtServiceParaIn('16f442e0048d45d2948336fd24a46e2f')then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('16f442e0048d45d2948336fd24a46e2f', '083e0cc4e44345b0a6a1971205c32a15', '流程实例号', '0', 'String', null, '#{processInstanceId}');
end if;
end;
/
