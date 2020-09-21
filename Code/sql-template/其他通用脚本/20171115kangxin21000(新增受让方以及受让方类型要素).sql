
declare
begin

if not fc_IsExistsProjectFactorInfo('tinvest_contract-transferee') then

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('tinvest_contract-transferee', '受让方', '1', '基本信息', '11', '基本信息', null, 'tinvest_contract', 'rivalid', '0', null, '7', 'customerFundSelector(''{fieldid}'','''',''10'',getCustomercode,'''','''',''受让方 '')', 255, 200, 18, 1, 1, 27, '1', '0', null, '1', '1', '6', 'tinvest_contract-transferee', null, '0', 'select t.c_customername factorvalue from tcustomer_info t where t.c_customercode = ''{tinvest_contract-transferee}''
union 
select t.c_projectname factorvalue from tproject_info t  where t.c_projectcode = ''{tinvest_contract-transferee}'' and t.c_projectnature = ''99''', null, null, null);

end if;


if not fc_IsExistsProjectFactorInfo('tinvest_contract_customertype') then

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('tinvest_contract_customertype', '受让方类型', '1', '基本信息', '11', '基本信息', null, 'tinvest_contract', 'customertype', '0', '0', '20', null, 2, 250, 18, 1, 1, 0, '1', '0', null, '1', '1', '6', 'tinvest_contract_customertype', null, '0', null, null, null, null);

end if;

end;
/