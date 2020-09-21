declare 
begin
if not fc_isdataexists('select count(1) from TSYSINFO_PAGELET t where t.c_pageletcode = ''300''') then 
	insert into tsysinfo_pagelet (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT, C_ISSHOWNEXTBTN, C_NEXTBTNNAME, C_ISSHOWFLOWBTN, C_FLOWBTNNAME, C_LAYOUTTYPE, C_NEED_REFRESHBTN, C_NEED_PAGEBTN, C_ISCANEDIT_ITEMNUM, C_ITEMNUMBERENUM, C_SNAPSHOT_PATH, C_MOREINFO_URL, C_PARSE_PATH, L_DEFAULT_ITEM_NUMBER, C_NEED_TOTALBTN, TRANS_CODE, SUB_TRANS_CODE)
	values ('300', '合同管理', '/contract/newcontract/contractInfo_view.htm?projectcode=[projectcode]', 13, '1', null, '0', '0', '1', 'handprojectoverview', null, null, null, '1', '0', null, '0', null, null, '1', '0', '0', null, null, null, null, null, null, 'mainpageright', null);
end if;



update tsysinfo_pagelet_temp tp set tp.c_default_pagelets = '34,35,36,37,38,39,40,41,300,pay24,equityasset_2,realasset_2,meetingApproveRecord3' where tp.c_tempcode = '6';


end;
/