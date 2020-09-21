declare
begin
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''asset_transfer''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (90, '资产交割', '3', 'asset_transfer', '', 2);
end if;
end;
/