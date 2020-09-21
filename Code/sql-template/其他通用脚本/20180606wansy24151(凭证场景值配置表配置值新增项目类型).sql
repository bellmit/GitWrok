declare
begin
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''package_project''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (63, '融资项目 ', '6', 'financial_project', '', 4);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''disposal_project''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (64, '附重组项目', '6', 'des_project', '', 5);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''invest_project''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (65, '产权经纪项目', '6', 'disposal_project', '', 6);
end if;
end;
/