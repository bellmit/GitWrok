declare
begin
if not fc_IsExistsExtServiceReg('e7a1ad5d24094f7495cbe1c20e826e73') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('e7a1ad5d24094f7495cbe1c20e826e73', 'spring', 'handlProjectManager.updateOtherRelatedHandlProjectInfo', '挂牌申请竞价结果为流拍的情况下的业务变更', null, null, 'Y', null, null, null);
end if;
if not fc_IsExistsExtServiceParaIn('5f7b78fa7b984200979ff506afe3a7f5') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('5f7b78fa7b984200979ff506afe3a7f5', 'e7a1ad5d24094f7495cbe1c20e826e73', '流程实例号', '0', 'String', null, '#{processInstanceId}');
end if;
end;
/


