declare
begin
if fc_isdataexists('select count(1) from tsysinfo_pagelet t where t.c_pagecode=''projectoverview'' and t.c_pageletcode=''12'' and t.c_url=''/packetreception/assetpacket/loanaccount_view.htm?projectcode=[projectcode]|projectphase=[projectphase]''') then
  execute immediate 'update tsysinfo_pagelet t set t.c_url = ''/v2/loaner/overview.htm?projectCode=[projectcode]|showType=overview'' where t.c_pagecode=''projectoverview'' and t.c_pageletcode=''12''';
end if;
end;
/