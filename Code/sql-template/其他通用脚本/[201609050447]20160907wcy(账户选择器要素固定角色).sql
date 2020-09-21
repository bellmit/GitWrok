update tproject_factor_info t set t.c_valuebound='customerAccSelector(''4'',''{fieldid}'',selectRivalAccount,'''',''1'')' where t.c_factorcode='tinvest_contract_rivalaccountcode';
update tproject_factor_info t set t.c_valuebound='customerAccSelector(''22'',''{fieldid}'',selectRivalAccount,'''',''1'')' where t.c_factorcode='tinvest_contract-beneficiary';
update tproject_factor_info t set t.c_valuebound='customerAccSelector(''9'',''{fieldid}'',selectRivalAccount,'''',''1'')' where t.c_factorcode='tinvest_contract-supplier';
update tproject_factor_info t set t.c_valuebound='customerAccSelector(''10'',''{fieldid}'',setSellerRelationcode,'''',''1'')' where t.c_factorcode='tinvest_contract-selectseller';
