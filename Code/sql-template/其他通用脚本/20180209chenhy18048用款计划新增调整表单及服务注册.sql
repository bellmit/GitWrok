declare
begin
if not fc_IsDataExists('select count(*) from jbpm4_ext_formreg t where t.uuid = ''f046c6cc42764654a3d70ab7e4a4abe2''') then
	insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3)
values ('f046c6cc42764654a3d70ab7e4a4abe2', 'b4f539ddefb848f99ff48c1a8f4b5f8f', 'PAGE_MW', '用款计划新增表单', '/financial/payplan/payplaneditflow.htm?querymodel=add_model', '', '', '', '', '');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_formreg t where t.uuid = ''a97352e6b520443b9328328809fa1895''') then
	insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3)
values ('a97352e6b520443b9328328809fa1895', 'b4f539ddefb848f99ff48c1a8f4b5f8f', 'PAGE_MW', '用款计划调整表单', '/financial/payplan/payplaneditflow.htm?querymodel=edit_model', '', '', '', '', '');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''a6eab3de1de6479895c39d0d9eb9d369''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('a6eab3de1de6479895c39d0d9eb9d369', 'spring', 'payPlanManager.endFlowAutoPayPlan', '用款计划服务', '1:投决审批流程审批通过，系统自动生成用款计划;
2:合同审批，判断是否允许发起结构化收购合同，首节点发起后的连线;
3:合同审批，投资合同自动生成用款计划，首节点发起后的连线;
4:合同审批，第二个节点提交时，判断是否允许提交;
5:合同审批，不通过时或驳回发起人节点，用款计划作废;', '', 'Y', '', 0, 0);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''2381b11a2c334234a2716070fc03b177''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('2381b11a2c334234a2716070fc03b177', 'spring', 'payPlanManager.endProcess', '用款计划结束服务', '用款计划结束服务', '', 'Y', '', null, null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''72789a34956148aaba19919fb08c80cd''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('72789a34956148aaba19919fb08c80cd', 'a6eab3de1de6479895c39d0d9eb9d369', '类型', '1', 'String', '1:投决审批流程审批通过，系统自动生成用款计划;
2:合同审批，判断是否允许发起结构化收购合同，首节点发起后的连线;
3:合同审批，投资合同自动生成用款计划，首节点发起后的连线;
4:合同审批，第二个节点提交时，判断是否允许提交;
5:合同审批，不通过时或驳回发起人节点，用款计划作废;', '');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''4176f9d5a349440c9bcdeb044fe38a8d''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('4176f9d5a349440c9bcdeb044fe38a8d', 'a6eab3de1de6479895c39d0d9eb9d369', '流程实例号', '0', 'String', '流程实例号', '#{processInstanceId}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''b89e840f53044298a1eb252815403e45''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('b89e840f53044298a1eb252815403e45', '2381b11a2c334234a2716070fc03b177', '审批状态', '1', 'String', '"1"：审批通过，''0"：驳回', '"1"');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''10b20ed946d44c9391d27bb15a0ae92a''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('10b20ed946d44c9391d27bb15a0ae92a', '2381b11a2c334234a2716070fc03b177', '流程实例号', '0', 'String', '流程实例号', '#{processInstanceId}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''0fecf5c7e8414813b09f9a48b08a7e64''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('0fecf5c7e8414813b09f9a48b08a7e64', 'a6eab3de1de6479895c39d0d9eb9d369', '流程发起人', '2', 'String', '', '#{starter}');
end if;
end;
/

