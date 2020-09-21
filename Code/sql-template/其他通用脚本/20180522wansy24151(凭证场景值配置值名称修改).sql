declare
begin
if  fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''22109''') then
	update tvoucher_scene_config t set t.c_name = '代收债权清收款' where t.c_code='22109';
end if;
end;
/