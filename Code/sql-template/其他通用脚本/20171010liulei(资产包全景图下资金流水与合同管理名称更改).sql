delete from tsysinfo_pagelet t where t.c_pagecode='projectoverview'and C_PAGELETCODE='pay23';

insert into tsysinfo_pagelet (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT)
values ('pay23', '资金流水信息', '/packetreception/assetpacket/receivepayment_view.htm?projectcode=[projectcode]', 13, '1', null, '0', '0', '1', 'projectoverview', null, null, null, '1');


delete from tsysinfo_pagelet t where t.c_pagecode='projectoverview'and C_PAGELETCODE='33';

insert into tsysinfo_pagelet (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT)
values ('33', '合同管理', '/contract/newcontract/contractInfo_view.htm?projectcode=[projectcode]', 3, '1', null, '0', '0', '1', 'projectoverview', null, null, null, '1');
