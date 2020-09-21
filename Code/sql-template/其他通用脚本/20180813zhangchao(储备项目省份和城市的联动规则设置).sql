
insert into tproject_factor_rule (C_RULEID, C_RULENAME, C_EVENTTYPE, C_FUNNAME, C_FUNARGS, C_ISINITEXE, C_TEMPCODE, C_ISUSE, C_ISNOTEXERULE)
values ('store_provence_city', '省份改变，重新加载城市', 'change', 'changeBaseRule', '[storeprojectprovince],''storeprojectcity'',''displayField'',''valueField''', '2', null, '1', null);

update tproject_factor_info t set t.c_ruleid = 'store_provence_city' where t.c_factorcode = 'storeprojectprovince';

