declare
begin

update tproject_factor_info t set t.c_fieldtype='2',l_maxlength='13' WHERE t.c_factorcode='tinvest_contract_gqfe' ;

end;
/