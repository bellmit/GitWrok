--[201712240017]20180109shiph22854处置项目立项、可研审批单需要新增4个项目要素：项目评估情况、处置风险及应对措施、预计处置费用及收益、其他说明事情
declare
begin

if not fc_IsExistsProjectFactorInfo('tproject_info_project_evaluation') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('tproject_info_project_evaluation', '项目评估情况', '1', '基本信息', '11', '基本信息', null, 'tproject_info_detail', 'projectevaluation', '0', null, '3', null, 3000, 600, 8, 1, 2, 17, '1', '0', null, '1', '2', '1', 'tproject_info_project_evaluation', null, '0', null, null, null, null);
end if;

if not fc_IsExistsProjectFactorInfo('tproject_info_risk_solution') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('tproject_info_risk_solution', '处置风险及应对措施', '1', '基本信息', '11', '基本信息', null, 'tproject_info_detail', 'risksolution', '0', null, '3', null, 3000, 600, 8, 1, 2, 18, '1', '0', null, '1', '2', '1', 'tproject_info_risk_solution', null, '0', null, null, null, null);
end if;

if not fc_IsExistsProjectFactorInfo('tproject_info_cost_and_profit') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('tproject_info_cost_and_profit', '预计处置费用及收益', '1', '基本信息', '11', '基本信息', null, 'tproject_info_detail', 'costandprofit', '0', null, '3', null, 3000, 600, 8, 1, 2, 19, '1', '0', null, '1', '2', '1', 'tproject_info_cost_and_profit', null, '0', null, null, null, null);
end if;

if not fc_IsExistsProjectFactorInfo('tproject_info_other_memo') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('tproject_info_other_memo', '其他说明事情', '1', '基本信息', '11', '基本信息', null, 'tproject_info_detail', 'othermemo', '0', null, '3', null, 3000, 600, 8, 1, 2, 20, '1', '0', null, '1', '2', '1', 'tproject_info_other_memo', null, '0', null, null, null, null);
end if;

end;
/