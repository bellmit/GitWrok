--项目变更流程不需要复核
update tsys_parameter t set t.param_value = '1' where t.param_code = 'isModifyProinfoTimely';