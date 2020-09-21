declare
begin

if  not fc_IsExistsProjectFactorInfo('tproject_info_fundruntype') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND, C_ISUSE, C_EMPTYTEXT)
values ('tproject_info_fundruntype', '运作模式', '1', '基本信息', '11', '基本信息', null, 'tproject_info', 'runtype', '0', null, '6', 'FUND_RUN_TYPE', 2, 254, 18, 1, 1, 15, '1', '0', null, '1', '1', '60', 'tproject_info_fundruntype', null, '0', null, null, null, null, null, '1', null);
end if;
end;
/
