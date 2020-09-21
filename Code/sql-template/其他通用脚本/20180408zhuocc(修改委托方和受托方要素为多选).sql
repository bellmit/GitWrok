update tproject_factor_info t set t.l_maxlength=1000,t.c_valuebound='customerFundSelector(''{fieldid}'',''1'','''',getCustomercode,'''','''',''委托方'','''','''')',t.l_colspan=2,t.c_factorsqlval='select listagg(factorvalue,'','') within group (order by factorvalue) factorvalue from
( select to_char(concatstr(t.c_customername)) factorvalue from tcustomer_info t,tcustomer_role_relation tt where t.c_customercode = tt.c_customercode and tt.c_relationcode in (''{tproject_info_actualCust}'') 
union
select to_char(concatstr(t.c_projectname)) factorvalue from tproject_info t  where  t.c_projectcode in (''{tproject_info_actualCust}'')  and t.c_projectnature = ''99'')' where t.c_factorcode='tproject_info_actualCust';

update tproject_factor_info t set t.l_maxlength=1000,t.c_valuebound='customerFundSelector(''{fieldid}'',''1'',''10'',getCustomercode,'''','''',''受让方'','''','''')',t.l_colspan=2,t.c_factorsqlval='select listagg(factorvalue,'','') within group (order by factorvalue) factorvalue from
(select to_char(concatstr(t.c_customername)) factorvalue from tcustomer_info t,tcustomer_role_relation tt where t.c_customercode = tt.c_customercode and tt.c_relationcode in (''{tproject_info_trustee}'')
union
select to_char(concatstr(t.c_projectname)) factorvalue from tproject_info t  where t.c_projectcode in (''{tproject_info_trustee}'') and t.c_projectnature = ''99'')' where t.c_factorcode='tproject_info_trustee';