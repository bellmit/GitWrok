update tproject_factor_info t
   set t.c_factorsqlval = 'select t.c_investbound as factorvalue from tproject_info t where t.c_projectcode=''{maintablekey}'''
   where t.c_factorcode='tproject_info_object' and t.c_fieldtype='21';

update tsys_parameter t set t.param_value='1' where t.param_code='mobileModifyflowShowMode';
