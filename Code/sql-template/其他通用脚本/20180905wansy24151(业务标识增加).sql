declare
begin

if not fc_IsExistsInvestBusiflag('22176') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22176', '投顾服务', 2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22177') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22177', '托管服务', 2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22178') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22178', '财务费用支出', 2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22179') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22179', '归还贷款本金', 2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22184') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22184', '融资性信用输出', 2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22185') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22185', '短期资金运营', 2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22186') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22186', '执行保全费', 2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22187') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22187', '固定资产购置支出', 2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22188') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22188', '无形资产采购', 2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22189') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22189', '装修款项支付', 2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22190') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22190', '内部银行账户间资金调拨', 2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22191') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22191', '纳税支出', 2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22192') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22192', '非业务其他支出', 2, -1, 0);
end if;


if not fc_IsExistsInvestBusiflag('22300') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22300', '捐赠支出',  2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22301') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22301', '罚款支出', 2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22302') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22302', '特殊事项其他支出', 2, -1, 0);
end if;
end;
/