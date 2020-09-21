declare
begin
if fc_isexistsprojectfactorinfo('tinvest_contract_profitrate') then
	update tproject_factor_info t set t.c_fieldtype = '2' where  t.c_factorcode = 'tinvest_contract_profitrate';
end if;
end;
/