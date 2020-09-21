declare
begin
--报表导航
if not fc_IsDataExists('select count(*) from tsysinfo_bizmenu_navi t where t.C_MENUCODE = ''zyzqye'' and t.C_PAGECODE = ''report''') then
 insert into tsysinfo_bizmenu_navi(C_PAGECODE,C_PAGENAME,C_MENUTYPE,C_MENUTYPENAME,C_MENUCODE,C_MENUNAME,C_MENUURL,C_TRANSCODE,C_SUBTRANSCODE,C_ISUSE,L_ORDER)
 values('report','报表导航','1','通用报表','zyzqye','自营债权余额','report/show/showReport.mw?raq=commonReport/zyzqye.raq','zyzqye','zyzqye','1','1');
 end if;
 if not fc_IsDataExists('select count(*) from tsysinfo_bizmenu_navi t where t.C_MENUCODE = ''tzywxz''  and t.C_PAGECODE = ''report''') then
 insert into tsysinfo_bizmenu_navi(C_PAGECODE,C_PAGENAME,C_MENUTYPE,C_MENUTYPENAME,C_MENUCODE,C_MENUNAME,C_MENUURL,C_TRANSCODE,C_SUBTRANSCODE,C_ISUSE,L_ORDER)
 values('report','报表导航','1','通用报表','tzywxz','投资业务新增','report/show/showReport.mw?raq=commonReport/tzywxz.raq','tzywxz','tzywxz','1','2');
 end if;
  if fc_IsDataExists('select count(*) from tsysinfo_bizmenu_navi t where t.C_MENUCODE = ''zyzqsg'' and t.C_PAGECODE = ''report'' and t.C_MENUURL=''report/show/showReport.mw?raq=zheshang/zyzqsg.raq''') then
  update tsysinfo_bizmenu_navi t set t.C_MENUURL='report/show/showReport.mw?raq=commonReport/zyzqsg.raq' where  t.C_MENUCODE = 'zyzqsg' and t.C_PAGECODE = 'report';
 end if;
 if not fc_IsDataExists('select count(*) from tsysinfo_bizmenu_navi t where t.C_MENUCODE = ''zyzqsg'' and t.C_PAGECODE = ''report''') then
 insert into tsysinfo_bizmenu_navi(C_PAGECODE,C_PAGENAME,C_MENUTYPE,C_MENUTYPENAME,C_MENUCODE,C_MENUNAME,C_MENUURL,C_TRANSCODE,C_SUBTRANSCODE,C_ISUSE,L_ORDER)
 values('report','报表导航','1','通用报表','zyzqsg','自营债权收购','report/show/showReport.mw?raq=commonReport/zyzqsg.raq','zyzqsg','zyzqsg','1','3');
 end if;
  if fc_IsDataExists('select count(*) from tsysinfo_bizmenu_navi t where t.C_MENUCODE = ''investrecoveryinfo'' and t.C_PAGECODE = ''report'' and t.C_MENUURL=''report/show/showReport.mw?raq=zheshang/investrecoveryinfo.raq''') then
  update tsysinfo_bizmenu_navi t set t.C_MENUURL='report/show/showReport.mw?raq=commonReport/investrecoveryInfo.raq' where  t.C_MENUCODE = 'investrecoveryinfo' and t.C_PAGECODE = 'report';
 end if;
  if not fc_IsDataExists('select count(*) from tsysinfo_bizmenu_navi t where t.C_MENUCODE = ''investrecoveryinfo'' and t.C_PAGECODE = ''report''') then
  insert into tsysinfo_bizmenu_navi(C_PAGECODE,C_PAGENAME,C_MENUTYPE,C_MENUTYPENAME,C_MENUCODE,C_MENUNAME,C_MENUURL,C_TRANSCODE,C_SUBTRANSCODE,C_ISUSE,L_ORDER)
 values('report','报表导航','1','通用报表','investrecoveryinfo','投资业务回收情况','report/show/showReport.mw?raq=commonReport/investrecoveryInfo.raq','investrecoveryinfo','investrecoveryinfo','1','4');
 end if;
  if fc_IsDataExists('select count(*) from tsysinfo_bizmenu_navi t where t.C_MENUCODE = ''zyzqcz_zc'' and t.C_PAGECODE = ''report'' and t.C_MENUURL=''report/show/showReport.mw?raq=zheshang/zyzqcz_zc.raq''') then
  update tsysinfo_bizmenu_navi t set t.C_MENUURL='report/show/showReport.mw?raq=commonReport/zyzqcz_zc.raq' where  t.C_MENUCODE = 'zyzqcz_zc' and t.C_PAGECODE = 'report';
 end if;
   if not fc_IsDataExists('select count(*) from tsysinfo_bizmenu_navi t where t.C_MENUCODE = ''zyzqcz_zc'' and t.C_PAGECODE = ''report''') then
  insert into tsysinfo_bizmenu_navi(C_PAGECODE,C_PAGENAME,C_MENUTYPE,C_MENUTYPENAME,C_MENUCODE,C_MENUNAME,C_MENUURL,C_TRANSCODE,C_SUBTRANSCODE,C_ISUSE,L_ORDER)
 values('report','报表导航','1','通用报表','zyzqcz_zc','自营债权处置','report/show/showReport.mw?raq=commonReport/zyzqcz_zc.raq','zyzqcz_zc','zyzqcz_zc','1','5');
 end if;
  if fc_IsDataExists('select count(*) from tsysinfo_bizmenu_navi t where t.C_MENUCODE = ''tzywcx_zc'' and t.C_PAGECODE = ''report'' and t.C_MENUURL=''report/show/showReport.mw?raq=zheshang/tzywcx_zc.raq''') then
  update tsysinfo_bizmenu_navi t set t.C_MENUURL='report/show/showReport.mw?raq=commonReport/tzywcx_zc.raq' where  t.C_MENUCODE = 'tzywcx_zc' and t.C_PAGECODE = 'report';
 end if;
   if not fc_IsDataExists('select count(*) from tsysinfo_bizmenu_navi t where t.C_MENUCODE = ''tzywcx_zc'' and t.C_PAGECODE = ''report''') then
  insert into tsysinfo_bizmenu_navi(C_PAGECODE,C_PAGENAME,C_MENUTYPE,C_MENUTYPENAME,C_MENUCODE,C_MENUNAME,C_MENUURL,C_TRANSCODE,C_SUBTRANSCODE,C_ISUSE,L_ORDER)
 values('report','报表导航','1','通用报表','tzywcx_zc','投资业务存续情况','report/show/showReport.mw?raq=commonReport/tzywcx_zc.raq','tzywcx_zc','tzywcx_zc','1','6');
 end if;
 --已添加到报表导航中的报表，从报表管理中去掉
 if fc_IsDataExists('select count(*) from tsys_menu t where t.parent_code=''commonreport'' and t.menu_url is not null and t.trans_code in (''zyzqye'',''tzywcx_zc'',''tzywxz'',''investrecoveryinfo'',''zyzqcz_zc'',''zyzqsg'')') then
update  tsys_menu t set t.menu_url ='' where t.parent_code='commonreport' and t.trans_code in ('zyzqye','tzywcx_zc','tzywxz','investrecoveryinfo','zyzqcz_zc','zyzqsg');
end if;
end;
/
