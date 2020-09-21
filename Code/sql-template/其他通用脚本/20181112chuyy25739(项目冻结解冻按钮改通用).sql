begin
--按钮权限
	pc_addSysMenuBtn('handleproject','frozen','冻结','');
	pc_addSysMenuBtn('handleproject','unFrozen','解冻','');
	
	pc_addSysMenuBtn('assetPacketManagePro','frozen','冻结','');
	pc_addSysMenuBtn('assetPacketManagePro','unFrozen','解冻','');
--动态列
	if not fc_isexiststempconfigbutton('assetPacketManagePro', 'frozen', 'default') then
		insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
		values ('assetPacketManagePro', 'frozen', 'more', '冻结', '3', '1', 'frozen', 14, 'assetPacketManagePro', 'frozen', null, 'default', null, null, null);
	end if;
	if not fc_isexiststempconfigbutton('assetPacketManagePro', 'unFrozen', 'default') then
		insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
		values ('assetPacketManagePro', 'unFrozen', 'more', '解冻', '3', '1', 'unFrozen', 13, 'assetPacketManagePro', 'unFrozen', null, 'default', null, null, null);
	end if;
end;
/