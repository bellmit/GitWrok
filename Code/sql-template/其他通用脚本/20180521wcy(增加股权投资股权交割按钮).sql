declare
begin
if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE = ''69'' and t.C_BUTTONCODE=''equityDelivery''') then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('69', 'equityDelivery', 'more', '股权交割', '3', '1', 'equityDelivery()', 1, 'contractManager', 'equityDelivery_gq', null, 'contractManagerCols', null, null);
end if;

if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE = ''75'' and t.C_BUTTONCODE=''equityDelivery''') then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('75', 'equityDelivery', 'more', '股权交割', '3', '1', 'equityDelivery()', 1, 'contractManager', 'equityDelivery_gq', null, 'contractManagerCols', null, null);
end if;

if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE = ''05'' and t.C_BUTTONCODE=''equityDelivery''') then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('05', 'equityDelivery', 'more', '股权交割', '3', '1', 'equityDelivery()', 1, 'contractManager', 'equityDelivery_gq', null, 'contractManagerCols', null, null);
end if;
end;
/