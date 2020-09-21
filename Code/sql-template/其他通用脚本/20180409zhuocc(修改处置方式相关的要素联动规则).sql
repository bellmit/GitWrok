update tproject_factor_rule t set t.c_funargs='''tproject_info_thirdpartyname'',('',''+[tproject_info_dealtype]+'','').indexOf('',21,'')>-1' where t.c_ruleid='cbms_cz_1';
update tproject_factor_rule t set t.c_funargs='''tproject_info_publictranstype'',('',''+[tproject_info_dealtype]+'','').indexOf('',27,'')>-1' where t.c_ruleid='cbms_cz_2';
update tproject_factor_rule t set t.c_funargs='''tproject_info_realasset'',('',''+[tproject_info_dealtype]+'','').indexOf('',G,'')>-1' where t.c_ruleid='cbms_cz_23';
update tproject_factor_info t set t.c_valuebound='projectSelector(''{fieldid}'',''projectnature=01'||chr(38)||'isProjectNatureReadonly=1'',null)' where t.c_factorcode='s_tinvest_coll_projectcode';
