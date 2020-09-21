declare
begin

if not fc_isexistsprojectfactorinfo('tproject_info_assetseller2') then
  insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND, C_ISUSE, C_EMPTYTEXT, C_VIEWTRACEMODE)
values ('tproject_info_assetseller2', '拟收购股权', '30', '拟收购股权', '1', '拟收购股权', null, 'tproject_info_assetseller2', null, '0', null, '21', '/pm/project/projectAcquisitionOfEquity.htm', 99999, 200, 300, 1, 2, 1, '1', '0', null, '1', '7', '1', 'tproject_info_assetseller2', null, '0', null, 'projectInvestTargetManager.saveProjectEquityInfoGrid(:map)', null, null, null, '1', null, '1');
end if;

end;
/