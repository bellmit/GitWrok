declare
begin
if fc_IsDataExists('select count(*) from tgeneral_export_config t where t.c_fieldjson like ''%"label"%''') then
	update tgeneral_export_config t set t.c_fieldjson = replace(t.c_fieldjson,'"label"','"text"') where t.c_fieldjson like '%"label"%';
end if;


--合同模版添加Excel导出按钮
if not fc_IsExistsTempConfigButton('contractManager','exceldown','contractManager') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE)
    values ('contractManager', 'exceldown', null, 'Excel导出', '1', '1', 'exceldown', 7, null, null, null, 'contractManager');
end if;

if not fc_IsDataExists('select count(*) from tgeneral_export_config t where t.c_modelcode=''assetPacketManagePro''') then
    insert into tgeneral_export_config (C_MODELCODE, C_FILENAME, C_FILETYPE, C_FIELDJSON, C_QUERY_SQL, C_QUERY_INSTANCE, F_FIELD_DATA_TYPE)
    values ('assetPacketManagePro', 'assetPacketManagePro', '0', null, null, 'assetPacketManager.getProjectInfoListData', 1);
end if;

if not fc_IsDataExists('select count(*) from tgeneral_export_config t where t.c_modelcode=''investProjectManage''') then
    insert into tgeneral_export_config (C_MODELCODE, C_FILENAME, C_FILETYPE, C_FIELDJSON, C_QUERY_SQL, C_QUERY_INSTANCE, F_FIELD_DATA_TYPE)
    values ('investProjectManage', 'investProjectManage', '0', null, null, 'investProjectManager.getInvestProjectInfoList', 1);
end if;

if not fc_IsDataExists('select count(*) from tgeneral_export_config t where t.c_modelcode=''finanServiceProjectManage''') then
    insert into tgeneral_export_config (C_MODELCODE, C_FILENAME, C_FILETYPE, C_FIELDJSON, C_QUERY_SQL, C_QUERY_INSTANCE, F_FIELD_DATA_TYPE)
    values ('finanServiceProjectManage', 'finanServiceProjectManage', '0', null, null, 'finanServiceProjectManager.getFinanServiceProjectInfoList', 1);
end if;

if not fc_IsDataExists('select count(*) from tgeneral_export_config t where t.c_modelcode=''contractManager''') then
    insert into tgeneral_export_config (C_MODELCODE, C_FILENAME, C_FILETYPE, C_FIELDJSON, C_QUERY_SQL, C_QUERY_INSTANCE, F_FIELD_DATA_TYPE)
    values ('contractManager', '合同信息', '0', null, null, 'newContractManager.getContractInfoForList', 1);
end if;

if not fc_IsDataExists('select count(*) from tgeneral_export_config t where t.c_modelcode=''mixPacketManage''') then
    insert into tgeneral_export_config (C_MODELCODE, C_FILENAME, C_FILETYPE, C_FIELDJSON, C_QUERY_SQL, C_QUERY_INSTANCE, F_FIELD_DATA_TYPE)
    values ('mixPacketManage', 'mixPacketManage', '0', 'mixPacketManage', null, 'assetPacketManager.getProjectInfoListData', 1);
end if;

if not fc_IsDataExists('select count(*) from tgeneral_export_config t where t.c_modelcode=''debtToStockProjectManage''') then
    insert into tgeneral_export_config (C_MODELCODE, C_FILENAME, C_FILETYPE, C_FIELDJSON, C_QUERY_SQL, C_QUERY_INSTANCE, F_FIELD_DATA_TYPE)
    values ('debtToStockProjectManage', 'debtToStockProjectManage', '0', null, null, 'aimsProjectInfoManager.getDebtToStockProejctForList', 1);
end if;

end;
/
