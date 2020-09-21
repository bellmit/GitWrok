
declare
begin
if not fc_isexistsprojectfactorinfo('tinvest_contract_assetseller') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tinvest_contract_assetseller', '资产出售方', '106', '资产出售方信息', '106', '资产出售方信息', null, 'tinvest_contract', 'transferor', '0', null, '5', null, 255, 200, 18, 1, 1, 27, '1', '0', null, '1', '1', '6', 'tinvest_contract_assetseller', null, '0', null, null, null, null, null);
end if;

if fc_isexistsprojectfactorinfo('tproject_info_assetseller') then
	update tproject_factor_info t set t.l_fieldwidth = '400',t.l_colspan = '2',t.c_factorsqlval = 'select wm_concat(c.c_customername) as factorvalue
  from tcustomer_role_relation t, tcustomer_info c
 where t.c_relationcode in   (''{tproject_info_assetseller}'')
   and t.c_customerrole = ''25''
   and t.c_customercode = c.c_customercode',
    t.c_valuebound = 'customerSelector(''{fieldid}'',''2'',''25'',null,''cbmsassetseller'','''')'
	 where t.c_factorcode = 'tproject_info_assetseller';
end if;
end;
/

