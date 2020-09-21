declare 
begin
if not fc_isdataexists('select count(1) from TSYSINFO_PAGELET t where t.c_pageletcode = ''customer_dailypostview_1''') then 
  insert into tsysinfo_pagelet (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT, C_LAYOUTTYPE, C_NEED_REFRESHBTN, C_NEED_PAGEBTN, C_ISCANEDIT_ITEMNUM, C_ITEMNUMBERENUM, C_SNAPSHOT_PATH, C_MOREINFO_URL, C_PARSE_PATH, L_DEFAULT_ITEM_NUMBER, C_NEED_TOTALBTN, C_ISSHOWNEXTBTN, C_NEXTBTNNAME, C_ISSHOWFLOWBTN, C_FLOWBTNNAME, TRANS_CODE, SUB_TRANS_CODE, C_SYSTEMCODE)
  values ('customer_dailypostview_1', '投后管理', '/v2/afterinvestment/dailyPostManagement/dailyPostManagementOverview.htm?projectCode=[projectcode]', 5, '0', null, '1', '1', '1', 'projectoverview', null, null, null, '1', null, '1', '0', '0', null, null, null, null, null, null, '0', null, '0', null, 'mainpageright', null, null);
end if;

if not fc_isdataexists('select count(1) from TSYSINFO_PAGELET t where t.c_pageletcode = ''customer_dailypostview_2''') then 
  insert into tsysinfo_pagelet (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT, C_LAYOUTTYPE, C_NEED_REFRESHBTN, C_NEED_PAGEBTN, C_ISCANEDIT_ITEMNUM, C_ITEMNUMBERENUM, C_SNAPSHOT_PATH, C_MOREINFO_URL, C_PARSE_PATH, L_DEFAULT_ITEM_NUMBER, C_NEED_TOTALBTN, C_ISSHOWNEXTBTN, C_NEXTBTNNAME, C_ISSHOWFLOWBTN, C_FLOWBTNNAME, TRANS_CODE, SUB_TRANS_CODE, C_SYSTEMCODE)
  values ('customer_dailypostview_2', '投后管理', '/v2/afterinvestment/dailyPostManagement/dailyPostManagementOverview.htm?projectCode=[projectcode]', 5, '0', null, '1', '1', '1', 'investprojectview', null, null, null, '1', null, '1', '0', '0', null, null, null, null, null, null, '0', null, '0', null, 'mainpageright', null, null);
end if;

if not fc_isdataexists('select count(1) from tsysinfo_pagelet_temp t where t.c_tempcode=''5'' and instr('','' || t.c_default_pagelets || '','', '','' || ''customer_dailypostview_1'' || '','') > 0') then
  UPDATE  tsysinfo_pagelet_temp  SET c_default_pagelets = c_default_pagelets||',customer_dailypostview_1' WHERE c_tempcode = '5';
end if;

if not fc_isdataexists('select count(1) from tsysinfo_pagelet_temp t where t.c_tempcode=''8'' and instr('','' || t.c_default_pagelets || '','', '','' || ''customer_dailypostview_2'' || '','') > 0') then
  UPDATE  tsysinfo_pagelet_temp  SET c_default_pagelets = c_default_pagelets||',customer_dailypostview_2' WHERE c_tempcode = '8';
end if;
end;
/
