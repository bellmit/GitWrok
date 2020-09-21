declare
begin
if not fc_IsDataExists('select count(*) from trepay_confirm_config t where t.l_id = ''34''') then
	insert into trepay_confirm_config (L_ID, C_PROJECT_TYPE, C_RISK_TYPE, C_PROJECT_BUSITYPE, C_REPAY_TYPE, C_FORM_TYPE, C_ISLOAN, C_ISITEM, C_CONTRACT_TYPE, C_CONTRACT_REQUIRED, C_REPAY_PLAN, C_ISPROJECT, C_TRADE_STRUCTURE, C_FUND_SOURCE)
values (34, '90', '', '', '22084', '1', '0', '0', '1', '0', '1', '1', '0', '0');
end if;

if not fc_IsDataExists('select count(*) from trepay_confirm_config t where t.l_id = ''35''') then
	insert into trepay_confirm_config (L_ID, C_PROJECT_TYPE, C_RISK_TYPE, C_PROJECT_BUSITYPE, C_REPAY_TYPE, C_FORM_TYPE, C_ISLOAN, C_ISITEM, C_CONTRACT_TYPE, C_CONTRACT_REQUIRED, C_REPAY_PLAN, C_ISPROJECT, C_TRADE_STRUCTURE, C_FUND_SOURCE)
values (35, '90', '', '', '22109', '9', '0', '0', '0', '0', '0', '0', '0', '0');
end if;
end;
/