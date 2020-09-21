-------------20180420dutao23901新增产权经纪全景图配置---------------------
declare
begin

-------插入主TAB页-------
if not fc_IsDataExists('select count(*) from tsysinfo_pagelet_temp t where t.C_TEMPCODE=''amc_property''') then 
insert into tsysinfo_pagelet_temp(C_TEMPCODE,C_TEMPNAME,C_PAGEURL,C_ISDEFAULT,C_ISENABLED,L_DEFINEPAGELET_NUM,C_DEFAULT_PAGELETS,L_ORDER,C_PAGECODE,C_SYSTYPE,C_LAYOUTTYPE,C_CONFIGINFO,D_CREATETIME,C_CREATEUSER,C_REMARK,D_LASTUPDATETIME,C_LASTUPDATEUSER)
values('amc_property','产权经济项目全景图',null,'1','1',null,'property_01,property_02,property_03,property_04,property_05,property_06',null,'propertyprojectview','S08',null,null,null,null,null,null,null);
end if;

-------插入子TAB页-------
if not fc_IsDataExists('select count(*) from tsysinfo_pagelet t where t.C_PAGELETCODE=''property_01''') then 
insert into tsysinfo_pagelet(C_PAGELETCODE,C_PAGELETNAME,C_URL,L_ORDER,C_ISUSE,C_KEYWORDS,C_NEED_MOREBTN,C_NEED_MOREBTN1,C_LOADMODE,C_PAGECODE,C_SYSTYPE,C_ISHASSUBTAB,C_PARENTPAGELETCODE,C_ISDEFAULT,C_LAYOUTTYPE,C_NEED_REFRESHBTN,C_NEED_PAGEBTN,C_ISCANEDIT_ITEMNUM,C_ITEMNUMBERENUM,C_SNAPSHOT_PATH,C_MOREINFO_URL,C_PARSE_PATH,L_DEFAULT_ITEM_NUMBER,C_NEED_TOTALBTN,C_ISSHOWNEXTBTN,C_NEXTBTNNAME,C_ISSHOWFLOWBTN,C_FLOWBTNNAME)
values('property_01','项目基本信息','/factor/factor.htm?iframeid=baseInfo'||chr(38)||'factorflag=1'||chr(38)||'maintablekey=[projectcode]'||chr(38)||'querymode=[querymode]'||chr(38)||'tempcode=[tempcodes]'||chr(38)||'phase=[projectphase]',1,'1',null,'0','0','2','propertyprojectview','S08',null,null,'1',null,'1','0','0',null,null,null,null,null,null,'0',null,'0',null);
end if;

if not fc_IsDataExists('select count(*) from tsysinfo_pagelet t where t.C_PAGELETCODE=''property_02''') then 
insert into tsysinfo_pagelet(C_PAGELETCODE,C_PAGELETNAME,C_URL,L_ORDER,C_ISUSE,C_KEYWORDS,C_NEED_MOREBTN,C_NEED_MOREBTN1,C_LOADMODE,C_PAGECODE,C_SYSTYPE,C_ISHASSUBTAB,C_PARENTPAGELETCODE,C_ISDEFAULT,C_LAYOUTTYPE,C_NEED_REFRESHBTN,C_NEED_PAGEBTN,C_ISCANEDIT_ITEMNUM,C_ITEMNUMBERENUM,C_SNAPSHOT_PATH,C_MOREINFO_URL,C_PARSE_PATH,L_DEFAULT_ITEM_NUMBER,C_NEED_TOTALBTN,C_ISSHOWNEXTBTN,C_NEXTBTNNAME,C_ISSHOWFLOWBTN,C_FLOWBTNNAME)
values('property_02','产权经纪合同信息','/pm/investproject/investContract_view.htm?querymode=[querymode]|projectcode=[projectcode]|isInvest=1',2,'1',null,'0','0','1','propertyprojectview','S08',null,null,'1',null,'1','0','0',null,null,null,null,null,null,'0',null,'0',null);
end if;

if not fc_IsDataExists('select count(*) from tsysinfo_pagelet t where t.C_PAGELETCODE=''property_03''') then 
insert into tsysinfo_pagelet(C_PAGELETCODE,C_PAGELETNAME,C_URL,L_ORDER,C_ISUSE,C_KEYWORDS,C_NEED_MOREBTN,C_NEED_MOREBTN1,C_LOADMODE,C_PAGECODE,C_SYSTYPE,C_ISHASSUBTAB,C_PARENTPAGELETCODE,C_ISDEFAULT,C_LAYOUTTYPE,C_NEED_REFRESHBTN,C_NEED_PAGEBTN,C_ISCANEDIT_ITEMNUM,C_ITEMNUMBERENUM,C_SNAPSHOT_PATH,C_MOREINFO_URL,C_PARSE_PATH,L_DEFAULT_ITEM_NUMBER,C_NEED_TOTALBTN,C_ISSHOWNEXTBTN,C_NEXTBTNNAME,C_ISSHOWFLOWBTN,C_FLOWBTNNAME)
values('property_03','文档信息','/approval/projectText/projectTextManageForIframe.htm?querymode=[querymode]|projectcode=[projectcode]|nodeIds=1001',3,'1',null,'0','0','1','propertyprojectview','S08',null,null,'1',null,'1','0','0',null,null,null,null,null,null,'0',null,'0',null);
end if;

if not fc_IsDataExists('select count(*) from tsysinfo_pagelet t where t.C_PAGELETCODE=''property_04''') then 
insert into tsysinfo_pagelet(C_PAGELETCODE,C_PAGELETNAME,C_URL,L_ORDER,C_ISUSE,C_KEYWORDS,C_NEED_MOREBTN,C_NEED_MOREBTN1,C_LOADMODE,C_PAGECODE,C_SYSTYPE,C_ISHASSUBTAB,C_PARENTPAGELETCODE,C_ISDEFAULT,C_LAYOUTTYPE,C_NEED_REFRESHBTN,C_NEED_PAGEBTN,C_ISCANEDIT_ITEMNUM,C_ITEMNUMBERENUM,C_SNAPSHOT_PATH,C_MOREINFO_URL,C_PARSE_PATH,L_DEFAULT_ITEM_NUMBER,C_NEED_TOTALBTN,C_ISSHOWNEXTBTN,C_NEXTBTNNAME,C_ISSHOWFLOWBTN,C_FLOWBTNNAME)
values('property_04','流程信息','/packetreception/assetpacket/processinfo_view.htm?projectcode=[projectcode]',4,'1',null,'0','0','1','propertyprojectview','S08',null,null,'1',null,'1','0','0',null,null,null,null,null,null,'0',null,'0',null);
end if;

if not fc_IsDataExists('select count(*) from tsysinfo_pagelet t where t.C_PAGELETCODE=''property_05''') then 
insert into tsysinfo_pagelet(C_PAGELETCODE,C_PAGELETNAME,C_URL,L_ORDER,C_ISUSE,C_KEYWORDS,C_NEED_MOREBTN,C_NEED_MOREBTN1,C_LOADMODE,C_PAGECODE,C_SYSTYPE,C_ISHASSUBTAB,C_PARENTPAGELETCODE,C_ISDEFAULT,C_LAYOUTTYPE,C_NEED_REFRESHBTN,C_NEED_PAGEBTN,C_ISCANEDIT_ITEMNUM,C_ITEMNUMBERENUM,C_SNAPSHOT_PATH,C_MOREINFO_URL,C_PARSE_PATH,L_DEFAULT_ITEM_NUMBER,C_NEED_TOTALBTN,C_ISSHOWNEXTBTN,C_NEXTBTNNAME,C_ISSHOWFLOWBTN,C_FLOWBTNNAME)
values('property_05','资金流水信息','/pm/investproject/investFlow_view.htm?projectcode=[projectcode]',5,'1',null,'0','0','1','propertyprojectview','S08',null,null,'1',null,'1','0','0',null,null,null,null,null,null,'0',null,'0',null);
end if;

if not fc_IsDataExists('select count(*) from tsysinfo_pagelet t where t.C_PAGELETCODE=''property_06''') then 
insert into tsysinfo_pagelet(C_PAGELETCODE,C_PAGELETNAME,C_URL,L_ORDER,C_ISUSE,C_KEYWORDS,C_NEED_MOREBTN,C_NEED_MOREBTN1,C_LOADMODE,C_PAGECODE,C_SYSTYPE,C_ISHASSUBTAB,C_PARENTPAGELETCODE,C_ISDEFAULT,C_LAYOUTTYPE,C_NEED_REFRESHBTN,C_NEED_PAGEBTN,C_ISCANEDIT_ITEMNUM,C_ITEMNUMBERENUM,C_SNAPSHOT_PATH,C_MOREINFO_URL,C_PARSE_PATH,L_DEFAULT_ITEM_NUMBER,C_NEED_TOTALBTN,C_ISSHOWNEXTBTN,C_NEXTBTNNAME,C_ISSHOWFLOWBTN,C_FLOWBTNNAME)
values('property_06','项目跟踪','/fundinfo/projecttrack/showprojecttrack.htm?projectcode=[projectcode]|projectview=true',6,'1',null,'0','0','1','propertyprojectview','S08',null,null,'1',null,'1','0','0',null,null,null,null,null,null,'0',null,'0',null);
end if;

end;
/

-------------20180420dutao23901新增产权经纪全景图配置---------------------