update tproject_factor_info t set t.C_ISUSE = '0' where t.C_FACTORCODE = 'storecurrentProblem';
update tproject_factor_info t set t.C_ISUSE = '0' where t.C_FACTORCODE = 'storememo';
update tproject_factor_info t set t.C_ISUSE = '0' where t.C_FACTORCODE = 'storenextStagePlan';