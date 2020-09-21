declare
begin
	if not fc_isdictitemexists('FUND_TYPE','21') then 
		update tsys_dict_item t set t.dict_item_code='21' where t.dict_item_code='04' and t.dict_entry_code='FUND_TYPE';
end if;

end;
/