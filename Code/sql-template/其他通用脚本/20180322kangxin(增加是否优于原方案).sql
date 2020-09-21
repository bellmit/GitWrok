declare
begin
if not fc_isexistsprojectfactorinfo('tproject_info_isbettercompany') then
	insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('tproject_info_isbettercompany', '是否优于原方案', '5', '提案信息', '15', '提案信息', null, 'tproject_info', 'isbettercompany', '0', null, '6', 'YES_OR_NO', 255, 200, 18, 1, 1, 15, '1', '0', null, '1', '1', '1', 'tproject_info_isbettercompany', null, '0', null, null, null, null);
end if;

end;
/