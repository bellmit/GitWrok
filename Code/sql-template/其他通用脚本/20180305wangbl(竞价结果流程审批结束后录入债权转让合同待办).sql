declare
begin
if  not fc_IsDataExists('select count(*) from tsysinfo_msg_pro t where t.c_msgid=''zqzr_1''') then
insert into tsysinfo_msg_pro (C_MSGID, C_MSGTYPE, C_ISPROJECTROLE, C_ISUSE, C_SQL, MEMO, C_MSGNAME, C_MSGURL, TRANS_CODE, SUB_TRANS_CODE, C_ISSENDEMAIL, C_SYSTEM)
values ('zqzr_1', '2', '0', '1', 'select  i.c_projectcode,
       i.c_dptid,
       tu.user_id userid,
       tu.*,
       (i.d_lastupdatetime - to_date(''1970-01-01'',''yyyy-mm-dd'') - 8 / 24) *
       86400000 senddate,
       ''新增债权转让合同待办'' msgtitle,
       ''['' || i.c_projectcode || '':'' ||
       nvl(i.c_projectshortname, i.c_projectname) || '']需新增债权转让合同，请尽快处理！'' msgcontent,
       ''/contract/newcontract/commonAddContract.htm?querymode=query_insert''||to_char(''&'')||''editmode=add''||to_char(''&'')||''factorflag=6''||to_char(''&'')||''common_contract_type=4''||to_char(''&'')||''tempcode=ZQZR_001''||to_char(''&'')||''dict_code=ZQZR_001''||to_char(''&'')||''projectcode=''
       ||i.c_projectcode ||to_char(''&'')||''projectname=''||i.c_projectname||to_char(''&'')|| ''bidresultid='' || tri.c_resultid ||to_char(''&'')||''fromwhere=db''  tcmpurl
  from tproject_info i,tbidding_result_info tri, tflowinfo t,tsys_user_rights tu
 where i.c_projectcode = t.c_projectcode
   and i.c_projectcode = tri.c_projectcode
   and t.c_initiator = tu.user_id
   and t.process_instanceid like ''biddingresultInfoApproval%''
   and t.c_flowstatus = ''1''
   and tri.c_biddingresultstatus =''05''
   and tu.right_flag = ''1''
   and nvl(i.c_rejecttype, ''0'') <> ''1''
   and (exists (select 1
           from vuser_projectrightlist up
          where up.user_id = tu.user_id
            and up.c_projectcode = i.c_projectcode))
   and (tu.trans_code, tu.sub_trans_code) =
       ((''contractManager'', ''addContract''))
   and not exists(select 1 from tinvest_contract tic where tic.c_projectcode = i.c_projectcode and tic.c_investtype=''50'')', '新增债权转让合同待办', '新增债权转让合同待办', null, null, null, null, null);
end if;

if  fc_IsDataExists('select count(*) from tsysinfo_msg_pro t where t.c_msgid=''zqzr_1''') then
	update tsysinfo_msg_pro t set t.C_SQL='select  distinct i.c_projectcode,
       i.c_dptid,
       tu.user_id userid,
       tu.*,
       (i.d_lastupdatetime - to_date(''1970-01-01'',''yyyy-mm-dd'') - 8 / 24) *
       86400000 senddate,
       ''新增债权转让合同待办'' msgtitle,
       ''['' || i.c_projectcode || '':'' ||
       nvl(i.c_projectshortname, i.c_projectname) || '']需新增债权转让合同，请尽快处理！'' msgcontent,
       ''/contract/newcontract/commonAddContract.htm?querymode=query_insert''||to_char(''&'')||''editmode=add''||to_char(''&'')||''factorflag=6''||to_char(''&'')||''common_contract_type=4''||to_char(''&'')||''tempcode=SYQZR_001''||to_char(''&'')||''dict_code=SYQZR_001''||to_char(''&'')||''projectcode=''
       ||i.c_projectcode ||to_char(''&'')||''projectname=''||i.c_projectname||to_char(''&'')|| ''bidresultid='' || tri.c_resultid ||to_char(''&'')|| ''fromwhere=db''  tcmpurl
  from tproject_info i,tbidding_result_info tri, tflowinfo t,tsys_user_rights tu
 where i.c_projectcode = t.c_projectcode
   and i.c_projectcode = tri.c_projectcode
   and t.c_initiator = tu.user_id
   and t.process_instanceid like ''biddingresultInfoApproval%''
   and t.c_flowstatus = ''1''
   and tri.c_biddingresultstatus =''05''
   and tri.c_transresult=''1''
   and tu.right_flag = ''1''
   and nvl(i.c_rejecttype, ''0'') <> ''1''
   and (exists (select 1
           from vuser_projectrightlist up
          where up.user_id = tu.user_id
            and up.c_projectcode = i.c_projectcode))
   and (tu.trans_code, tu.sub_trans_code) =
       ((''contractManager'', ''addContract''))
   and not exists(select 1 from tinvest_contract tic where tic.c_projectcode = i.c_projectcode and tic.c_investtype=''51'')' where t.C_MSGID='zqzr_1';
end if;

end;
/
