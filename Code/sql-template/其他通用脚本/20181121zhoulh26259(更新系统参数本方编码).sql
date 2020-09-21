update  tsys_parameter t set t.param_value=(select t.param_value from tsys_parameter t where 
t.param_code='companyCode')where t.param_code='ourCompanyCode';
