declare 
begin
if fc_isdataexists('select count(1) from tsysinfo_pagelet t where t.c_pagecode=''loanoverview'' and t.c_pageletcode=''25'' and t.c_url=''/creditorcontract/modifyPawn_view.htm?projectcode=[projectcode]|loanaccountcode=[loanaccountcode]''') then
  execute immediate 'update tsysinfo_pagelet t set t.c_url = ''/v2/pawn/pawnInfo/overview.htm?projectCode=[projectcode]|loanerCode=[loanaccountcode]|showType=overview'' where t.c_pagecode=''loanoverview'' and t.c_pageletcode=''25''';
end if;
end;
/
