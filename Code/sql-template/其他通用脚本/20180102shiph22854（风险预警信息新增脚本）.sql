--[201712240064]20180102shiph22854风险预警信息新增脚本
declare
begin

if not fc_IsDataExists('select count(*) from TRISK_WARNING_TYPE t where t.L_ID = ''1000''') then
	insert into TRISK_WARNING_TYPE(L_ID,L_LEVEL,C_LEVELNAME,C_TYPE,C_CONTENT)
values(1000,1,'一级预警信号','政策','政府对产业政策、信贷政策、财政税收政策、汇率政策、环保政策进行了调整，或与行业相关的法律规定发生变化，可能对公司投资业务带来直接或间接影响。');
end if;

if not fc_IsDataExists('select count(*) from TRISK_WARNING_TYPE t where t.L_ID = ''1001''') then
	insert into TRISK_WARNING_TYPE(L_ID,L_LEVEL,C_LEVELNAME,C_TYPE,C_CONTENT)
values(1001,1,'一级预警信号','行业','银监会、证监会对金融、证券、基金监管政策重大变化。');
end if;

if not fc_IsDataExists('select count(*) from TRISK_WARNING_TYPE t where t.L_ID = ''1002''') then
	insert into TRISK_WARNING_TYPE(L_ID,L_LEVEL,C_LEVELNAME,C_TYPE,C_CONTENT)
values(1002,1,'一级预警信号','行业','影响不良资产投资行业的重大变化。');
end if;

if not fc_IsDataExists('select count(*) from TRISK_WARNING_TYPE t where t.L_ID = ''1003''') then
	insert into TRISK_WARNING_TYPE(L_ID,L_LEVEL,C_LEVELNAME,C_TYPE,C_CONTENT)
values(1003,1,'一级预警信号','行业','所投资行业出现重大的技术变革，影响到行业的产品和生产技术的改变，交易对手主要产品面临替代性风险。');
end if;

if not fc_IsDataExists('select count(*) from TRISK_WARNING_TYPE t where t.L_ID = ''1004''') then
	insert into TRISK_WARNING_TYPE(L_ID,L_LEVEL,C_LEVELNAME,C_TYPE,C_CONTENT)
values(1004,1,'一级预警信号','行业','所投资业务涉及的市场需求、原材料及产品价格出现不利变化，对行业产生较大影响。');
end if;

if not fc_IsDataExists('select count(*) from TRISK_WARNING_TYPE t where t.L_ID = ''1005''') then
	insert into TRISK_WARNING_TYPE(L_ID,L_LEVEL,C_LEVELNAME,C_TYPE,C_CONTENT)
values(1005,2,'二级预警信号','经营管理','交易对手或保证人出现重大质量、环保、安全生产等问题或事故。');
end if;

if not fc_IsDataExists('select count(*) from TRISK_WARNING_TYPE t where t.L_ID = ''1006''') then
	insert into TRISK_WARNING_TYPE(L_ID,L_LEVEL,C_LEVELNAME,C_TYPE,C_CONTENT)
values(1006,2,'二级预警信号','经营管理','交易对手出售变卖主要的生产、经营性固定资产。');
end if;

end;
/