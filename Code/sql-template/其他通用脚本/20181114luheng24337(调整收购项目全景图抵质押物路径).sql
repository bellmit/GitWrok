declare 
begin
if fc_isdataexists('select count(1) from tsysinfo_pagelet t where t.c_pagecode=''projectoverview'' and t.c_pageletcode=''14'' and t.c_url=''/v2/pawn/pawnInfo/overlist.htm?projectcode=[projectcode]|loanaccountcode=[loanaccountcode]''') then
  execute immediate 'update tsysinfo_pagelet t set t.c_url = ''/v2/pawn/pawnInfo/overview.htm?projectCode=[projectcode]|showType=overview'' where t.c_pagecode=''projectoverview'' and t.c_pageletcode=''14''';
end if;
end;
/
