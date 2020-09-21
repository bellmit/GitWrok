declare
begin
if not fc_IsExistsProjectFactorInfo('tproject_info_amc_businesstype')then
     insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND, C_ISUSE, C_EMPTYTEXT)
values ('tproject_info_amc_businesstype', '业务分类编码', '1', '基本信息', '1', '基本信息', '与业务分类要素组合使用', 'tproject_info_amc', 'businesstype', '0', null, '20', null, 100, 200, 18, 1, 1, 7, '1', '0', null, '1', '8', '1', 'tproject_info_amc_businesstype', null, '0', null, null, null, null, null, '1', null);
end if;
if fc_isdataexists('SELECT count(*) from tproject_factor_info t WHERE t.c_factorcode=''tproject_info_amc_businesstype'' and (t.c_fieldtype=''1'' or t.c_copyfromfactor=''tinvest_contract_assuresituation'') ') then
     update tproject_factor_info t set t.c_fieldtype='20',t.c_copyfromfactor='tproject_info_amc_businesstype' WHERE t.c_factorcode='tproject_info_amc_businesstype' ;
end if; 
commit;
end;
/
