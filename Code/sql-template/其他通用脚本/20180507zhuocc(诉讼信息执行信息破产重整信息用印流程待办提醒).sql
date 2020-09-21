declare
begin
	--诉讼信息录入提醒
if  not fc_IsDataExists('select count(*) from tsysinfo_msg_pro t where t.c_msgid=''lawsuitNotice''') then
insert into tsysinfo_msg_pro (C_MSGID, C_MSGTYPE, C_ISPROJECTROLE, C_ISUSE, C_SQL, MEMO, C_MSGNAME, C_MSGURL, TRANS_CODE, SUB_TRANS_CODE, C_ISSENDEMAIL, C_SYSTEM)
values ('lawsuitNotice', '2', '0', '1', 'select distinct ti.c_projectcode,ti.c_dptid,tur.user_id userid,
(sysdate -
       to_date(''1970-01-01'', ''yyyy-mm-dd'') - 8 / 24) * 86400000 senddate,
       ''诉讼信息录入提醒'' msgtitle,
       ''项目名称['' || ti.c_projectname ||
       '']诉讼信息待录入，请尽快处理！'' msgcontent,
       ''/creditorcontract/addlawsuit.htm?querymode=query_insert'' ||
       chr(38) || ''projectcode='' || ti.c_projectcode tcmpurl
from tflowform_hist_var t,tflowinfo tf,tproject_info ti,tsys_user_rights tur,
       tasset_loanaccount_info tli
       where  ti.c_projectcode = tli.c_projectcode(+)
        and ti.c_projectcode=tf.c_projectcode
   and tur.right_flag = ''1''
   and t.c_fieldcode=''islawsuit''
   and t.c_fieldvalue=''1''
   and (tur.trans_code, tur.sub_trans_code) =((''LawsuitManage'', ''addLawsuit''))
   and t.process_instanceid = tf.process_instanceid
   and tur.user_id = tf.c_initiator
   and tf.c_flowstatus=''1''
   and not exists (select tsi.c_id from tlawsuit_info tsi where tsi.c_projectcode = tf.c_projectcode and tf.d_endtime < tsi.d_entertime)', '诉讼信息录入提醒', '诉讼信息录入提醒', null, null, null, '1', '1');
end if;
if  fc_IsDataExists('select count(*) from tsysinfo_msg_pro t where t.c_msgid=''lawsuitNotice''') then
  update tsysinfo_msg_pro t set t.C_SQL='select distinct ti.c_projectcode,ti.c_dptid,tur.user_id userid,
   (sysdate -
       to_date(''1970-01-01'', ''yyyy-mm-dd'') - 8 / 24) * 86400000 senddate,
       ''诉讼信息录入提醒'' msgtitle,
       ''项目名称['' || ti.c_projectname ||
       '']诉讼信息待录入，请尽快处理！'' msgcontent,
       ''/creditorcontract/addlawsuit.htm?querymode=query_insert'' ||
       chr(38) || ''projectcode='' || ti.c_projectcode tcmpurl
   from tflowform_hist_var t,tflowinfo tf,tproject_info ti,tsys_user_rights tur,
       tasset_loanaccount_info tli
       where  ti.c_projectcode = tli.c_projectcode(+)
        and ti.c_projectcode=tf.c_projectcode
   and tur.right_flag = ''1''
   and t.c_fieldcode=''islawsuit''
   and t.c_fieldvalue=''1''
   and (tur.trans_code, tur.sub_trans_code) =((''LawsuitManage'', ''addLawsuit''))
   and t.process_instanceid = tf.process_instanceid
   and tur.user_id = tf.c_initiator
   and tf.c_flowstatus=''1''
   and not exists (select tsi.c_id from tlawsuit_info tsi where tsi.c_projectcode = tf.c_projectcode and tf.d_endtime < tsi.d_entertime)' where t.C_MSGID='lawsuitNotice';
end if;
	--执行信息录入提醒
if  not fc_IsDataExists('select count(*) from tsysinfo_msg_pro t where t.c_msgid=''lawsuitexeNotice''') then
insert into tsysinfo_msg_pro (C_MSGID, C_MSGTYPE, C_ISPROJECTROLE, C_ISUSE, C_SQL, MEMO, C_MSGNAME, C_MSGURL, TRANS_CODE, SUB_TRANS_CODE, C_ISSENDEMAIL, C_SYSTEM)
values ('lawsuitexeNotice', '2', '0', '1', 'select distinct ti.c_projectcode,ti.c_dptid,tur.user_id userid,
(sysdate -
       to_date(''1970-01-01'', ''yyyy-mm-dd'') - 8 / 24) * 86400000 senddate,
       ''执行信息录入提醒'' msgtitle,
       ''项目名称['' || ti.c_projectname ||
       '']执行信息待录入，请尽快处理！'' msgcontent,
       ''/creditorcontract/addlawsuitExe.htm?editmode=false'' ||
       chr(38) || ''projectcode='' || ti.c_projectcode tcmpurl
from tflowform_hist_var t,tflowinfo tf,tproject_info ti,tsys_user_rights tur,
       tasset_loanaccount_info tli
       where  ti.c_projectcode = tli.c_projectcode(+)
        and ti.c_projectcode=tf.c_projectcode
   and tur.right_flag = ''1''
   and t.c_fieldcode=''islawsuitexe''
   and t.c_fieldvalue=''1''
   and (tur.trans_code, tur.sub_trans_code) =((''LawsuitExecutionManage'', ''addLawsuitExecution''))
   and t.process_instanceid = tf.process_instanceid
   and tur.user_id = tf.c_initiator
   and tf.c_flowstatus=''1''
   and not exists (select te.c_id from tlawsuit_execution te where te.c_projectcode = tf.c_projectcode and tf.d_endtime < te.d_entertime)', '执行信息录入提醒', '执行信息录入提醒', null, null, null, '1', '1');
end if;

if  fc_IsDataExists('select count(*) from tsysinfo_msg_pro t where t.c_msgid=''lawsuitexeNotice''') then
	update tsysinfo_msg_pro t set t.C_SQL='select distinct ti.c_projectcode,ti.c_dptid,tur.user_id userid,
	(sysdate -
       to_date(''1970-01-01'', ''yyyy-mm-dd'') - 8 / 24) * 86400000 senddate,
       ''执行信息录入提醒'' msgtitle,
       ''项目名称['' || ti.c_projectname ||
       '']执行信息待录入，请尽快处理！'' msgcontent,
       ''/creditorcontract/addlawsuitExe.htm?editmode=false'' ||
       chr(38) || ''projectcode='' || ti.c_projectcode tcmpurl
	from tflowform_hist_var t,tflowinfo tf,tproject_info ti,tsys_user_rights tur,
       tasset_loanaccount_info tli
       where  ti.c_projectcode = tli.c_projectcode(+)
        and ti.c_projectcode=tf.c_projectcode
   and tur.right_flag = ''1''
   and t.c_fieldcode=''islawsuitexe''
   and t.c_fieldvalue=''1''
   and (tur.trans_code, tur.sub_trans_code) =((''LawsuitExecutionManage'', ''addLawsuitExecution''))
   and t.process_instanceid = tf.process_instanceid
   and tur.user_id = tf.c_initiator
   and tf.c_flowstatus=''1''
   and not exists (select te.c_id from tlawsuit_execution te where te.c_projectcode = tf.c_projectcode and tf.d_endtime < te.d_entertime)' where t.C_MSGID='lawsuitexeNotice';
end if;

	--破产重整信息录入提醒
if  not fc_IsDataExists('select count(*) from tsysinfo_msg_pro t where t.c_msgid=''bankruptcyreorganizeNotice''') then
insert into tsysinfo_msg_pro (C_MSGID, C_MSGTYPE, C_ISPROJECTROLE, C_ISUSE, C_SQL, MEMO, C_MSGNAME, C_MSGURL, TRANS_CODE, SUB_TRANS_CODE, C_ISSENDEMAIL, C_SYSTEM)
values ('bankruptcyreorganizeNotice', '2', '0', '1', 'select distinct ti.c_projectcode,ti.c_dptid,tur.user_id userid,
(sysdate -
       to_date(''1970-01-01'', ''yyyy-mm-dd'') - 8 / 24) * 86400000 senddate,
       ''破产重整信息录入提醒'' msgtitle,
       ''项目名称['' || ti.c_projectname ||
       '']破产重整信息待录入，请尽快处理！'' msgcontent,
       ''/contract/bankruptcyReorganize/addbankruptcyinfo.htm?editmode=false'' ||
       chr(38) || ''editmode=false'' || chr(38) || ''projectcode='' || ti.c_projectcode tcmpurl
from tflowform_hist_var t,tflowinfo tf,tproject_info ti,tsys_user_rights tur,
       tasset_loanaccount_info tli
       where  ti.c_projectcode = tli.c_projectcode(+)
        and ti.c_projectcode=tf.c_projectcode
   and tur.right_flag = ''1''
   and t.c_fieldcode=''isbreakupreorg''
   and t.c_fieldvalue=''1''
   and (tur.trans_code, tur.sub_trans_code) =((''bankruptcyreorganize'', ''addbankruptcyreorganize''))
   and t.process_instanceid = tf.process_instanceid
   and tur.user_id = tf.c_initiator
   and tf.c_flowstatus=''1''
   and not exists (select tbi.c_id from tbankruptcy_info tbi where instr2('','' || (select concatstr(tlia.c_loanaccountcode) lcodes from  tasset_loanaccount_info tlia where tlia.c_projectcode=tf.c_projectcode) || '','' , '','' || tbi.c_loanaccountcode  || '','')>0 and tf.d_endtime < tbi.d_entertime)', '破产重整信息录入提醒', '破产重整信息录入提醒', null, null, null, '1', '1');
end if;
if  fc_IsDataExists('select count(*) from tsysinfo_msg_pro t where t.c_msgid=''bankruptcyreorganizeNotice''') then
	update tsysinfo_msg_pro t set t.C_SQL='select distinct ti.c_projectcode,ti.c_dptid,tur.user_id userid,
	(sysdate -
       to_date(''1970-01-01'', ''yyyy-mm-dd'') - 8 / 24) * 86400000 senddate,
       ''破产重整信息录入提醒'' msgtitle,
       ''项目名称['' || ti.c_projectname ||
       '']破产重整信息待录入，请尽快处理！'' msgcontent,
       ''/contract/bankruptcyReorganize/addbankruptcyinfo.htm?editmode=false'' ||
       chr(38) || ''editmode=false'' || chr(38) || ''projectcode='' || ti.c_projectcode tcmpurl
	from tflowform_hist_var t,tflowinfo tf,tproject_info ti,tsys_user_rights tur,
       tasset_loanaccount_info tli
       where  ti.c_projectcode = tli.c_projectcode(+)
        and ti.c_projectcode=tf.c_projectcode
   and tur.right_flag = ''1''
   and t.c_fieldcode=''isbreakupreorg''
   and t.c_fieldvalue=''1''
   and (tur.trans_code, tur.sub_trans_code) =((''bankruptcyreorganize'', ''addbankruptcyreorganize''))
   and t.process_instanceid = tf.process_instanceid
   and tur.user_id = tf.c_initiator
   and tf.c_flowstatus=''1''
   and not exists (select tbi.c_id from tbankruptcy_info tbi where instr2('','' || (select concatstr(tlia.c_loanaccountcode) lcodes from  tasset_loanaccount_info tlia where tlia.c_projectcode=tf.c_projectcode) || '','' , '','' || tbi.c_loanaccountcode  || '','')>0 and tf.d_endtime < tbi.d_entertime)' where t.C_MSGID='bankruptcyreorganizeNotice';
end if;
end;
/
