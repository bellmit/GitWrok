declare
begin
  if not fc_IsDataExists('select count(*) from tproject_factor_temp t where t.c_tempcode = ''ACCOBANKS''') then
    insert into tproject_factor_temp (C_TEMPCODE, C_TEMPNAME, C_TEMPDESC, C_CREATEUSER, D_CREATETIME, D_UPDATETIME, C_FACTORFLAG, C_DIRECTION, C_UPDATEUSER, C_ISDEFAULT, C_ISPUBLIC, C_ISUSE)
    values ('ACCOBANKS', '�����˻�Ҫ��ģ��', null, 'admin', to_date('19-11-2015 11:05:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-08-2017 10:45:39', 'dd-mm-yyyy hh24:mi:ss'), '19', null, 'admin', '1', '1', '1');

    insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
    values ('ACCOBANKS', 'bankinfo_accoType', 1, '0', '0', '1', null, '�˻�����');

    insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
    values ('ACCOBANKS', 'bankinfo_accobelong', 2, '0', '0', '0', null, '�˻�����');

    insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
    values ('ACCOBANKS', 'bankinfo_accoproperty', 3, '0', '0', '0', null, '�˻�����');

    insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
    values ('ACCOBANKS', 'bankinfo_publicFlg', 4, '0', '0', '0', null, '�Ƿ񹫹��˻�');

    insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
    values ('ACCOBANKS', 'bankinfo_projectCode', 5, '0', '0', '0', null, '��˾/����');

    insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
    values ('ACCOBANKS', 'bankinfo_bankNo', 6, '0', '0', '1', null, '��������');

    insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
    values ('ACCOBANKS', 'bankinfo_bankName_text', 7, '0', '0', '1', null, '������ȫ��');

    insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
    values ('ACCOBANKS', 'bankinfo_bankacco', 8, '0', '0', '1', null, '�����˺�');

    insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
    values ('ACCOBANKS', 'bankinfo_nameInBank', 9, '0', '0', '1', null, '���п�������');

    insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
    select 'ACCOBANKS', 'bankinfo_accoName', 11, '0', '0', '1', t.param_value, '�˻����' from tsys_parameter t where t.param_code = 'companyName';

    insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
    values ('ACCOBANKS', 'bankinfo_remitType', 12, '0', '0', '0', null, '���ʽ');

    insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
    values ('ACCOBANKS', 'bankinfo_bigpaysystemno', 10, '0', '0', '0', null, '���֧����');

    insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
    values ('ACCOBANKS', 'bankinfo_provinceCode', 13, '0', '0', '0', null, '����ʡ��');

    insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
    values ('ACCOBANKS', 'bankinfo_cityNo', 14, '0', '0', '0', null, '��������');

    insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
    values ('ACCOBANKS', 'bankinfo_accountmemo', 15, '0', '0', '0', null, '��ע');
  end if;
end;
/