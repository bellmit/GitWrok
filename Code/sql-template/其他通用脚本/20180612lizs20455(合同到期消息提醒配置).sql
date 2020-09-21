declare
begin
if not fc_IsDataExists('select count(*) from tsysinfo_msg_config t where t.C_CONFIGCODE =''MSG_CONTRACT_EXPORED''') then
insert into tsysinfo_msg_config (C_CONFIGCODE, C_CONFIGNAME, C_MSGTITLE, C_MSGCONTENT, C_MSGTYPE, C_URL, C_ISSMS, C_ISEMAIL, C_ISPROTEXT)
values ('MSG_CONTRACT_EXPORED', '合同到期提醒', '合同到期提醒', '合同到期提醒', '4', '', null, null, null);
end if;
commit;
end;
/