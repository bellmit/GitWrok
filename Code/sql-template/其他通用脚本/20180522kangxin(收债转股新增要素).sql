declare
begin
if not fc_isexistsprojectfactorinfo('tproject_info_turnstock') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_turnstock', '转股方案', '3', '转股方案', '1', '转股方案', null, 'tproject_info_turnstock', null, '0', null, '21', '/pm/project/projectInvestTargets.htm?turnstock=1', 99999, 200, 300, 1, 2, 1, '1', '0', null, '1', '7', '1', 'tproject_info_turnstock', null, '1', null, 'projectInvestTargetManager.saveProjectTargetInfoGrid(:map)', null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_projectnature_szzg') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_projectnature_szzg', '收债转股项目(09)', '1', '基本信息', '11', '基本信息', '收债转股项目必选', 'tproject_info', 'projectnature', '0', '09', '20', null, 2, 250, 18, 1, 1, 0, '1', '0', null, '1', '1', '1', 'tproject_info_projectnature_szzg', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_submitinvestmoney_2') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_submitinvestmoney_2', '审批总投资金额', '3', '转股方案', '1', '转股方案', '转股方案用', 'tproject_info_amc', 'submitinvestmoney', '0', null, '16', null, 16, 200, 18, 1, 1, 6, '1', '0', null, '1', '8', '1', 'tproject_info_submitinvestmoney_2', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_pshorgno_1') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_pshorgno_1', '债转股合作企业', '3', '转股方案', '1', '转股方案', '转股方案用', 'tproject_info', 'pshorgno', '0', null, '7', 'customerSelector(''{fieldid}'',''0'',''4'',null)', 255, 250, 18, 1, 1, 2, '1', '0', null, '1', '1', '1', 'tproject_info_pshorgno_1', null, '0', 'select t.c_customername factorvalue from tcustomer_info t,tcustomer_role_relation tt where t.c_customercode = tt.c_customercode and tt.c_relationcode = ''{tproject_info_pshorgno}''', null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_framesignedmoney_1') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_framesignedmoney_1', '框架协议签订金额', '3', '转股方案', '1', '转股方案', '转股方案用', 'tproject_info_amc', 'framesignedmoney', '0', null, '16', null, 16, 200, 18, 1, 1, 4, '1', '0', null, '1', '8', '1', 'tproject_info_framesignedmoney_1', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_applyinvestmoney_2') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_applyinvestmoney_2', '申请总投资金额', '3', '转股方案', '1', '转股方案', '转股方案用', 'tproject_info_amc', 'applyinvestmoney', '0', null, '16', null, 16, 200, 18, 1, 1, 5, '1', '0', null, '1', '8', '1', 'tproject_info_applyinvestmoney_2', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_isperfectturnstock') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_isperfectturnstock', '转股方案是否完善', '1', '基本信息', '11', '基本信息', null, 'tproject_info_amc', 'isperfectturnstock', '0', null, '6', 'YES_OR_NO', 2, 200, 18, 1, 1, 30, '1', '0', null, '1', '8', '1', 'tproject_info_isperfectturnstock', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_isleavedebt') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_isleavedebt', '是否留债', '3', '转股方案', '1', '转股方案', null, 'tproject_info_amc', 'isleavedebt', '0', null, '6', 'YES_OR_NO', 2, 200, 18, 1, 1, 7, '1', '0', null, '1', '8', '1', 'tproject_info_isleavedebt', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_leavedebtmoney') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_leavedebtmoney', '留债金额', '3', '转股方案', '1', '转股方案', null, 'tproject_info_amc', 'leavedebtmoney', '0', null, '16', null, 16, 200, 18, 1, 1, 8, '1', '0', null, '1', '8', '1', 'tproject_info_leavedebtmoney', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_sumcontributive') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_sumcontributive', '总出资金额', '3', '交易架构', '1', '交易架构', null, 'tproject_info_amc', 'sumcontributive', '0', null, '16', null, 16, 200, 18, 1, 1, 7, '1', '0', null, '1', '8', '1', 'tproject_info_sumcontributive', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_debtcorpusamount') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_debtcorpusamount', '债权本金合计', '2', '债权信息', '1', '债权信息', null, 'tproject_info_amc', 'debtcorpusamount', '0', null, '16', null, 16, 200, 18, 1, 1, 3, '1', '0', null, '1', '8', '1', 'tproject_info_debtcorpusamount', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_debtinterest') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_debtinterest', '债权利息合计', '2', '债权信息', '1', '债权信息', null, 'tproject_info_amc', 'debtinterest', '0', null, '16', null, 16, 200, 18, 1, 1, 4, '1', '0', null, '1', '8', '1', 'tproject_info_debtinterest', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_debtsum') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_debtsum', '债权总金额', '2', '债权信息', '1', '债权信息', null, 'tproject_info_amc', 'debtsum', '0', null, '16', null, 16, 200, 18, 1, 1, 2, '1', '0', null, '1', '8', '1', 'tproject_info_debtsum', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_loanaccountinfo') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_loanaccountinfo', '债权信息', '2', '债权信息', '1', '债权信息', null, 'tproject_info_loanaccountinfo', null, '0', null, '21', '/pm/project/projectloanaccountinfo.htm', 99999, 200, 300, 1, 2, 1, '1', '0', null, '1', '7', '1', 'tproject_info_loanaccountinfo', null, '1', null, 'loanAccountInfoManager.saveLoanaccountInfoGrid(:map)', null, null, null);
end if;


end;
/

