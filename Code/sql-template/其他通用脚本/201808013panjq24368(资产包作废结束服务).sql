--[20180813]panjq24368(资产包作废结束服务)-- start --
declare
begin
--1：通用表单设计
--2：通用表单字段绑定
if not fc_IsDataExists('select count(*) from tflowform_autovalue_config t where t.c_key = ''projectcode'' and t.c_mode = ''4''') then 
  insert into tflowform_autovalue_config (C_KEY, C_SQL, C_VALUE, C_MODE, C_ATTRIBUTE)
values ('projectcode', null, null, '4', 'projInfo.projectcode');
end if;
if not fc_IsDataExists('select count(*) from tflowform_autovalue_config t where t.c_key = ''projectname'' and t.c_mode = ''4''') then 
  insert into tflowform_autovalue_config (C_KEY, C_SQL, C_VALUE, C_MODE, C_ATTRIBUTE)
values ('projectname', null, null, '4', 'projInfo.projectname');
end if;

--3 packageTerminate 新增资产包作废按钮
if  fc_IsDataExists('select count(*) from tsys_trans t where t.trans_code = ''assetPacketManagePro''') then 
	if not fc_IsDataExists('select count(*) from tsys_subtrans t where t.TRANS_CODE = ''assetPacketManagePro'' and t.SUB_TRANS_CODE = ''packageTerminate''') then 
	 insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
	values ('assetPacketManagePro', 'packageTerminate', '资产包作废流程', '', '', '', '1', '', '', '', '');
	end if;
	if not fc_IsDataExists('select count(*) from tsys_user_right t where t.TRANS_CODE = ''assetPacketManagePro'' and t.SUB_TRANS_CODE = ''packageTerminate'' and t.USER_ID = ''admin'' and t.RIGHT_FLAG = ''1''') then 
		insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('assetPacketManagePro', 'packageTerminate', 'admin', 'admin', 0, 0, 0, '1', '1');
	end if;
	if not fc_IsDataExists('select count(*) from tsys_user_right t where t.TRANS_CODE = ''assetPacketManagePro'' and t.SUB_TRANS_CODE = ''packageTerminate''  and t.USER_ID = ''admin'' and t.RIGHT_FLAG = ''2''') then 
		insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('assetPacketManagePro', 'packageTerminate', 'admin', 'admin', 0, 0, 0, '2', '1');
	end if;
	--4 动态列添加资产包作废按钮
	if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.c_modelcode = ''assetPacketManagePro'' and t.c_buttoncode = ''packageTerminate''') then 
	insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
	values ('assetPacketManagePro', 'packageTerminate', null, '资产包作废', '1', '1', 'packageTerminate', 14, 'assetPacketManagePro', 'packageTerminate', null, 'assetPacketManagePro', null, null, null);
	end if;
end if;
--5：资产包作废流程服务
if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.uuid = ''6ac621488c0343b19dd4ebeb1846998f'' and t.serviceid=''aimsfactorCommonManager.terminateEndProcess''') then
  insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('6ac621488c0343b19dd4ebeb1846998f', 'spring', 'aimsfactorCommonManager.terminateEndProcess', '资产包作废', '资产包作废', null, 'Y', null, null, null);
end if;

--	服务输入参数-流程实例号
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''00c5a4aabaa1493c9dd5fdd18a3d8dc5''') then
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('00c5a4aabaa1493c9dd5fdd18a3d8dc5', '6ac621488c0343b19dd4ebeb1846998f', '流程实例号', '0', 'String', '当前流程的实例id', '#{processInstanceId}');
end if;
end;
/
--[20180813]panjq24368(资产包作废结束服务)-- End --
