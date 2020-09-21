declare
begin

if not fc_IsDataExists('select count(*) from tsysinfo_pagelet_temp t where t.C_TEMPCODE=''amc_assetproduct''') then
insert into tsysinfo_pagelet_temp (C_TEMPCODE, C_TEMPNAME, C_PAGEURL, C_ISDEFAULT, C_ISENABLED, L_DEFINEPAGELET_NUM, C_DEFAULT_PAGELETS, L_ORDER, C_PAGECODE, C_SYSTYPE)
values ('amc_assetproduct', '资管产品全景图', null, '1', '1', null, 'amc_assetproduct_base,amc_assetproduct_project', 1, 'assetproductoverview', null);
end if;

if not fc_IsDataExists('select count(*) from tsysinfo_pagelet t where t.C_PAGELETCODE=''amc_assetproduct_base''') then
insert into tsysinfo_pagelet (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT)
values ('amc_assetproduct_base', '资管产品基本信息', '/pm/fund/viewFund.htm?projectcode=[projectcode]', 1, '1', null, '0', '0', '1', 'assetproductoverview', null, null, null, '1');
end if;
	
if not fc_IsDataExists('select count(*) from tsysinfo_pagelet t where t.C_PAGELETCODE=''amc_assetproduct_project''') then
insert into tsysinfo_pagelet (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT)
values ('amc_assetproduct_project', '关联的项目', '/pm/handleproject/assetpacket_view.htm?projectcode=[projectcode]|pageCode=assetproductoverview', 2, '1', null, '0', '0', '1', 'assetproductoverview', null, null, null, '1');
end if;

end;
/