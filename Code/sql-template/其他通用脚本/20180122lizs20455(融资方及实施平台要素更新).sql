declare
begin
if  fc_IsExistsProjectFactorInfo('tinvest_contract_financing') then 
update tproject_factor_info t set t.c_factorsqlval ='select c.c_customername as factorvalue from tcustomer_role_relation t,tcustomer_info c where t.c_relationcode = ''{tinvest_contract_financing}'' and t.c_customerrole = ''11'' and t.c_customercode = c.c_customercode' where t.c_factorcode='tinvest_contract_financing' and t.c_factorflag='6'; 
end if;
if  fc_IsExistsProjectFactorInfo('tinvest_contract_rivalname_yqbl') then 
update tproject_factor_info t set t.c_factorsqlval ='select t.c_customername factorvalue from tcustomer_info t,tcustomer_role_relation tt where t.c_customercode = tt.c_customercode and tt.c_relationcode = ''{tinvest_contract_rivalname_yqbl}''' where t.c_factorcode='tinvest_contract_rivalname_yqbl' and t.c_factorflag='6'; 
end if;
end;
/