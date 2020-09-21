delete from tsysinfo_pagelet p where p.c_pagecode='fundprojectoverview';

delete from tsysinfo_pagelet_temp tp where tp.c_pagecode='fundprojectoverview';

insert into tsysinfo_pagelet_temp (C_TEMPCODE, C_TEMPNAME, C_PAGEURL, C_ISDEFAULT, C_ISENABLED, L_DEFINEPAGELET_NUM, C_DEFAULT_PAGELETS, L_ORDER, C_PAGECODE, C_SYSTYPE)
values ('amc_fund', '基金全景图', null, '1', '1', null, 'amc_fund_base,amc_fund_pay,amc_fund_project,amc_fund_sub', 1, 'fundprojectoverview', null);

insert into tsysinfo_pagelet (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT)
values ('amc_fund_base', '基金基本信息', '/pm/fund/viewFund.htm?projectcode=[projectcode]', 1, '1', null, '0', '0', '1', 'fundprojectoverview', null, null, null, '1');

insert into tsysinfo_pagelet (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT)
values ('amc_fund_project', '关联的项目', '/pm/handleproject/assetpacket_view.htm?projectcode=[projectcode]|pageCode=fundprojectoverview', 3, '1', null, '0', '0', '1', 'fundprojectoverview', null, null, null, '1');

insert into tsysinfo_pagelet (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT)
values ('amc_fund_sub', '关联子基金', '/pm/fund/fundListView.htm?projectcode=[projectcode]', 4, '1', null, '0', '0', '1', 'fundprojectoverview', null, null, null, '1');

insert into tsysinfo_pagelet (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT)
values ('amc_fund_pay', '费用流水信息', '/packetreception/assetpacket/receivepayment_view.htm?projectcode=[projectcode]', 2, '1', null, '0', '0', '1', 'fundprojectoverview', null, null, null, '1');
