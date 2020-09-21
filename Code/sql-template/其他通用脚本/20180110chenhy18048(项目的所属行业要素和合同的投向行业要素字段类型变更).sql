--修改项目要素和合同要素的字段类型
update tproject_factor_info t set t.c_fieldtype = '17'
 where t.c_factorcode in ('tinvest_contract-industry', 'tproject_info_investindustry');