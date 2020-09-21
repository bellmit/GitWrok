--[M201901280851]yuxd25447借款人全景图新增加文档信息tab页--start--
declare 
begin
if not fc_isdataexists('select count(1) from TSYSINFO_PAGELET t where t.c_pageletcode = ''loan11''') then 
	insert into tsysinfo_pagelet (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT, C_ISSHOWNEXTBTN, C_NEXTBTNNAME, C_ISSHOWFLOWBTN, C_FLOWBTNNAME, C_LAYOUTTYPE, C_NEED_REFRESHBTN, C_NEED_PAGEBTN, C_ISCANEDIT_ITEMNUM, C_ITEMNUMBERENUM, C_SNAPSHOT_PATH, C_MOREINFO_URL, C_PARSE_PATH, L_DEFAULT_ITEM_NUMBER, C_NEED_TOTALBTN, TRANS_CODE, SUB_TRANS_CODE, C_SYSTEMCODE)
	values ('loan11', '文档信息', '/approval/projectText/projectTextManageForIframe.htm?querymode=[querymode]|projectcode=[projectcode]|agentcode=[loanaccountcode]|belongto=182|hideTexttypeTree=0', 11, '1', null, '0', '0', '1', 'loanoverview', null, null, null, '1', '0', null, '0', null, null, '1', '0', '0', null, null, null, null, null, null, 'mainpageright', null, null);
end if;

if not fc_isdataexists('select count(1) from tsysinfo_pagelet_temp t where instr('','' || t.c_default_pagelets || '','', '','' || ''loan11'' || '','') > 0') then
	UPDATE  tsysinfo_pagelet_temp  SET c_default_pagelets = c_default_pagelets||',loan11' WHERE c_tempcode = '4';
end if;
end;
/
--[M201901280851]yuxd25447借款人全景图新增加文档信息tab页--end--
