declare
begin
if not fc_IsExistsProjectFactorInfo('tasset_creditorcontract_currency') then 
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('tasset_creditorcontract_currency', '币种', '1', '基本信息', '11', '基本信息', null, 'tasset_creditorcontract', 'cykind', '0', null, '6', 'MONEYTYPE', 255, 200, 18, 1, 1, 12, '1', '0', null, '1', '1', '13', null, null, '0', null, null, null, null);
end if;
end;
/