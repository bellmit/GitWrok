declare
begin
if  fc_IsDataExists('select count(*) from tsysinfo_msg_pro t where t.c_msgid=''1018''') then
update tsysinfo_msg_pro t set t.memo = '基金复核待办',t.c_msgname = '基金复核待办',t.c_msgurl = '/home/main/MsgWin.mw?type=2'||chr(38)||'returntype=1'||chr(38)||'msgTitle=基金复核待办',t.c_sql = 'select ''admin'' ||
       trunc((p.d_lastupdatetime - to_date(''1970-01-01'', ''yyyy-mm-dd'') -
             8 / 24) * 86400000 + 100 + 900 * dbms_random.value) ||
       u.user_id msgid,
       ''busi'' msgtype,
       ''待办业务'' msgtypename,
       ''admin'' senduser,
       u.user_id userid,
       ''基金复核待办'' msgtitle,
       ''基金【'' || p.c_projectname || ''】待复核，请尽快处理！'' msgcontent,
       (nvl(p.d_lastupdatetime, p.d_entertime) -
       to_date(''1970-01-01'', ''yyyy-mm-dd'') - 8 / 24) * 86400000 senddate,
       ''/pm/fund/reviewFund.htm?projectcode='' || p.c_projectcode tcmpurl
  from tproject_info p, tsys_user u, tsys_organization o
 where p.c_projectnature = ''99''
   and (p.c_projectstatus = ''04'' or p.c_projectstatus = ''01'')
   and (p.c_rejecttype = ''0'' or p.c_rejecttype = ''2'')
   and (substr(p.c_projecttype, 0, 1) not in (''3'',''4''))
   and o.org_id =
       (select uu.org_id from tsys_user uu where uu.user_id = p.c_enteruser)
   and u.org_id = o.org_id
   and u.user_id <> p.c_enteruser
 order by p.d_lastupdatetime desc' where t.c_msgid = '1018';
 end if;
 end;
 /