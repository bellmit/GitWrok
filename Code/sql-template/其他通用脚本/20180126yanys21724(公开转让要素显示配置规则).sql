
delete tproject_factor_rule r  where r.c_ruleid='cbms_cz_2';
insert into tproject_factor_rule (C_RULEID, C_RULENAME, C_EVENTTYPE, C_FUNNAME, C_FUNARGS, C_ISINITEXE, C_TEMPCODE, C_ISUSE, C_ISNOTEXERULE)
values ('cbms_cz_2', '处置方式为"公开转让"时,显示"公开转让方式"要素', 'change', 'visibleFactor', '''tproject_info_publictranstype'',[tproject_info_dealtype]==''27''', '2', null, '1', null);

