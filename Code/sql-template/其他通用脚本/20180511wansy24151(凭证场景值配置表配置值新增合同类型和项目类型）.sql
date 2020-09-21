declare
begin

if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''contract_type''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (5, '合同类型', '0', 'contract_type', 'all', 2);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''project_type''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (6, '项目类型', '0', 'project_type', 'all', 3);
end if;

if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''invest_contract''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (53, '投资类合同 ', '5', 'invest_contract', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''purchase_contract''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (54, '收购类合同', '5', 'purchase_contract', '', 2);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''disposal_contract''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (55, '处置类合同', '5', 'disposal_contract', '', 3);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''financial_contract''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (56, '金融服务类合同 ', '5', 'financial_contract', '', 4);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''agency_contract''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (57, '中介机构类合同', '5', 'agency_contract', '', 5);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''property_contract''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (58, '产权经纪类合同', '5', 'property_contract', '', 6);
end if;

if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''package_project''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (60, '收包项目 ', '6', 'package_project', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''disposal_project''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (61, '处置项目', '6', 'disposal_project', '', 2);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''invest_project''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (62, '投资项目', '6', 'invest_project', '', 3);
end if;

end;
/
