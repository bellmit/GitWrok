declare
begin

if  not fc_IsDataExists('select count(*) from tsysinfo_msg_pro t where t.c_msgid=''bidInfoNotice''') then
insert into tsysinfo_msg_pro (C_MSGID, C_MSGTYPE, C_ISPROJECTROLE, C_ISUSE, C_SQL, MEMO, C_MSGNAME, C_MSGURL, TRANS_CODE, SUB_TRANS_CODE, C_ISSENDEMAIL, C_SYSTEM)
values ('bidInfoNotice', '2', '0', '1', 'select distinct ti.c_projectcode,ti.c_dptid,tur.user_id userid,(sysdate -
       to_date(''1970-01-01'', ''yyyy-mm-dd'') - 8 / 24) * 86400000 senddate,''竞价结果录入提醒'' msgtitle,
       ''项目名称['' || ti.c_projectname ||
       '']挂牌信息(非淘宝)竞价结果待录入，请尽快处理！'' msgcontent,
       ''/pm/handleproject/hangout/biddingresultinfomanager.htm?listingid='' || tli.c_listingid ||
       chr(38) || ''projectcode='' || ti.c_projectcode tcmpurl
       from tflowform_hist_var t,tflowinfo tf,tproject_info ti,tsys_user_rights tur,tproject_listing_info tli
       where   ti.c_projectcode=tf.c_projectcode
   and tur.right_flag = ''1''
   and t.c_fieldcode=''auctionDate''
   and sysdate >= (to_date(t.c_fieldvalue,''yyyy-mm-dd HH24:MI:ss'')+3)
   and (tur.trans_code, tur.sub_trans_code) =((''handleproject'', ''biddingresult''))
   and t.process_instanceid = tf.process_instanceid
   and t.process_instanceid = tli.c_processinstanceid
   and tur.user_id = tf.c_initiator
   and not exists (select tri.c_resultid  from tbidding_result_info tri where tri.c_listingid=tli.c_listingid)
   and tf.c_flowstatus=''1''', '竞价结果录入提醒(非淘宝)', '竞价结果录入提醒', null, null, null, '1', '1');
end if;
if  fc_IsDataExists('select count(*) from tsysinfo_msg_pro t where t.c_msgid=''bidInfoNotice''') then
	update tsysinfo_msg_pro t set t.C_SQL='select distinct ti.c_projectcode,ti.c_dptid,tur.user_id userid,(sysdate -
       to_date(''1970-01-01'', ''yyyy-mm-dd'') - 8 / 24) * 86400000 senddate,''竞价结果录入提醒'' msgtitle,
       ''项目名称['' || ti.c_projectname ||
       '']挂牌信息(非淘宝)竞价结果待录入，请尽快处理！'' msgcontent,
       ''/pm/handleproject/hangout/biddingresultinfomanager.htm?listingid='' || tli.c_listingid ||
       chr(38) || ''projectcode='' || ti.c_projectcode tcmpurl
       from tflowform_hist_var t,tflowinfo tf,tproject_info ti,tsys_user_rights tur,tproject_listing_info tli
       where   ti.c_projectcode=tf.c_projectcode
   and tur.right_flag = ''1''
   and t.c_fieldcode=''auctionDate''
   and sysdate >= (to_date(t.c_fieldvalue,''yyyy-mm-dd HH24:MI:ss'')+3)
   and (tur.trans_code, tur.sub_trans_code) =((''handleproject'', ''biddingresult''))
   and t.process_instanceid = tf.process_instanceid
   and t.process_instanceid = tli.c_processinstanceid
   and tur.user_id = tf.c_initiator
   and not exists (select tri.c_resultid  from tbidding_result_info tri where tri.c_listingid=tli.c_listingid)
   and tf.c_flowstatus=''1''' where t.C_MSGID='bidInfoNotice';
end if;

if  not fc_IsDataExists('select count(*) from tsysinfo_msg_pro t where t.c_msgid=''bidInfoNoticeCommon''') then
insert into tsysinfo_msg_pro (C_MSGID, C_MSGTYPE, C_ISPROJECTROLE, C_ISUSE, C_SQL, MEMO, C_MSGNAME, C_MSGURL, TRANS_CODE, SUB_TRANS_CODE, C_ISSENDEMAIL, C_SYSTEM)
values ('bidInfoNoticeCommon', '2', '0', '1', ' select distinct ti.c_projectcode,ti.c_dptid,tur.user_id userid,(sysdate -
       to_date(''1970-01-01'', ''yyyy-mm-dd'') - 8 / 24) * 86400000 senddate,''竞价结果录入提醒'' msgtitle,
       ''项目名称['' || ti.c_projectname ||
       '']挂牌信息(淘宝)竞价结果待录入，请尽快处理！'' msgcontent,
       ''/pm/handleproject/hangout/biddingresultinfomanager.htm?listingid='' ||
        t.c_listingid || chr(38) || ''projectcode='' || ti.c_projectcode tcmpurl
       from tproject_listing_info t,tflowinfo tf,tproject_info ti,tsys_user_rights tur
       where  ti.c_projectcode = t.c_projectcode
        and ti.c_projectcode=tf.c_projectcode
   and tur.right_flag = ''1''
   and (tur.trans_code, tur.sub_trans_code) =((''handleproject'', ''biddingresult''))
   and t.c_processinstanceid = tf.process_instanceid
   and tur.user_id = tf.c_initiator
   and t.c_listingstatus=''05''
   and not exists (select tri.c_resultid  from tbidding_result_info tri where tri.c_listingid=t.c_listingid)
   and sysdate >= (t.d_starttime + 7)', '竞价结果录入提醒', '竞价结果录入提醒(非淘宝)', null, null, null, '1', '1');
end if;

if  fc_IsDataExists('select count(*) from tsysinfo_msg_pro t where t.c_msgid=''bidInfoNoticeCommon''') then
update tsysinfo_msg_pro t set t.C_SQL='select distinct ti.c_projectcode,ti.c_dptid,tur.user_id userid,(sysdate -
       to_date(''1970-01-01'', ''yyyy-mm-dd'') - 8 / 24) * 86400000 senddate,''竞价结果录入提醒'' msgtitle,
       ''项目名称['' || ti.c_projectname ||
       '']挂牌信息(淘宝)竞价结果待录入，请尽快处理！'' msgcontent,
       ''/pm/handleproject/hangout/biddingresultinfomanager.htm?listingid='' ||
        t.c_listingid || chr(38) || ''projectcode='' || ti.c_projectcode tcmpurl
       from tproject_listing_info t,tflowinfo tf,tproject_info ti,tsys_user_rights tur
       where  ti.c_projectcode = t.c_projectcode
        and ti.c_projectcode=tf.c_projectcode
   and tur.right_flag = ''1''
   and (tur.trans_code, tur.sub_trans_code) =((''handleproject'', ''biddingresult''))
   and t.c_processinstanceid = tf.process_instanceid
   and tur.user_id = tf.c_initiator
   and t.c_listingstatus=''05''
   and not exists (select tri.c_resultid  from tbidding_result_info tri where tri.c_listingid=t.c_listingid)
   and sysdate >= (t.d_starttime + 7)' where t.C_MSGID='bidInfoNoticeCommon';
end if;

end;
/
