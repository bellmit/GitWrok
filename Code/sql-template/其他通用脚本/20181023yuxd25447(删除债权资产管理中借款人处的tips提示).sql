declare
begin
if fc_IsDataExists('select count(*) from tproject_factor_info t where t.c_factorcode=''tasset_creditorcontract_loanaccountcode'' and t.c_tips is not null') then
	update tproject_factor_info t set t.c_tips= null where t.c_factorcode='tasset_creditorcontract_loanaccountcode';
end if;
end;
/