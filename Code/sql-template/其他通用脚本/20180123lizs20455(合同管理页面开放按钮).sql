declare
begin
if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE = ''63'' and t.C_BUTTONCODE=''feeDistribute'' and t.C_TEMPLATECODE=''contractManagerCols''') then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('63', 'feeDistribute', 'more', '资金发放', '3', '1', 'feeDistribute()', 17, 'contractManager', 'feeDistribute', null, 'contractManagerCols', null, null);
end if;

if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE = ''63'' and t.C_BUTTONCODE=''collectionPlan'' and t.C_TEMPLATECODE=''contractManagerCols''') then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('63', 'collectionPlan', 'more', '收款计划管理', '3', '1', 'collectionPlan()', 12, 'contractManager', 'collectionPlan', null, 'contractManagerCols', null, null);
end if;

if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE = ''63'' and t.C_BUTTONCODE=''guaranteeContract'' and t.C_TEMPLATECODE=''contractManagerCols''') then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('63', 'guaranteeContract', 'more', '保证合同管理', '3', '1', 'guaranteeContract()', 9, 'contractManager', 'guaranteeContract', null, 'contractManagerCols', null, null);
end if;

if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE = ''63'' and t.C_BUTTONCODE=''pawnManage'' and t.C_TEMPLATECODE=''contractManagerCols''') then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('63', 'pawnManage', 'more', '抵质押物管理', '3', '1', 'pawnManage()', 8, 'contractManager', 'pawnManage', null, 'contractManagerCols', null, null);
end if;

if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE = ''59'' and t.C_BUTTONCODE=''collectionPlan'' and t.C_TEMPLATECODE=''contractManagerCols''') then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('59', 'collectionPlan', 'more', '收款计划管理', '3', '1', 'collectionPlan()', 12, 'contractManager', 'collectionPlan', null, 'contractManagerCols', null, null);
end if;

end;
/

