declare
begin

if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''receive_type''') then
	insert into  tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (1, '收款类型', '0', 'receive_type', '01', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''pay_type''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (2, '付款类型', '0', 'pay_type', '02', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''no_money_type''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (3, '无现金流类型', '0', 'no_money_type', '03', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''accrued_type''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (4, '计提类型', '0', 'accrued_type', '04', 1);
end if;

if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''20041''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (19, '股权分红', '1', '20041', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''20260''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (20, '投资本金和收益', '1', '20260', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''22080''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (21, '收取保证金', '1', '22080', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''22084''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (22, '收益权转让款', '1', '22084', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''22086''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (23, '收回保证金', '1', '22086', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''22087''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (24, '收回诉讼费', '1', '22087', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''22106''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (25, '收取增信费', '1', '22106', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''22107''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (26, '收取合作款', '1', '22107', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''22108''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (27, '债权清收回款', '1', '22108', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''22109''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (28, '代收债权清收款', '1', '22109', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''22110''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (29, '收回保全费', '1', '22110', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''22111''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (30, '服务费及佣金', '1', '22111', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''20038''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (31, '股权转让', '1', '20038', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''22010''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (32, '实物资产交割', '1', '22010', '', 1);
end if;

if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''22161''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (33, '顾问费', '2', '22161', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''22162''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (34, '往来款', '2', '22162', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''22098''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (35, '律师费', '2', '22098', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''20001''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (36, '债权收购款', '2', '20001', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''22151''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (37, '投资款支出', '2', '22151', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''22152''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (38, '保证金支付款', '2', '22152', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''22153''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (39, '保证金退回支付', '2', '22153', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''22154''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (40, '中介费', '2', '22154', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''22093''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (41, '诉讼费', '2', '22093', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''22156''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (42, '保险保全费等', '2', '22156', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''22157''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (43, '其他', '2', '22157', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''22158''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (44, '服务费', '2', '22158', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''22159''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (45, '基金管理费', '2', '22159', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''22160''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (46, '基金托管费', '2', '22160', '', 1);
end if;


if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''nocash''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (47, '保证金转收购成本', '3', 'nocash', '', 1);
end if;

if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''profit_accured''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (48, '收益计提 ', '4', 'profit_accured', '', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''financing_accured''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (49, '融资成本计提', '4', 'financing_accured', '', 2);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''value_adjust''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (50, '公允价值调整', '4', 'value_adjust', '', 3);
end if;

if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''1''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (51, '是', '0', '1', 'flag', 1);
end if;
if not fc_IsDataExists('select count(*) from tvoucher_scene_config t where t.c_code=''0''') then
	insert into tvoucher_scene_config(l_id, c_name, l_pid, c_code, c_type, l_order)
	values (52, '否', '0', '0', 'flag', 2);
end if;
end;
/
