declare
begin
if  fc_IsExistsProjectFactorInfo('tproject_info_creditschedule') then

update tproject_factor_info t set t.c_factorname = '信用措施'where t.c_factorcode = 'tproject_info_creditschedule';

end if;


if not fc_IsExistsProjectFactorInfo('tproject_info_proxyType') then

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('tproject_info_proxyType', '代理类型', '1', '基本信息', '11', '基本信息', null, 'tproject_info', 'proxytype', '0', null, '6', 'PROXY_TYPE', 2, 200, 18, 1, 1, 6, '1', '0', null, '1', '1', '1', 'tproject_info_proxyType', null, '0', null, null, null, null);

end if;


end;
/

