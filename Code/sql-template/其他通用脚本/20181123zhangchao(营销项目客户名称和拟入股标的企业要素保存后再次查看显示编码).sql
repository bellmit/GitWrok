update tproject_factor_info t
   set t.c_factorsqlval = 'select t.c_customername factorvalue from tcustomer_info t,tcustomer_role_relation tr where t.c_customercode = tr.c_customercode and  tr.c_relationcode=''{mpcclientname}''
union all
select t.c_customername factorvalue from tcustomer_info t where t.c_customercode = ''{mpcclientname}'''
 where t.c_factorcode = 'mpcclientname';
 
update tproject_factor_info t
   set t.c_factorsqlval = 'select t.c_customername factorvalue from tcustomer_info t,tcustomer_role_relation tr where t.c_customercode = tr.c_customercode and  tr.c_relationcode=''{mpcstockcompany}''
union all
select t.c_customername factorvalue from tcustomer_info t where t.c_customercode = ''{mpcstockcompany}'''
 where t.c_factorcode = 'mpcstockcompany';