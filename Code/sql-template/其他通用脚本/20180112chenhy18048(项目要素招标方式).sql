declare
begin
if not fc_IsDataExists('select count(*) from tproject_factor_info t where t.C_FACTORCODE = ''tproject_info_tenderingmanner''') then
	insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('tproject_info_tenderingmanner', '招标方式', '2', '出售方招标信息', '12', '资产包招标信息', '', 'tproject_info', 'tenderingmanner', '0', '', '6', 'TENDERING_MANNER', 2, 200, 18, 1, 1, 14, '1', '0', '', '1', '1', '1', 'tproject_info_tenderingmanner', '', '0', '', '', '', '');
end if;
end;
/