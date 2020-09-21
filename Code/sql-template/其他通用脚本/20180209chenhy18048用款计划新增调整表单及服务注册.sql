declare
begin
if not fc_IsDataExists('select count(*) from jbpm4_ext_formreg t where t.uuid = ''f046c6cc42764654a3d70ab7e4a4abe2''') then
	insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3)
values ('f046c6cc42764654a3d70ab7e4a4abe2', 'b4f539ddefb848f99ff48c1a8f4b5f8f', 'PAGE_MW', '�ÿ�ƻ�������', '/financial/payplan/payplaneditflow.htm?querymodel=add_model', '', '', '', '', '');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_formreg t where t.uuid = ''a97352e6b520443b9328328809fa1895''') then
	insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3)
values ('a97352e6b520443b9328328809fa1895', 'b4f539ddefb848f99ff48c1a8f4b5f8f', 'PAGE_MW', '�ÿ�ƻ�������', '/financial/payplan/payplaneditflow.htm?querymodel=edit_model', '', '', '', '', '');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''a6eab3de1de6479895c39d0d9eb9d369''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('a6eab3de1de6479895c39d0d9eb9d369', 'spring', 'payPlanManager.endFlowAutoPayPlan', '�ÿ�ƻ�����', '1:Ͷ��������������ͨ����ϵͳ�Զ������ÿ�ƻ�;
2:��ͬ�������ж��Ƿ�������ṹ���չ���ͬ���׽ڵ㷢��������;
3:��ͬ������Ͷ�ʺ�ͬ�Զ������ÿ�ƻ����׽ڵ㷢��������;
4:��ͬ�������ڶ����ڵ��ύʱ���ж��Ƿ������ύ;
5:��ͬ��������ͨ��ʱ�򲵻ط����˽ڵ㣬�ÿ�ƻ�����;', '', 'Y', '', 0, 0);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''2381b11a2c334234a2716070fc03b177''') then
	insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('2381b11a2c334234a2716070fc03b177', 'spring', 'payPlanManager.endProcess', '�ÿ�ƻ���������', '�ÿ�ƻ���������', '', 'Y', '', null, null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''72789a34956148aaba19919fb08c80cd''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('72789a34956148aaba19919fb08c80cd', 'a6eab3de1de6479895c39d0d9eb9d369', '����', '1', 'String', '1:Ͷ��������������ͨ����ϵͳ�Զ������ÿ�ƻ�;
2:��ͬ�������ж��Ƿ�������ṹ���չ���ͬ���׽ڵ㷢��������;
3:��ͬ������Ͷ�ʺ�ͬ�Զ������ÿ�ƻ����׽ڵ㷢��������;
4:��ͬ�������ڶ����ڵ��ύʱ���ж��Ƿ������ύ;
5:��ͬ��������ͨ��ʱ�򲵻ط����˽ڵ㣬�ÿ�ƻ�����;', '');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''4176f9d5a349440c9bcdeb044fe38a8d''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('4176f9d5a349440c9bcdeb044fe38a8d', 'a6eab3de1de6479895c39d0d9eb9d369', '����ʵ����', '0', 'String', '����ʵ����', '#{processInstanceId}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''b89e840f53044298a1eb252815403e45''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('b89e840f53044298a1eb252815403e45', '2381b11a2c334234a2716070fc03b177', '����״̬', '1', 'String', '"1"������ͨ����''0"������', '"1"');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''10b20ed946d44c9391d27bb15a0ae92a''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('10b20ed946d44c9391d27bb15a0ae92a', '2381b11a2c334234a2716070fc03b177', '����ʵ����', '0', 'String', '����ʵ����', '#{processInstanceId}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''0fecf5c7e8414813b09f9a48b08a7e64''') then
	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('0fecf5c7e8414813b09f9a48b08a7e64', 'a6eab3de1de6479895c39d0d9eb9d369', '���̷�����', '2', 'String', '', '#{starter}');
end if;
end;
/

