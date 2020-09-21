declare
begin

if not fc_isexistsprojectfactorinfo('tproject_info_extfield30') then
  insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('tproject_info_extfield30', '审批事项类型', '1', '基本信息', '11', '基本信息', null, 'tproject_info', 'extfield30', '0', '1', '6', 'PM_APPROVAL_TYPE', 5, 200, 18, 1, 1, 9, '1', '0', null, '1', '1', '1', 'tproject_info_extfield30', null, '0', null, null, null, null);
end if;

end;
/