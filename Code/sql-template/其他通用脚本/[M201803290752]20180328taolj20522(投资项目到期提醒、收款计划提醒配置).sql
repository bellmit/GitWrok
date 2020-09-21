declare
begin
if not fc_IsDataExists('select count(1) from tsysinfo_msg_config t where t.C_CONFIGCODE =''MSG_INVESTPROJECT_EXPIRES''') then
insert into tsysinfo_msg_config (C_CONFIGCODE, C_CONFIGNAME, C_MSGTITLE, C_MSGCONTENT, C_MSGTYPE, C_URL, C_ISSMS, C_ISEMAIL, C_ISPROTEXT)
values ('MSG_INVESTPROJECT_EXPIRES', '项目到期提醒', '项目到期提醒', '项目【"{projectname}"】将于[{0}]到期，届时请进行相关处理！', '1', '', null, null, null);
end if;

if not fc_IsDataExists('select count(1) from tsysinfo_msg_config t where t.C_CONFIGCODE =''MSG_REPAYPLAN_REMINDER''') then
insert into tsysinfo_msg_config (C_CONFIGCODE, C_CONFIGNAME, C_MSGTITLE, C_MSGCONTENT, C_MSGTYPE, C_URL, C_ISSMS, C_ISEMAIL, C_ISPROTEXT)
values ('MSG_REPAYPLAN_REMINDER', '收款计划提醒', '收款计划提醒', '项目【"{projectname}"】的合同【{0}】的[{1}]的收款计划计划日期已临近，请注意进行收款！', '1', '', null, null, null);
end if;

commit;
end;
/