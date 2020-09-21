declare 
begin
if not fc_isdataexists('select count(1) from tsysinfo_pagelet_temp t where t.c_tempcode=''amc_maininvestpart''') then
insert into tsysinfo_pagelet_temp (C_TEMPCODE, C_TEMPNAME, C_PAGEURL, C_ISDEFAULT, C_ISENABLED, L_DEFINEPAGELET_NUM, C_DEFAULT_PAGELETS, L_ORDER, C_PAGECODE, C_SYSTYPE, C_LAYOUTTYPE, D_CREATETIME, C_CREATEUSER, C_REMARK, D_LASTUPDATETIME, C_LASTUPDATEUSER, C_CONFIGINFO)
values ('amc_maininvestpart', '出资主体全景图', null, '1', '1', null, 'amc_maininvestpart_base', 1, 'maininvestpartoverview', null, null, null, null, null, null, null, null);
end if;

if not fc_isdataexists('select count(1) from tsysinfo_pagelet t where t.c_pageletcode=''amc_maininvestpart_base''') then
insert into tsysinfo_pagelet (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT, C_ISSHOWNEXTBTN, C_NEXTBTNNAME, C_ISSHOWFLOWBTN, C_FLOWBTNNAME, C_LAYOUTTYPE, C_NEED_REFRESHBTN, C_NEED_PAGEBTN, C_ISCANEDIT_ITEMNUM, C_ITEMNUMBERENUM, C_SNAPSHOT_PATH, C_MOREINFO_URL, C_PARSE_PATH, L_DEFAULT_ITEM_NUMBER, C_NEED_TOTALBTN, TRANS_CODE, SUB_TRANS_CODE)
values ('amc_maininvestpart_base', '出资主体基本信息', '/pm/fund/viewFund.htm?projectcode=[projectcode]|isCompany=1', 1, '1', null, '0', '0', '1', 'maininvestpartoverview', null, null, null, '1', '0', null, '0', null, null, '1', '0', '0', null, null, null, null, null, null, 'mainpageright', null);
end if;
end;
/