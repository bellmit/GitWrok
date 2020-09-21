declare
begin
if not fc_IsExistsProjectFactorInfo('tinvest_contract_enterprise_code') then 
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND, C_ISUSE, C_EMPTYTEXT)
values ('tinvest_contract_enterprise_code', '投资企业客户号', '1', '基本信息', '1', '基本信息', null, null, null, '0', null, '1', null, 255, 200, 18, 1, 1, 43, '1', '0', null, '1', '1', '6', null, null, '0', 'select ti.c_cino factorvalue from tcustomer_info ti,tcustomer_role_relation trr where ti.c_customercode = trr.c_customercode and trr.c_relationcode=''{tinvest_contract_enterprise}''', null, null, null, null, '1', null);
end if;

if not fc_IsExistsProjectFactorInfo('tinvest_contract_gqtransferor_code') then 
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND, C_ISUSE, C_EMPTYTEXT)
values ('tinvest_contract_gqtransferor_code', '股权转让方客户号', '1', '基本信息', '11', '基本信息', null, null, null, '0', null, '1', null, 255, 200, 18, 1, 1, 27, '1', '0', null, '1', '1', '6', null, null, '0', 'select ti.c_cino factorvalue from tcustomer_info ti,tcustomer_role_relation trr where ti.c_customercode = trr.c_customercode and trr.c_relationcode=''{tinvest_contract_gqtransferor}''', null, null, null, null, '1', null);
end if;

if not fc_IsExistsProjectFactorInfo('tinvest_contract-industrydetail1') then 
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND, C_ISUSE, C_EMPTYTEXT)
values ('tinvest_contract-industrydetail1', '投向行业明细', '1', '基本信息', '11', '基本信息', null, null, null, '0', null, '1', null, 255, 200, 18, 1, 1, 11, '1', '0', null, '1', '1', '6', null, null, '0', 'select ltrim(t.c_dict_name)  as factorvalue from  tsys_dict_tree t where t.c_dict_item_code=(select ti.c_industrydetail factorvalue from tcustomer_info ti,tcustomer_role_relation trr where ti.c_customercode = trr.c_customercode and trr.c_relationcode=''{tinvest_contract_enterprise}'') and t.c_dict_entry_code= ''T0001''', null, null, null, null, '1', null);
end if;

update tproject_factor_info t set t.c_valuebound='customerSelector(''{fieldid}'',''0'',''62'',selectedTransferor)' where t.c_factorcode='tinvest_contract_gqtransferor';

end;
/

