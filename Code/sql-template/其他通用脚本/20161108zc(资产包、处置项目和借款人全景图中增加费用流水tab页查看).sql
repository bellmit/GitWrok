
insert into tsysinfo_pagelet (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT)
values ('pay23', '费用流水信息', '/packetreception/assetpacket/receivepayment_view.htm?projectcode=[projectcode]', 13, '1', null, '0', '0', '1', 'projectoverview', null, null, null, '1');

insert into tsysinfo_pagelet (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT)
values ('pay24', '费用流水信息（处置）', '/packetreception/assetpacket/receivepayment_view.htm?projectcode=[projectcode]', 9, '1', null, '0', '0', '1', 'handprojectoverview', null, null, null, '1');


insert into tsysinfo_pagelet (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT)
values ('pay25', '费用流水信息', '/packetreception/assetpacket/receivepayment_view.htm?projectcode=[projectcode]', 9, '1', null, '0', '0', '1', 'loanoverview', null, null, null, '1');

update  tsysinfo_pagelet_temp t set t.c_default_pagelets = '11,12,13,14,15,16,17,18,19,20,21,22,33,pay23' where t.c_tempcode ='5';
update  tsysinfo_pagelet_temp t set t.c_default_pagelets = '34,35,36,37,38,39,40,41,pay24' where t.c_tempcode ='6';
update  tsysinfo_pagelet_temp t set t.c_default_pagelets = '23,24,25,26,27,28,29,30,pay25' where t.c_tempcode ='4';
