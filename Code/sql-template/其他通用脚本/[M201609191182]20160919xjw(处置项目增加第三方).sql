update tproject_factor_info t set t.c_ruleid = 'cbms_cz_1' where t.c_factorcode = 'tproject_info_dealtype';

delete from tproject_factor_rule t where t.C_RULEID = 'cbms_cz_1';
insert into tproject_factor_rule (C_RULEID, C_RULENAME, C_EVENTTYPE, C_FUNNAME, C_FUNARGS, C_ISINITEXE, C_TEMPCODE, C_ISUSE, C_ISNOTEXERULE)
values ('cbms_cz_1', '处置项目处置方式为收益权转让，则"第三方"必填', 'change', 'requiredFactor', '''tproject_info_thirdpartyname'',(''.E.'').indexOf(''.''+[tproject_info_dealtype]+''.'')>-1', '3', '', '1', '');

--处置项目增加第三方
insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CZXM_001', 'tproject_info_thirdpartyname', '', '', 21, '0', '0', '0', '', '');


--用印类型占2列
update tflowformdesign t set t.l_colspan = '2' where t.c_fieldname = '印章类型' and t.c_fieldtype = '13';