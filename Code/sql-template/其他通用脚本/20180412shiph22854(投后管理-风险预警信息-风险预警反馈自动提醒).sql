--[201802050341]20180412shiph22854(风险预警信息，风险预警反馈自动提醒)--start--
declare 
v_clob_afn clob;

begin
--风险预警反馈提醒
v_clob_afn :='select distinct t.l_id,
        t.c_noticeto userid,
        (sysdate - to_date(''1970-01-01'', ''yyyy-mm-dd'') - 8 / 24) *86400000 senddate,
        ''风险预警反馈提醒'' msgtitle,
        ''项目名称['' || t.c_projectcode  || '':'' || t.c_projectname || '']''||
				case when t.c_loanaccountcode is not null then
          ''的借款人[''||t.c_loanaccountname||'']''
       end  ||''待风险预警反馈，请尽快处理！''  msgcontent,
       ''/afterinvest/riskwarning/riskFeedbackForm.htm?hsBpmKey=riskFeedbackFlow''|| CHR(38) ||''opt=add'' 
       || CHR(38) ||''warningInfoId=''||t.c_relationcode
       || CHR(38) ||''noticeId=''||t.l_id
	     || CHR(38) ||''projectCode=''||t.c_projectcode
       || CHR(38) || ''projectname=''||t.c_projectname ||
       case when t.c_loanaccountcode is not null then
        CHR(38) ||''loanaccountcode=''||t.c_loanaccountcode
       || CHR(38) || ''loanaccountname=''||t.c_loanaccountname 
       end ||''''  tcmpurl
  from tafter_investment_notice t where t.c_status = 0 and t.c_type=''2''';
	--delete from TSYSINFO_MSG_PRO t where t.c_msgid='riskWarningFeedbackNotice';
	--insert into tsysinfo_msg_pro (C_MSGID, C_MSGTYPE, C_ISPROJECTROLE, C_ISUSE, MEMO, C_MSGNAME, C_MSGURL, TRANS_CODE, SUB_TRANS_CODE, C_ISSENDEMAIL, C_SYSTEM, C_SQL)
--values ('riskWarningFeedbackNotice', '2', '0', '1', '风险预警反馈提醒', '风险预警反馈提醒', null, '', '', '1', '1',v_clob_afn);  

	update TSYSINFO_MSG_PRO t set t.C_SQL=v_clob_afn where t.c_msgid='riskWarningFeedbackNotice';
end;
/
--[201802050341]20180412shiph22854(风险预警信息，风险预警反馈自动提醒)--end--
