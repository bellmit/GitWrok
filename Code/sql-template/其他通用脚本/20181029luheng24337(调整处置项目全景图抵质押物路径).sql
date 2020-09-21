declare 
begin
if fc_isdataexists('select count(1) from tsysinfo_pagelet t where t.c_pagecode=''handprojectoverview'' and t.c_pageletcode=''38'' and t.c_url=''/creditorcontract/modifyPawn_view.htm?projectcode=[projectcode]|projectnature=90''') then
	execute immediate 'update tsysinfo_pagelet t set t.c_url = ''/v2/pawn/pawnInfo/overlist.htm?projectcode=[projectcode]|projectnature=90'' where t.c_pagecode=''handprojectoverview'' and t.c_pageletcode=''38''';
end if;
end;
/
