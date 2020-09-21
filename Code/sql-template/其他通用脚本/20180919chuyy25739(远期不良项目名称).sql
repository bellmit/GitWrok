begin
if not fc_IsDataExists('select count(*) from tproject_factor_info t where t.C_FACTORCODE = ''tproject_info_amc_longbadprojectcode'' ') then
   insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND, C_ISUSE, C_EMPTYTEXT)
values ('tproject_info_amc_longbadprojectcode', '远期不良项目名称', '1', '基本信息', '11', '基本信息', null, 'tproject_info_amc', 'longbadprojectcode', '0', null, '7', 'setProject(''{fieldid}'',selectProject)', 255, 250, 18, 1, 1, 1, '1', '0', null, '1', '8', '1', 'tproject_info_amc_longbadprojectcode', null, '0', 'SELECT a.c_projectname as factorvalue from tproject_info a WHERE a.c_projectcode=''{tproject_info_amc_longbadprojectcode}''', null, null, null, null, '1', null);
end if;
end ;
/
