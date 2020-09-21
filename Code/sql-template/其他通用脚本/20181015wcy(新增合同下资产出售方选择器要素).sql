declare
begin
if not fc_IsExistsProjectFactorInfo('tinvest_contract_assetseller2')then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND, C_ISUSE, C_EMPTYTEXT, C_VIEWTRACEMODE)
values ('tinvest_contract_assetseller2', '资产出售方', '106', '资产出售方信息', '106', '资产出售方信息', '存储字段:c_rivalid;干系人选择器', 'tinvest_contract', 'transferor', '0', null, '7', 'customerSelector(''{fieldid}'',''0'',''25'')', 255, 200, 18, 1, 1, 43, '1', '0', null, '1', '1', '6', 'tinvest_contract_assetseller2', null, '0', 'select t.c_customername factorvalue from tcustomer_info t,tcustomer_role_relation tt where t.c_customercode = tt.c_customercode and tt.c_relationcode= ''{tinvest_contract_assetseller2}''', null, null, null, null, '1', null, null);
end if;
end;
/
