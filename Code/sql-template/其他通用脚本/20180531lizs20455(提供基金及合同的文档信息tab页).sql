declare
begin
if not fc_IsDataExists('select count(*) from tsysinfo_pagelet t where t.C_PAGELETCODE=''fund_txtview''') then
insert into tsysinfo_pagelet (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT, C_LAYOUTTYPE, C_NEED_REFRESHBTN, C_NEED_PAGEBTN, C_ISCANEDIT_ITEMNUM, C_ITEMNUMBERENUM, C_SNAPSHOT_PATH, C_MOREINFO_URL, C_PARSE_PATH, L_DEFAULT_ITEM_NUMBER, C_NEED_TOTALBTN, C_ISSHOWNEXTBTN, C_NEXTBTNNAME, C_ISSHOWFLOWBTN, C_FLOWBTNNAME)
values ('fund_txtview', 'ÎÄµµÐÅÏ¢', '/approval/projectText/projectTextManageForIframe.htm?querymode=[querymode]|projectcode=[projectcode]|nodeId=1001', 6, '1', null, '0', '0', '1', 'fundprojectoverview', null, null, null, '1', null, '1', '0', '0', null, null, null, null, null, null, '0', null, '0', null);
end if;

if not fc_IsDataExists('select count(*) from tsysinfo_pagelet_temp t where t.c_default_pagelets like ''%fund_txtview%''') then
update tsysinfo_pagelet_temp t set t.c_default_pagelets =t.c_default_pagelets||',fund_txtview' where t.c_tempcode ='amc_fund';
end if;
end;
/
