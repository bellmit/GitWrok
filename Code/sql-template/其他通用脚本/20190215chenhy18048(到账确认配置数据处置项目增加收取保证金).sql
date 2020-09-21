declare
begin
if not fc_IsDataExists('select count(*) from trepay_confirm_config t where t.L_ID = ''62''') then
	insert into trepay_confirm_config (L_ID, C_PROJECT_TYPE, C_RISK_TYPE, C_PROJECT_BUSITYPE, C_REPAY_TYPE, C_FORM_TYPE, C_ISLOAN, C_ISITEM, C_CONTRACT_TYPE, C_CONTRACT_REQUIRED, C_REPAY_PLAN, C_ISPROJECT, C_TRADE_STRUCTURE, C_FUND_SOURCE, C_BUSICLASSIFICATION)
values (62, '90', '', '', '22080', '9', '0', '0', '0', '0', '0', '0', '0', '0', null);
end if;
end;
/