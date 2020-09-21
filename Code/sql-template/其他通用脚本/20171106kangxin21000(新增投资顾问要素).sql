declare
begin
if not fc_IsExistsProjectFactorInfo('tproject_info_investadviser') then

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('tproject_info_investadviser', '投资顾问', '93', '资金来源', '1', '投资顾问', null, 'tproject_info', 'investadviser1', '0', null, '7', 'customerSelector(''{fieldid}'',''0'',''33'',null)', 300, 200, 18, 1, 1, 8, '1', '0', null, '1', '1', '1', 'tproject_info_investadviser', null, '0', 'select c.c_customername as factorvalue from tcustomer_role_relation t,tcustomer_info c where t.c_relationcode = ''{tproject_info_investadviser}'' and t.c_customerrole = ''33'' and t.c_customercode = c.c_customercode', null, null, null);

end if;
end;
/
