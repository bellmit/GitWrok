declare
begin
--流程服务
if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE = ''57'' and t.C_BUTTONCODE=''delivAssetApprove''') then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
values ('57', 'delivAssetApprove', 'more', '发起交割审批流程', '3', '1', 'approveAssetsDeliv()', 2, 'contractManager', 'delivAssetApprove', '', 'contractManagerCols', '', '', '');
end if;
end;
/