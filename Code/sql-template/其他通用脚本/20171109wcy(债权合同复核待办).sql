update tsysinfo_msg_pro t set t.C_SQL='select i.c_projectcode,
       i.c_dptid,
       tur.user_id userid,
       (nvl(tac.d_lastupdatetime, tac.d_entertime) -
       to_date(''1970-01-01'', ''yyyy-mm-dd'') - 8 / 24) * 86400000 senddate,
       ''债权合同复核待办'' msgtitle,
       ''债权合同['' || tac.c_creditorcontractcode || '':'' || c_loanano ||
       '']待复核，请尽快处理！'' msgcontent,
       ''/creditorcontract/creditorContractInfo.htm?querymode=query_review'' ||
       chr(38) || ''editmode=review'' || chr(38) || ''phase=01'' || chr(38) ||
       ''loanaccountcode='' || tac.c_loanaccountcode || chr(38) ||
       ''resCode=pmReviewMenu'' || chr(38) || ''creditorcontractcode='' ||
       tac.c_creditorcontractcode || chr(38) || ''tempcodes='' ||
       tac.c_tempcode tcmpurl
  from tproject_info           i,
       tsys_user_rights        tur,
       tsys_user               tu,
       tasset_creditorcontract tac,
       tasset_loanaccount_info tli
 where tac.c_loanaccountcode = tli.c_loanaccountcode
   and tu.user_id = tur.user_id
   and i.c_projectcode = tli.c_projectcode
   and tac.c_creditorcontractstatus in (''01'', ''04'')
   and nvl(tac.c_lastupdateuser,0) <> tur.user_id
   and nvl(tac.c_rejecttype, ''0'') <> ''1''
   and ((tac.c_creditorcontractstatus = ''01''
       and tac.c_enteruser <> tur.user_id) or
       (tac.c_creditorcontractstatus <> ''01''））
   and tur.right_flag = ''1''
   and i.c_depcode  like ''%''|| tu.org_id ||''%''
   and (tur.trans_code, tur.sub_trans_code) =
       ((''packetDebtManage'', ''review''))'
  where t.C_MSGID='1001';