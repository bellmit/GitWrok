declare
begin

if not fc_isexistsprojectfactorinfo('tinvestcontract_printedinformation') then
  insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND, C_ISUSE, C_EMPTYTEXT, C_VIEWTRACEMODE)
values ('tinvestcontract_printedinformation', '用印信息', '4', '用印信息', '1', '用印信息', null, 'tinvestcontract_printedinfo', null, '0', null, '21', '/contract/newcontract/printedInformation.htm', 99999, 200, 300, 1, 2, 1, '1', '0', null, '1', '7', '6', 'tinvestcontract_printedinfo', null, '0', null, 'printedInformationManager.savePrintedInfoGrid(:map)', null, null, null, '1', null, '1');
end if;

end;
/
