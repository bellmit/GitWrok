declare
begin
if not fc_IsDataExists('select count(*) from tsysinfo_pagelet t where t.C_PAGELETCODE = ''loan10''') then
	insert into tsysinfo_pagelet (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT)
	values ('loan10', '上会信息', '/creditorcontract/meetingApply_view.htm?projectcode=[projectcode]|loanaccountcode=[loanaccountcode]', 10, '1', null, '0', '0', '1', 'loanoverview', null, null, null, '1');
end if;

if  fc_IsDataExists('select count(*) from tsysinfo_pagelet_temp t where t.c_tempcode = ''4''') then
	update tsysinfo_pagelet_temp t set t.c_default_pagelets = '23,24,25,26,27,28,29,30,pay25,loan10' where t.c_tempcode = '4';
end if;
end;
/