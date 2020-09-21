declare
begin
pc_addSysMenuBtnWithUrl('debtbuyoutmanager','exceldown','Excel导出','','');
if not  fc_isdataexists ('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''debtbuyoutmanager'' and C_BUTTONCODE=''exceldown'' ') then 
	insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE)
	values ('debtbuyoutmanager', 'exceldown', null, 'Excel导出', '1', '1', 'exceldown', 10, 'debtbuyoutmanager', 'exceldown', null, 'debtbuyoutmanager');
end if;
if not  fc_isdataexists ('select count(*) from tgeneral_export_config t where t.c_modelcode=''debtbuyoutmanager''') then 
	insert into tgeneral_export_config (C_MODELCODE, C_FILENAME, C_FILETYPE, C_FIELDJSON, C_QUERY_INSTANCE, F_FIELD_DATA_TYPE)
	values ('debtbuyoutmanager', '抵债股权收购管理', '0', 'debtbuyoutmanager', 'aimsProjectInfoManager.listDebtbuyoutManager', '1');
end if;
end;
/
