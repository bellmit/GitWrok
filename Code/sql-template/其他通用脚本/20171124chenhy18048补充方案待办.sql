declare
begin
if not fc_IsDataExists('select count(*) from tsysinfo_msg_pro t where t.C_MSGID = ''amc_18048''') then
	insert into tsysinfo_msg_pro (C_MSGID, C_MSGTYPE, C_ISPROJECTROLE, C_ISUSE, C_SQL, MEMO, C_MSGNAME, C_MSGURL, TRANS_CODE, SUB_TRANS_CODE, C_ISSENDEMAIL, C_SYSTEM)
values ('amc_18048', '2', '1', '1', 'select i.c_projectcode,
       i.c_dptid,
       tu.user_id userid,
       (i.d_lastupdatetime - to_date(''1970-01-01'', ''yyyy-mm-dd'') - 8 / 24) *
       86400000 senddate,
       ''补充方案待办'' msgtitle ,
       ''['' || i.c_projectcode || '':'' ||
       nvl(i.c_projectshortname, i.c_projectname) || '']方案待补充，请尽快处理！'' msgcontent,
       ''/pm/project/projectinfo.htm?editmode=update || chr(38) || projectphase='' ||
       chr(38) || i.c_projectphase || chr(38) || ''parenttabid=assetPacketManagePro'' || chr(38) || ''querymode=query_update'' || chr(38) || ''fromUpdateWin=1 ''|| chr(38) || ''projectcode='' ||
       i.c_projectcode tcmpurl
  from tproject_info i, tsys_user tu
 where nvl(i.c_iscontinuediscuss, 0) = ''1''
   and nvl(i.c_rejecttype, ''0'') <> ''1''
   and tu.user_id in (select ttm.c_membercode
                        from tproject_team_members ttm, tsys_role_user tru
                       where ttm.c_relatedcode = i.c_projectcode
                         and ttm.c_membercode = tru.user_code
                         and tru.role_code = ''0002''
                         )
   and (exists (select 1
           from vuser_projectrightlist up
          where up.user_id = tu.user_id
            and up.c_projectcode = i.c_projectcode))', '补充方案待办', '补充方案待办', '', '', '', '', '');
end if;

if fc_IsDataExists('select count(*) from tsysinfo_msg_pro t where t.C_MSGID = ''amc_18048''') then
	update tsysinfo_msg_pro t set t.c_sql='select i.c_projectcode,
       i.c_dptid,
       tu.user_id userid,
       (i.d_lastupdatetime - to_date(''1970-01-01'', ''yyyy-mm-dd'') - 8 / 24) *
       86400000 senddate,
       ''补充方案待办'' msgtitle ,
       ''['' || i.c_projectcode || '':'' ||
       nvl(i.c_projectshortname, i.c_projectname) || '']方案待补充，请尽快处理！'' msgcontent,
       ''/pm/project/projectinfo.htm?editmode=update'' || chr(38) || ''projectphase='' ||
       chr(38) || i.c_projectphase || chr(38) || ''parenttabid=assetPacketManagePro'' || chr(38) || ''querymode=query_update'' || chr(38) || ''fromUpdateWin=1 ''|| chr(38) || ''projectcode='' ||
       i.c_projectcode tcmpurl
  from tproject_info i, tsys_user tu
 where nvl(i.c_iscontinuediscuss, 0) = ''1''
   and nvl(i.c_rejecttype, ''0'') <> ''1''
   and tu.user_id in (select ttm.c_membercode
                        from tproject_team_members ttm, tsys_role_user tru
                       where ttm.c_relatedcode = i.c_projectcode
                         and ttm.c_membercode = tru.user_code
                         and tru.role_code = ''0002''
                         )
   and (exists (select 1
           from vuser_projectrightlist up
          where up.user_id = tu.user_id
            and up.c_projectcode = i.c_projectcode))' where t.C_MSGID = 'amc_18048';
end if;
end;
/