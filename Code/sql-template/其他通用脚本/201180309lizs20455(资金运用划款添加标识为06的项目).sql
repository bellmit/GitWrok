declare
begin
if not fc_IsDataExists('select count(*) from tcapital_transfer_config t where t.c_transtype =''5'' and t.c_intrustflag =''06'' and t.process_id =''capitalUse''   and t.c_outagent = ''AIM''') then
insert into tcapital_transfer_config (C_TRANSTYPE, PROCESS_ID, C_DEMO, C_INTRUSTFLAG, PROCESS_NODEID, C_ISNEEDMIDDLEACCO, C_TRANSTYPEDETAIL, C_BUSINFLAG, C_ISFIRST, C_OUTAGENT, C_BUSINFLAG_DETAIL)
values ('5', 'capitalUse', '资金运用划款指令', '06', '交易员复核,投资主办审核,交易主管审批,交易总监审批,风险管理部审批,划款指令出具,划款指令复核,划款指令复核_,账务处理,项目经理确认', null, null, null, '0', 'AIM', null);
end if;
end;
/

