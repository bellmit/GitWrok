set define off;
declare 
v_clob_afn clob;

begin
--投后跟踪计划提醒
v_clob_afn :='select distinct t.l_id,
        t.c_noticeto userid,
        (sysdate - to_date(''1970-01-01'', ''yyyy-mm-dd'') - 8 / 24) *86400000 senddate,
        ''投后跟踪计划提醒'' msgtitle,
        ''项目名称['' || t.c_projectcode  || '':'' || t.c_projectname || '']''||
				case when t.c_loanaccountcode is not null then
          ''的借款人[''||t.c_loanaccountname||'']''
       end  ||''待跟踪检查，请尽快处理！''  msgcontent,
       ''/afterinvest/afterinvestadd.htm?hsBpmKey=afterinvestment''|| CHR(38) ||''createtype=1''
	   || CHR(38) ||''noticeid=''||t.l_id
       || CHR(38) ||''projectCode=''||t.c_projectcode
	   || CHR(38) ||''projectnature=''||(select c_projectnature from tproject_info where c_projectcode=t.c_projectcode)
       || CHR(38) || ''projectname=''||t.c_projectname ||
       case when t.c_loanaccountcode is not null then
        CHR(38) ||''loanaccountcode=''||t.c_loanaccountcode
       || CHR(38) || ''loanaccountname=''||t.c_loanaccountname 
       end ||''''  tcmpurl
  from tafter_investment_notice t where t.c_status = 0 and to_char(t.d_noticedate,''yyyymmdd'') = to_char(sysdate,''yyyymmdd'') and t.c_type = ''1'' ';

	delete from TSYSINFO_MSG_PRO t where t.c_msgid='afterInvestNotice';
	insert into tsysinfo_msg_pro (C_MSGID, C_MSGTYPE, C_ISPROJECTROLE, C_ISUSE, MEMO, C_MSGNAME, C_MSGURL, TRANS_CODE, SUB_TRANS_CODE, C_ISSENDEMAIL, C_SYSTEM, C_SQL)
values ('afterInvestNotice', '2', '0', '1', '投后跟踪计划提醒', '投后跟踪计划提醒', null, '', '', '1', '1',v_clob_afn);
commit;
end;
/
set define on;
