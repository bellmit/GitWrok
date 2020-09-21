declare
begin
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''contract_templet''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (7, '合同模板', '0', 'contract_templet', 'all', 7);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''STCZFW_001''') then 
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (70, '委托处置服务合同要素模板 ', '7', 'STCZFW_001', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''ZKBX_001''') then 
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (71, '折扣变现合同要素模板', '7', 'ZKBX_001', '', 2);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''RZ_001''') then 
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (72, '融资合同模板', '7', 'RZ_001', '', 3);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''YGDZ_001''') then 
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (73, '以股抵债合同要素模板', '7', 'YGDZ_001', '', 4);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''ZQZR_001''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (74, '债权转让合同模板', '7', 'ZQZR_001', '', 5);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''ZWGX_001''') then 
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (75, '债务更新合同要素模板', '7', 'ZWGX_001', '', 6);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''YQBLZWCZ_001''') then 
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (76, '远期不良债务重组合同模板', '7', 'YQBLZWCZ_001', '', 7);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''TC_001''') then 
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (77, '商业化收购合同要素模板', '7', 'TC_001', '', 8);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''JRCPTZC_001''') then 
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (78, '金融产品投资合同要素模板', '7', 'JRCPTZC_001', '', 9);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''WDC_001''') then 
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (79, '委托贷款合同要素模板', '7', 'WDC_001', '', 10);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''GQTZCZG_001''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (80, '股权投资合同(资管业务)', '7', 'GQTZCZG_001', '', 11);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''CZFW_001''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (81, '受托处置服务合同要素模板', '7', 'CZFW_001', '', 12);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''TC_002''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (82, '结构化收购合同要素模板', '7', 'TC_002', '', 13);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''SYQZR_001''') then 
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (83, '收益权转让合同模板', '7', 'SYQZR_001', '', 14);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''YQBL_001''') then 
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (84, '增信服务合同模板', '7', 'YQBL_001', '', 15);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''ZJJG_001''') then 
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (85, '中介机构服务合同要素模板', '7', 'ZJJG_001', '', 16);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''JJWT_001''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (86, '经纪委托合同要素模板', '7', 'JJWT_001', '', 17);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''XTDK_001''') then 
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)                        
	values (87, '信托贷款合同要素模板', '7', 'XTDK_001', '', 18);
end if;

if fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''nocash''') then
	update tvoucher_scene_config t set t.c_name = '保证金转收购成本' where t.c_code = 'nocash';
end if;
end;
/