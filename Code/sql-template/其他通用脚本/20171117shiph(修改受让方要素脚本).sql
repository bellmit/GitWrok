declare
begin

if fc_IsExistsProjectFactorInfo('tinvest_contract-transferee') then

update tproject_factor_info set C_VALUEBOUND = 'customerFundSelector(''{fieldid}'','''',''10'',getCustomercode,'''','''',''受让方'')' where C_FACTORCODE = 'tinvest_contract-transferee';
end if;

end;
/