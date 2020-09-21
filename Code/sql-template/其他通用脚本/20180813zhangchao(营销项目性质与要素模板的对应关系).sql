declare
begin

--营销项目性质与要素模板对应关系
if not fc_isdictexists('PROJECTNATURE_TEMP') then
insert into tsys_dict_entry (DICT_ENTRY_CODE, KIND_CODE, DICT_ENTRY_NAME, CTRL_FLAG, REMARK, LIFECYCLE, PLATFORM)
values ('PROJECTNATURE_TEMP', 'DICT_PM', '营销项目性质与要素模板对应关系', null, '', '0', '0');
end if;
 
if not fc_IsDictItemExists('PROJECTNATURE_TEMP','FGHZ_001') then
insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE)
values ('FGHZ_001', 'PROJECTNATURE_TEMP', '发股还债', null, null, 1, null);
end if;

if not fc_IsDictItemExists('PROJECTNATURE_TEMP','FBZZG_001') then
insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE)
values ('FBZZG_001', 'PROJECTNATURE_TEMP', '收债转股', null, null, 2, null);
end if;

if not fc_IsDictItemExists('PROJECTNATURE_TEMP','JRFW_001') then
insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE)
values ('JRFW_001', 'PROJECTNATURE_TEMP', '金融服务', null, null, 3, null);
end if;


end;
/