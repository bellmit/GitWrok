delete from tsysinfo_msg_pro pro where pro.c_msgid='1018';

insert into tsysinfo_msg_pro (C_MSGID, C_MSGTYPE, C_ISPROJECTROLE, C_ISUSE, C_SQL, MEMO, C_MSGNAME, C_MSGURL, TRANS_CODE, SUB_TRANS_CODE, C_ISSENDEMAIL, C_SYSTEM)
values ('1018', '2', '0', '1', 'select ''admin'' ||
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
      ''/pm/fund/reviewFund.htm?projectcode=''||p.c_projectcode tcmpurl
  from tproject_info p,tsys_user u,tsys_organization o
 where p.c_projectnature = ''99''
   and (p.c_projectstatus = ''04'' or p.c_projectstatus = ''01'')
   and (p.c_rejecttype=''0'' or p.c_rejecttype=''2'')
   and o.org_id = (select uu.org_id from tsys_user uu where uu.user_id=p.c_enteruser)
   and u.org_id = o.org_id
   and u.user_id <> p.c_enteruser order by p.d_lastupdatetime desc', '基金复核待办', '基金复核待办', '/pm/fund/reviewFund.htm', null, null, null, null);

