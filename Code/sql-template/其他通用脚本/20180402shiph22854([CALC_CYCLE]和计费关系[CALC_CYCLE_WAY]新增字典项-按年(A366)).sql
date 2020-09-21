--[201803230048]20180402shiph22854(收益计提调整，字典“CALC_CYCLE”和“CALC_CYCLE_WAY”新增字典项：按年(A/366))--start--
declare
begin

if fc_isdictexists('CALC_CYCLE') and not fc_isdictitemexists('CALC_CYCLE','1.0') then 
	insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE)
values ('1.0', 'CALC_CYCLE', '按年(A/366)', '', '', 0, '');
end if;

if fc_isdictexists('CALC_CYCLE_WAY') and not fc_isdictitemexists('CALC_CYCLE_WAY','0') then 
	insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE)
values ('0', 'CALC_CYCLE_WAY', '按年(A/366)', '', '', 0, '');
end if;


end;
/
--[201803230048]20180402shiph22854(收益计提调整，字典“CALC_CYCLE”和“CALC_CYCLE_WAY”新增字典项：按年(A/366))--end--

