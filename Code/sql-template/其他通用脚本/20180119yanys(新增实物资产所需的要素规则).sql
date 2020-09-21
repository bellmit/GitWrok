delete from  tproject_factor_rule t where t.c_ruleid='s_tinvest_coll_province_1';
delete from  tproject_factor_rule t where t.c_ruleid='s_tinvest_coll_city_1';
delete from  tproject_factor_rule t where t.c_ruleid='cbms_cz_23';
delete from  tproject_factor_rule t where t.c_ruleid='s_tinvest_coll_isinsuranced_1';

insert into tproject_factor_rule (C_RULEID, C_RULENAME, C_EVENTTYPE, C_FUNNAME, C_FUNARGS, C_ISINITEXE, C_TEMPCODE, C_ISUSE, C_ISNOTEXERULE)
values ('s_tinvest_coll_province_1', '实物资产，省份改变，重新加载城市', 'change', 'changeBaseRule', '[s_tinvest_coll_province],''s_tinvest_coll_city'',''displayField'',''valueField''', '3', null, '1', null);

insert into tproject_factor_rule (C_RULEID, C_RULENAME, C_EVENTTYPE, C_FUNNAME, C_FUNARGS, C_ISINITEXE, C_TEMPCODE, C_ISUSE, C_ISNOTEXERULE)
values ('s_tinvest_coll_city_1', '实物资产城市改变，重新加载地区', 'change', 'changeBaseRule', '[s_tinvest_coll_city],''s_tinvest_coll_area'',''displayField'',''valueField''', '3', null, '1', null);

insert into tproject_factor_rule (C_RULEID, C_RULENAME, C_EVENTTYPE, C_FUNNAME, C_FUNARGS, C_ISINITEXE, C_TEMPCODE, C_ISUSE, C_ISNOTEXERULE)
values ('cbms_cz_23', '处置方式为"以物抵债"时,显示"拟抵债资产信息"要素', 'change', 'visibleFactor', '''tproject_info_realasset'',[tproject_info_dealtype]==''G''', '2', null, '1', null);

insert into tproject_factor_rule (C_RULEID, C_RULENAME, C_EVENTTYPE, C_FUNNAME, C_FUNARGS, C_ISINITEXE, C_TEMPCODE, C_ISUSE, C_ISNOTEXERULE)
values ('s_tinvest_coll_isinsuranced_1', '实物资产是否保险，选择是时显示保险相关要素', 'change', 'visibleFactor', '''s_tinvest_coll_insuranceno,s_tinvest_coll_insurancebalance,s_tinvest_coll_insurancesituation,s_tinvest_coll_insuranceenddate,s_tinvest_coll_insurancecompany'',[s_tinvest_coll_isinsuranced]==''1''', '2', null, '1', null);


