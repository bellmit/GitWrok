--增加承做部门和发起行的选择器类型要素
declare
begin
if not fc_IsExistsProjectFactorInfo('tproject_info_org') then 
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND, C_ISUSE, C_EMPTYTEXT)
values ('tproject_info_org', '承做部门(选择器)', '1', '基本信息', '11', '基本信息', '', 'tproject_info', 'depcode', '0', '{user_dptid}', '30', '/bizframe/selector/orgTargetSelector.htm?1=1', 255, 250, 18, 1, 1, 3, '1', '0', '', '1', '1', '1', 'tproject_info_org', '', '0', 'select concatstr(t.org_name) as factorvalue from tsys_organization t where t.org_id in (''{tproject_info_org}'') ', '', '', '', '', '1', '');
end if;

if not fc_IsExistsProjectFactorInfo('tproject_info_businessbank') then 
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND, C_ISUSE, C_EMPTYTEXT)
values ('tproject_info_businessbank', '业务发起行(选择器)', '1', '基本信息', '11', '基本信息', '', 'tproject_info_amc', 'servicebank', '0', '{user_dptid}', '30', '/bizframe/selector/orgTargetSelector.htm?1=1', 255, 250, 18, 1, 1, 3, '1', '0', '', '1', '8', '1', 'tproject_info_businessbank', 'tproject_info_businessbank', '0', 'select concatstr(t.org_name) as factorvalue from tsys_organization t where t.org_id in (''{tproject_info_businessbank}'') ', '', '', '', '', '1', '');
end if;



end;
/