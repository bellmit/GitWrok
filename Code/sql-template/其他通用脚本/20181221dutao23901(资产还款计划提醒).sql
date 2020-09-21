declare
begin

if not fc_IsDataExists('select count(1) from tsysinfo_msg_config t where t.C_CONFIGCODE =''MSG_ASSETREPAYPLAN_REMINDER''') then
  insert into tsysinfo_msg_config (C_CONFIGCODE, C_CONFIGNAME, C_MSGTITLE, C_MSGCONTENT, C_MSGTYPE, C_URL, C_ISSMS, C_ISEMAIL, C_ISPROTEXT)
  values ('MSG_ASSETREPAYPLAN_REMINDER', '还款计划提醒', '还款计划提醒', '项目【"{projectname}"】的资产【{0}】的[{1}]的还款计划日期已临近，请注意进行处理！', '1', '', null, null, null);
end if;

commit;
end;
/