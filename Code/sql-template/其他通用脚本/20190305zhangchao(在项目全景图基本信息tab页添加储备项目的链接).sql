declare
begin
if fc_IsDataExists('select count(*) from tsysinfo_pagelet t where t.C_PAGELETCODE=''11''') then
update tsysinfo_pagelet t set t.c_url = '/pm/project/projectinfo.htm?panorama=1'||chr(38)||'iframeid=baseInfo'||chr(38)||'factorflag=1'||chr(38)||'maintablekey=[projectcode]'||chr(38)||'querymode=[querymode]'||chr(38)||'tempcode=[tempcodes]'||chr(38)||'phase=[projectphase]' where t.c_pagecode = 'projectoverview' and t.c_pageletcode = '11';
end if;
end;
/