declare
begin
if not fc_IsExistsTempConfigButton('08','guaranteeContract','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('08', 'guaranteeContract', 'more', '保证合同管理', '3', '1', 'guaranteeContract()', 9, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('08','pawnManage','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('08', 'pawnManage', 'more', '抵质押物管理', '3', '1', 'pawnManage()', 8, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('59','guaranteeContract','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('59', 'guaranteeContract', 'more', '保证合同管理', '3', '1', 'guaranteeContract()', 9, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('59','pawnManage','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('59', 'pawnManage', 'more', '抵质押物管理', '3', '1', 'pawnManage()', 8, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('63','guaranteeContract','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('63', 'guaranteeContract', 'more', '保证合同管理', '3', '1', 'guaranteeContract()', 9, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('63','pawnManage','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('63', 'pawnManage', 'more', '抵质押物管理', '3', '1', 'pawnManage()', 8, null, null, null, 'contractManagerCols', null, null);
end if;

end;
/