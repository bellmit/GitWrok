insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('cc8e0348a08a4320ac0e9a766b429b44', 'spring', 'cbmsInvestContractManager.endApproveContract', '合同审批结束服务', null, null, 'Y', null, null, null);

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('bf7f090f75de4680b9aae50003eb31cb', 'cc8e0348a08a4320ac0e9a766b429b44', '流程实例id', '0', 'String', null, '#{processInstanceId}');

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('385eaf5620ce4bf9852cf2d08843873f', 'cc8e0348a08a4320ac0e9a766b429b44', '是否正常结束', '1', 'String', '若参数为1则为审批 通过，为0则未通过', null);
