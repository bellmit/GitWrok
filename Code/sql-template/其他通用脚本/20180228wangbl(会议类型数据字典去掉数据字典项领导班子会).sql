declare
begin
if  fc_IsDictItemExists('MEETING_TYPE','4') then
	delete from tsys_dict_item t where t.dict_entry_code='MEETING_TYPE' and t.dict_item_code='4';
end if;
end;
/
