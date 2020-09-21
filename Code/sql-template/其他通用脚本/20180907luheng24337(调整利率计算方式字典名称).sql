--[M201809070976]20180907luheng24337(调整利率计算方式字典名称)--start--
declare
begin

if fc_IsDataExists('select count(*) from tsys_dict_item t where t.dict_item_name=''按年(A/366)'' and t.dict_entry_code=''CALC_CYCLE'' and t.dict_item_code=''1.0''') then
  update tsys_dict_item t set t.dict_item_name = 'A/366' where t.dict_entry_code = 'CALC_CYCLE' and t.dict_item_code = '1.0';
end if;
if fc_IsDataExists('select count(*) from tsys_dict_item t where t.dict_item_name=''按年(A/360)'' and t.dict_entry_code=''CALC_CYCLE'' and t.dict_item_code=''1.1''') then
  update tsys_dict_item t set t.dict_item_name = 'A/360' where t.dict_entry_code = 'CALC_CYCLE' and t.dict_item_code = '1.1';
end if;
if fc_IsDataExists('select count(*) from tsys_dict_item t where t.dict_item_name=''按年(A/365)'' and t.dict_entry_code=''CALC_CYCLE'' and t.dict_item_code=''1.2''') then
  update tsys_dict_item t set t.dict_item_name = 'A/365' where t.dict_entry_code = 'CALC_CYCLE' and t.dict_item_code = '1.2';
end if;
if fc_IsDataExists('select count(*) from tsys_dict_item t where t.dict_item_name=''按月(30/360)'' and t.dict_entry_code=''CALC_CYCLE'' and t.dict_item_code=''1.3''') then
  update tsys_dict_item t set t.dict_item_name = '30/360' where t.dict_entry_code = 'CALC_CYCLE' and t.dict_item_code = '1.3';
end if;
if fc_IsDataExists('select count(*) from tsys_dict_item t where t.dict_item_name=''按日(A/A)'' and t.dict_entry_code=''CALC_CYCLE'' and t.dict_item_code=''1.4''') then
  update tsys_dict_item t set t.dict_item_name = 'A/A' where t.dict_entry_code = 'CALC_CYCLE' and t.dict_item_code = '1.4';
end if;
if fc_IsDataExists('select count(*) from tsys_dict_item t where t.dict_item_name=''按年(A/366)'' and t.c_isuse= ''1'' and t.dict_entry_code=''CALC_CYCLE'' and t.dict_item_code=''1.5''') then
  update tsys_dict_item t set t.c_isuse = '0' where t.dict_entry_code = 'CALC_CYCLE' and t.dict_item_code = '1.5';
end if;


if fc_IsDataExists('select count(*) from tsys_dict_item t where t.dict_item_name=''按年(A/360)'' and t.dict_entry_code=''CALC_CYCLE'' and t.dict_item_code=''2.1''') then
  update tsys_dict_item t set t.dict_item_name = 'A/360' where t.dict_entry_code = 'CALC_CYCLE' and t.dict_item_code = '2.1';
end if;
if fc_IsDataExists('select count(*) from tsys_dict_item t where t.dict_item_name=''按年(A/365)'' and t.dict_entry_code=''CALC_CYCLE'' and t.dict_item_code=''2.2''') then
  update tsys_dict_item t set t.dict_item_name = 'A/365' where t.dict_entry_code = 'CALC_CYCLE' and t.dict_item_code = '2.2';
end if;
if fc_IsDataExists('select count(*) from tsys_dict_item t where t.dict_item_name=''按月(30/360)'' and t.dict_entry_code=''CALC_CYCLE'' and t.dict_item_code=''2.3''') then
  update tsys_dict_item t set t.dict_item_name = '30/360' where t.dict_entry_code = 'CALC_CYCLE' and t.dict_item_code = '2.3';
end if;
if fc_IsDataExists('select count(*) from tsys_dict_item t where t.dict_item_name=''按日(A/A)'' and t.dict_entry_code=''CALC_CYCLE'' and t.dict_item_code=''2.4''') then
  update tsys_dict_item t set t.dict_item_name = 'A/A' where t.dict_entry_code = 'CALC_CYCLE' and t.dict_item_code = '2.4';
end if;
if fc_IsDataExists('select count(*) from tsys_dict_item t where t.dict_item_name=''按年(A/366)'' and t.dict_entry_code=''CALC_CYCLE'' and t.dict_item_code=''2.5''') then
  update tsys_dict_item t set t.dict_item_name = 'A/366' where t.dict_entry_code = 'CALC_CYCLE' and t.dict_item_code = '2.5';
end if;

end;
/
--------------------------------------------------------------------------------------------------------------------------
--[M201809070976]20180907luheng24337(调整利率计算方式字典名称)--end--
