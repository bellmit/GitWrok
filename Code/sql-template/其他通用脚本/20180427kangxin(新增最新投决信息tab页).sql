declare 
begin
if not fc_isdataexists('select count(1) from TSYSINFO_PAGELET t where t.c_pageletcode = ''meetingApproveRecord''') then 
	insert into TSYSINFO_PAGELET (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT, C_ISSHOWNEXTBTN, C_NEXTBTNNAME, C_ISSHOWFLOWBTN, C_FLOWBTNNAME, C_LAYOUTTYPE, C_NEED_REFRESHBTN, C_NEED_PAGEBTN, C_ISCANEDIT_ITEMNUM, C_ITEMNUMBERENUM, C_SNAPSHOT_PATH, C_MOREINFO_URL, C_PARSE_PATH, L_DEFAULT_ITEM_NUMBER, C_NEED_TOTALBTN)
values ('meetingApproveRecord', '最新投决信息', '/pm/project/voteflow/meetingApproveRecord.htm?projectcode=[projectcode]', 7, '1', null, '0', '0', '1', 'projectoverview', null, null, null, '1', '0', null, '0', null, null, '1', '0', '0', null, null, null, null, null, null);
end if;

if not fc_isdataexists('select count(1) from TSYSINFO_PAGELET t where t.c_pageletcode = ''meetingApproveRecord2''') then 
	insert into TSYSINFO_PAGELET (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT, C_ISSHOWNEXTBTN, C_NEXTBTNNAME, C_ISSHOWFLOWBTN, C_FLOWBTNNAME, C_LAYOUTTYPE, C_NEED_REFRESHBTN, C_NEED_PAGEBTN, C_ISCANEDIT_ITEMNUM, C_ITEMNUMBERENUM, C_SNAPSHOT_PATH, C_MOREINFO_URL, C_PARSE_PATH, L_DEFAULT_ITEM_NUMBER, C_NEED_TOTALBTN)
values ('meetingApproveRecord2', '最新投决信息', '/pm/project/voteflow/meetingApproveRecord.htm?projectcode=[projectcode]', 8, '1', null, '0', '0', '1', 'investprojectview', null, null, null, '1', '0', null, '0', null, null, '1', '0', '0', null, null, null, null, null, null);
end if;

if not fc_isdataexists('select count(1) from TSYSINFO_PAGELET t where t.c_pageletcode = ''meetingApproveRecord3''') then 
	insert into TSYSINFO_PAGELET (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT, C_ISSHOWNEXTBTN, C_NEXTBTNNAME, C_ISSHOWFLOWBTN, C_FLOWBTNNAME, C_LAYOUTTYPE, C_NEED_REFRESHBTN, C_NEED_PAGEBTN, C_ISCANEDIT_ITEMNUM, C_ITEMNUMBERENUM, C_SNAPSHOT_PATH, C_MOREINFO_URL, C_PARSE_PATH, L_DEFAULT_ITEM_NUMBER, C_NEED_TOTALBTN)
values ('meetingApproveRecord3', '最新投决信息', '/pm/project/voteflow/meetingApproveRecord.htm?projectcode=[projectcode]', 9, '1', null, '0', '0', '1', 'handprojectoverview', null, null, null, '1', '0', null, '0', null, null, '1', '0', '0', null, null, null, null, null, null);
end if;
if not fc_isdataexists('select count(1) from tsysinfo_pagelet_temp t where instr2(t.c_default_pagelets,''meetingApproveRecord'') > 0 and c_tempcode = ''5''') then 
	update tsysinfo_pagelet_temp set c_default_pagelets = c_default_pagelets||',meetingApproveRecord' where c_tempcode = '5';
end if;
if not fc_isdataexists('select count(1) from tsysinfo_pagelet_temp t where instr2(t.c_default_pagelets,''meetingApproveRecord3'') > 0 and c_tempcode = ''6''') then 
	update tsysinfo_pagelet_temp set c_default_pagelets = c_default_pagelets||',meetingApproveRecord3' where c_tempcode = '6';
end if;
if not fc_isdataexists('select count(1) from tsysinfo_pagelet_temp t where instr2(t.c_default_pagelets,''meetingApproveRecord2'') > 0 and c_tempcode = ''8''') then 
	update tsysinfo_pagelet_temp set c_default_pagelets = c_default_pagelets||',meetingApproveRecord2' where c_tempcode = '8';
end if;

end;
/