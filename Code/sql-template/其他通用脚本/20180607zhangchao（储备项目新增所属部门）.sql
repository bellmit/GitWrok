declare
begin
if not fc_IsExistsProjectFactorInfo('storedptid') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('storedptid', '所属部门', '1', '基本信息', '11', '基本信息', null, 'tproject_store_info', 'dptid', '0', '{user_dptid}', '7', 'orgSelector(''{fieldid}'')', 255, 250, 18, 1, 1, 9, '1', '0', null, '1', '1', '3', 'storedptid', null, '0', 'select t.org_name as factorvalue from tsys_organization t where t.org_id=''{storedptid}'' ', null, null, null, null);
end if;
end;
/
