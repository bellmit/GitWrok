declare
begin

--�չ���Ŀ begin--
if not fc_IsDataExists('select count(*) from tsysinfo_pagelet t where t.C_PAGELETCODE=''equityasset_1''') then
insert into tsysinfo_pagelet (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT, C_ISSHOWNEXTBTN, C_NEXTBTNNAME, C_ISSHOWFLOWBTN, C_FLOWBTNNAME, C_LAYOUTTYPE, C_NEED_REFRESHBTN, C_NEED_PAGEBTN, C_ISCANEDIT_ITEMNUM)
values ('equityasset_1', '��Ȩ�ʲ�', '/packetreception/assetpacket/equityasset_view.htm?projectcode=[projectcode]', 18, '1', null, '0', '0', '1', 'projectoverview', null, null, null, '1', '0', null, '0', null, null, '1', '0', '0');
end if;

if not fc_IsDataExists('select count(*) from tsysinfo_pagelet_temp t where t.c_default_pagelets like ''%equityasset_1%'' and t.c_tempcode =''5''') then
update tsysinfo_pagelet_temp t set t.c_default_pagelets =t.c_default_pagelets||',equityasset_1' where t.c_tempcode ='5';
end if;

if not fc_IsDataExists('select count(*) from tsysinfo_pagelet t where t.C_PAGELETCODE=''realasset_1''') then
insert into tsysinfo_pagelet (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT, C_ISSHOWNEXTBTN, C_NEXTBTNNAME, C_ISSHOWFLOWBTN, C_FLOWBTNNAME, C_LAYOUTTYPE, C_NEED_REFRESHBTN, C_NEED_PAGEBTN, C_ISCANEDIT_ITEMNUM)
values ('realasset_1', 'ʵ���ʲ�', '/packetreception/assetpacket/realasset_view.htm?projectcode=[projectcode]', 19, '1', null, '0', '0', '1', 'projectoverview', null, null, null, '1', '0', null, '0', null, null, '1', '0', '0');
end if;

if not fc_IsDataExists('select count(*) from tsysinfo_pagelet_temp t where t.c_default_pagelets like ''%realasset_1%'' and t.c_tempcode =''5''') then
update tsysinfo_pagelet_temp t set t.c_default_pagelets =t.c_default_pagelets||',realasset_1' where t.c_tempcode ='5';
end if;
--�չ���Ŀ end--

--������Ŀ begin--
if not fc_IsDataExists('select count(*) from tsysinfo_pagelet t where t.C_PAGELETCODE=''equityasset_2''') then
insert into tsysinfo_pagelet (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT, C_ISSHOWNEXTBTN, C_NEXTBTNNAME, C_ISSHOWFLOWBTN, C_FLOWBTNNAME, C_LAYOUTTYPE, C_NEED_REFRESHBTN, C_NEED_PAGEBTN, C_ISCANEDIT_ITEMNUM)
values ('equityasset_2', '��Ȩ�ʲ�', '/packetreception/assetpacket/equityasset_view.htm?projectcode=[projectcode]', 18, '1', null, '0', '0', '1', 'handprojectoverview', null, null, null, '1', '0', null, '0', null, null, '1', '0', '0');
end if;

if not fc_IsDataExists('select count(*) from tsysinfo_pagelet_temp t where t.c_default_pagelets like ''%equityasset_2%'' and t.c_tempcode =''6''') then
update tsysinfo_pagelet_temp t set t.c_default_pagelets =t.c_default_pagelets||',equityasset_2' where t.c_tempcode ='6';
end if;

if not fc_IsDataExists('select count(*) from tsysinfo_pagelet t where t.C_PAGELETCODE=''realasset_2''') then
insert into tsysinfo_pagelet (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT, C_ISSHOWNEXTBTN, C_NEXTBTNNAME, C_ISSHOWFLOWBTN, C_FLOWBTNNAME, C_LAYOUTTYPE, C_NEED_REFRESHBTN, C_NEED_PAGEBTN, C_ISCANEDIT_ITEMNUM)
values ('realasset_2', 'ʵ���ʲ�', '/packetreception/assetpacket/realasset_view.htm?projectcode=[projectcode]', 19, '1', null, '0', '0', '1', 'handprojectoverview', null, null, null, '1', '0', null, '0', null, null, '1', '0', '0');
end if;

if not fc_IsDataExists('select count(*) from tsysinfo_pagelet_temp t where t.c_default_pagelets like ''%realasset_2%'' and t.c_tempcode =''6''') then
update tsysinfo_pagelet_temp t set t.c_default_pagelets =t.c_default_pagelets||',realasset_2' where t.c_tempcode ='6';
end if;
--������Ŀ end--


--Ͷ����Ŀ begin--
if not fc_IsDataExists('select count(*) from tsysinfo_pagelet t where t.C_PAGELETCODE=''equityasset_3''') then
insert into tsysinfo_pagelet (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT, C_ISSHOWNEXTBTN, C_NEXTBTNNAME, C_ISSHOWFLOWBTN, C_FLOWBTNNAME, C_LAYOUTTYPE, C_NEED_REFRESHBTN, C_NEED_PAGEBTN, C_ISCANEDIT_ITEMNUM)
values ('equityasset_3', '��Ȩ�ʲ�', '/packetreception/assetpacket/equityasset_view.htm?projectcode=[projectcode]', 18, '1', null, '0', '0', '1', 'investprojectview', null, null, null, '1', '0', null, '0', null, null, '1', '0', '0');
end if;

if not fc_IsDataExists('select count(*) from tsysinfo_pagelet_temp t where t.c_default_pagelets like ''%equityasset_3%'' and t.c_tempcode =''8''') then
update tsysinfo_pagelet_temp t set t.c_default_pagelets =t.c_default_pagelets||',equityasset_3' where t.c_tempcode ='8';
end if;

if not fc_IsDataExists('select count(*) from tsysinfo_pagelet t where t.C_PAGELETCODE=''realasset_3''') then
insert into tsysinfo_pagelet (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT, C_ISSHOWNEXTBTN, C_NEXTBTNNAME, C_ISSHOWFLOWBTN, C_FLOWBTNNAME, C_LAYOUTTYPE, C_NEED_REFRESHBTN, C_NEED_PAGEBTN, C_ISCANEDIT_ITEMNUM)
values ('realasset_3', 'ʵ���ʲ�', '/packetreception/assetpacket/realasset_view.htm?projectcode=[projectcode]', 19, '1', null, '0', '0', '1', 'investprojectview', null, null, null, '1', '0', null, '0', null, null, '1', '0', '0');
end if;

if not fc_IsDataExists('select count(*) from tsysinfo_pagelet_temp t where t.c_default_pagelets like ''%realasset_3%'' and t.c_tempcode =''8''') then
update tsysinfo_pagelet_temp t set t.c_default_pagelets =t.c_default_pagelets||',realasset_3' where t.c_tempcode ='8';
end if;
--Ͷ����Ŀ end--
end;
/