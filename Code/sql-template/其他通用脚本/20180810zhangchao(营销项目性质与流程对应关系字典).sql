declare
begin

--营销项目性质与流程对应关系
if not fc_isdictexists('PROJECTNATURE_FLOW') then
insert into tsys_dict_entry (DICT_ENTRY_CODE, KIND_CODE, DICT_ENTRY_NAME, CTRL_FLAG, REMARK, LIFECYCLE, PLATFORM)
values ('PROJECTNATURE_FLOW', 'DICT_PM', '营销项目性质与流程对应关系', null, '', '0', '0');
end if;
 
if not fc_IsDictItemExists('PROJECTNATURE_FLOW','projectApproveIssueSotck') then
insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE)
values ('projectApproveIssueSotck', 'PROJECTNATURE_FLOW', '发股还债', null, null, 1, 'FGHZ_001');
end if;

if not fc_IsDictItemExists('PROJECTNATURE_FLOW','projectApproveDebtTurnStock') then
insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE)
values ('projectApproveDebtTurnStock', 'PROJECTNATURE_FLOW', '收债转股', null, null, 2, 'FBZZG_001');
end if;

if not fc_IsDictItemExists('PROJECTNATURE_FLOW','projectapproval_FW') then
insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE)
values ('projectapproval_FW', 'PROJECTNATURE_FLOW', '金融服务', null, null, 3, 'JRFW_001');
end if;


end;
/