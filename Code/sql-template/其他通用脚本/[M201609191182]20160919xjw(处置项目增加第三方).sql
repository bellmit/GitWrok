update tproject_factor_info t set t.c_ruleid = 'cbms_cz_1' where t.c_factorcode = 'tproject_info_dealtype';

delete from tproject_factor_rule t where t.C_RULEID = 'cbms_cz_1';
insert into tproject_factor_rule (C_RULEID, C_RULENAME, C_EVENTTYPE, C_FUNNAME, C_FUNARGS, C_ISINITEXE, C_TEMPCODE, C_ISUSE, C_ISNOTEXERULE)
values ('cbms_cz_1', '������Ŀ���÷�ʽΪ����Ȩת�ã���"������"����', 'change', 'requiredFactor', '''tproject_info_thirdpartyname'',(''.E.'').indexOf(''.''+[tproject_info_dealtype]+''.'')>-1', '3', '', '1', '');

--������Ŀ���ӵ�����
insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CZXM_001', 'tproject_info_thirdpartyname', '', '', 21, '0', '0', '0', '', '');


--��ӡ����ռ2��
update tflowformdesign t set t.l_colspan = '2' where t.c_fieldname = 'ӡ������' and t.c_fieldtype = '13';