declare
begin
if fc_isdataexists('select count(1) from tsysinfo_pagelet t where t.c_pagecode=''handprojectoverview'' and t.c_pageletcode=''36'' and t.c_url=''/pm/handleproject/loanaccount_view.htm?projectcode=[projectcode]|projectnature=90''') then
  execute immediate 'update tsysinfo_pagelet t set t.c_url = ''/v2/loaner/overview.htm?projectCode=[projectcode]|projectNature=90|showType=overview'' where t.c_pagecode=''handprojectoverview'' and t.c_pageletcode=''36''';
end if;
end;
/