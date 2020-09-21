delete from tsysinfo_pagelet t where t.c_pageletcode = 'disposalitem';

insert into tsysinfo_pagelet (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT)
values ('disposalitem', '关联处置项目', '/packetreception/assetpacket/disposalitem_view.htm?projectcode=[projectcode]', 2, '1', null, '0', '0', '1', 'projectoverview', null, null, null, '1');


update  tsysinfo_pagelet_temp t set t.c_default_pagelets = '11,12,13,14,15,16,17,18,19,20,21,22,33,pay23,disposalitem' where t.c_tempcode ='5';