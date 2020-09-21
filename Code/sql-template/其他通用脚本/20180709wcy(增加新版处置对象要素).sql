declare
begin
if not fc_IsExistsProjectFactorInfo('tproject_info_object_new') then 
	insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_object_new', '处置对象(新)', '2', '处置对象', '11', '处置对象', null, 'tdisposal_objectinfo', null, '0', null, '21', '/pm/handleproject/dealobjectforfactor_new.htm?process_start={process_start}', 3000, 200, 399, 1, 2, 6, '1', '0', null, '1', '7', '1', 'tproject_info_object_new', null, '0', 'select t.c_investbound as factorvalue from tproject_info t where t.c_projectcode=''{maintablekey}''', 'handlProjectManager.saveDisposalObject(:map)', null, null, null);
end if;

end;
/

