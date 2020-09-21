declare 
begin
if fc_isdataexists('select count(1) from tsysinfo_pagelet t where t.c_pagecode=''investprojectview'' and t.c_pageletcode=''51'' and t.c_url=''/pm/tinvestcollateral/tinvestcollateral_view.htm?projectcode=[projectcode]''') then
  execute immediate 'update tsysinfo_pagelet t set t.c_url = ''/v2/pawn/pawnInfoInvest/overlist.htm?projectcode=[projectcode]'' where t.c_pagecode=''investprojectview'' and t.c_pageletcode=''51''';
end if;
end;
/