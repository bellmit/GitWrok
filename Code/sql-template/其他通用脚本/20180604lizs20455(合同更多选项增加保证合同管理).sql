declare
begin
if not fc_IsExistsTempConfigButton('68','guaranteeContract','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('68', 'guaranteeContract', 'more', '保证合同管理', '3', '1', 'guaranteeContract()', 9, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('60','guaranteeContract','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('60', 'guaranteeContract', 'more', '保证合同管理', '3', '1', 'guaranteeContract()', 9, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('54','guaranteeContract','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('54', 'guaranteeContract', 'more', '保证合同管理', '3', '1', 'guaranteeContract()', 9, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('53','guaranteeContract','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('53', 'guaranteeContract', 'more', '保证合同管理', '3', '1', 'guaranteeContract()', 9, null, null, null, 'contractManagerCols', null, null);
end if;
end;
/