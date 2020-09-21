declare
begin
update  tsysinfo_pagelet t set t.c_pageletname ='保全信息' where t.c_pageletcode='21'; 
update  tsysinfo_pagelet t set t.c_pageletname ='保全信息' where t.c_pageletcode='30'; 
end;
/