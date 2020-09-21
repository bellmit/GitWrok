declare
begin
if not fc_IsDataExists('select count(*) from tsysinfo_msg_pro t where t.c_msgid=''1019''') then
insert into tsysinfo_msg_pro (C_MSGID, C_MSGTYPE, C_ISPROJECTROLE, C_ISUSE, MEMO, C_MSGNAME, C_MSGURL, TRANS_CODE, SUB_TRANS_CODE, C_ISSENDEMAIL, C_SYSTEM, C_APP_DETAILINTERFACEID, C_SQL)
values ('1019', '2', '0', '1', '资管产品复核待办', '资管产品复核待办', '/home/main/MsgWin.mw?type=2'||chr(38)||'returntype=1'||chr(38)||'msgTitle=资管产品复核待办', null, null, null, null, null, 'select ''admin'' ||
       trunc((p.d_lastupdatetime - to_date(''1970-01-01'', ''yyyy-mm-dd'') -
             8 / 24) * 86400000 + 100 + 900 * dbms_random.value) ||
       u.user_id msgid,
       ''busi'' msgtype,
       ''待办业务'' msgtypename,
       ''admin'' senduser,
       u.user_id userid,
       ''资管产品复核待办'' msgtitle,
       ''资管产品【'' || p.c_projectname || ''】待复核，请尽快处理！'' msgcontent,
       (nvl(p.d_lastupdatetime, p.d_entertime) -
       to_date(''1970-01-01'', ''yyyy-mm-dd'') - 8 / 24) * 86400000 senddate,
       ''/pm/fund/reviewFund.htm?isCompany=2''||chr(38)||''projectcode='' || p.c_projectcode tcmpurl
  from tproject_info p, tsys_user u, tsys_organization o
 where p.c_projectnature = ''99''
   and (p.c_projectstatus = ''04'' or p.c_projectstatus = ''01'')
   and (p.c_rejecttype = ''0'' or p.c_rejecttype = ''2'')
   and (substr(p.c_projecttype, 0, 1) in (''3'',''4''))
   and o.org_id =
       (select uu.org_id from tsys_user uu where uu.user_id = p.c_enteruser)
   and u.org_id = o.org_id
   and u.user_id <> p.c_enteruser
 order by p.d_lastupdatetime desc');
 end if;
 end;
 /