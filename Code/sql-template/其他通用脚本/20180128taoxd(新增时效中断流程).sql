declare
begin
--��jbpm4_ext_formreg
if not fc_IsExistsExtFormReg('f7532e28d1f1488ca25e6241ccda9b2b') then
	insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3)
	values ('f7532e28d1f1488ca25e6241ccda9b2b', '-1 ', 'PAGE_MW', 'ʱЧ�жϴ����', 'creditorcontract/timestopFlow.htm', null, 'timestopFlowVM', null, null, null);
end if;

--����jbpm4_ext_servicereg
if not fc_IsExistsExtServiceReg('99c364aa2a76479d9ae6675497bf1325') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
	values ('99c364aa2a76479d9ae6675497bf1325', 'spring', 'creditorContractManager.endTimestopInfo', 'ʱЧ�ж����̽�������', null, null, 'Y', null, null, null);
end if;
--�����������jbpm4_ext_service_para_in
if not fc_IsExistsExtServiceParaIn('7dc4e1ea91e646fdbbb1c5a207b0a3b1') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
	values ('7dc4e1ea91e646fdbbb1c5a207b0a3b1', '99c364aa2a76479d9ae6675497bf1325', '����ʵ����', '0', 'String', null, '#{processInstanceId}');
end if;

end;
/
