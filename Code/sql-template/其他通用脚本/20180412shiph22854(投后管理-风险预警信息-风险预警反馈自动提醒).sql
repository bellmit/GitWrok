--[201802050341]20180412shiph22854(����Ԥ����Ϣ������Ԥ�������Զ�����)--start--
declare 
v_clob_afn clob;

begin
--����Ԥ����������
v_clob_afn :='select distinct t.l_id,
        t.c_noticeto userid,
        (sysdate - to_date(''1970-01-01'', ''yyyy-mm-dd'') - 8 / 24) *86400000 senddate,
        ''����Ԥ����������'' msgtitle,
        ''��Ŀ����['' || t.c_projectcode  || '':'' || t.c_projectname || '']''||
				case when t.c_loanaccountcode is not null then
          ''�Ľ����[''||t.c_loanaccountname||'']''
       end  ||''������Ԥ���������뾡�촦��''  msgcontent,
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
--values ('riskWarningFeedbackNotice', '2', '0', '1', '����Ԥ����������', '����Ԥ����������', null, '', '', '1', '1',v_clob_afn);  

	update TSYSINFO_MSG_PRO t set t.C_SQL=v_clob_afn where t.c_msgid='riskWarningFeedbackNotice';
end;
/
--[201802050341]20180412shiph22854(����Ԥ����Ϣ������Ԥ�������Զ�����)--end--
