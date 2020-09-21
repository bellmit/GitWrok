declare
begin
--营销项目要素模板
if not fc_IsDataExists('select count(*) from tproject_factor_temp t where t.C_TEMPCODE = ''YXXM_001''') then
insert into tproject_factor_temp (C_TEMPCODE, C_TEMPNAME, C_TEMPDESC, C_CREATEUSER, D_CREATETIME, D_UPDATETIME, C_FACTORFLAG, C_DIRECTION, C_UPDATEUSER, C_BUSITYPE, C_DICTITEMCODE, C_ISDEFAULT, C_ISPUBLIC, C_ISUSE, C_PROJTYPE, C_TEMPTYPE)
values ('YXXM_001', '营销项目要素模板', null, 'admin', to_date('29-06-2017 22:25:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-11-2017 18:22:08', 'dd-mm-yyyy hh24:mi:ss'), '3', null, 'admin', '2', null, '1', '1', '1', null, null);
end if;


--基本信息
if not fc_IsExistsProjectFactorInfo('mpcname') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('mpcname', '项目名称', '1', '基本信息', '11', '基本信息', null, 'tproject_store_info', 'projectname', '0', null, '1', null, 255, 200, 18, 1, 1, 2, '1', '0', null, '1', '1', '3', 'mpcname', null, '0', null, null, null, null);
end if;

if not fc_IsExistsProjectFactorInfo('mpccode') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('mpccode', '营销项目编号', '1', '基本信息', '11', '基本信息', null, 'tproject_store_info', 'projectcode', '0', null, '1', null, 20, 200, 18, 1, 1, 1, '1', '1', '由系统自动生成，无需填写！', '1', '1', '3', 'mpccode', null, '0', null, null, null, null);
end if;

if not fc_IsExistsProjectFactorInfo('mpcnature') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('mpcnature', '营销项目性质', '1', '基本信息', '11', '基本信息', null, 'tproject_store_info', 'projectnature', '0', '09', '9', 'PROJECTNATURE_YXXM', 200, 200, 18, 1, 1, 4, '1', '0', null, '1', '1', '3', 'mpcnature', null, '0', null, null, null, null);
end if;

if not fc_IsExistsProjectFactorInfo('mpcdptid') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('mpcdptid', '承做部门', '1', '基本信息', '11', '基本信息', null, 'tproject_store_info', 'dptid', '0', '{user_dptid}', '15', 'sysOrganizationManager.getSysLeafOrgList()', 255, 250, 18, 1, 1, 3, '1', '0', null, '1', '1', '3', 'mpcdptid', null, '0', 'select concatstr(t.org_name) as factorvalue from tsys_organization t where t.org_id in (''{mpcdptid}'') ', null, null, null, null);
end if;


if not fc_IsExistsProjectFactorInfo('mpctrustmanager') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('mpctrustmanager', '项目经理', '1', '基本信息', '11', '基本信息', null, 'tproject_store_info', 'trustmanager', '0', null, '7', 'userSelectorForFactor(''{fieldid}'',''0'',''role'',''9999'') ', 50, 200, 18, 1, 1, 7, '1', '0', null, '1', '1', '3', 'mpctrustmanager', null, '0', 'select u.user_name as factorvalue from tsys_user u where u.user_id=''{mpctrustmanager}''', null, null, null, null);
end if;

if not fc_IsExistsProjectFactorInfo('mpcsponsor') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('mpcsponsor', '项目成员', '1', '基本信息', '11', '基本信息', null, 'tproject_store_info', 'sponsor', '0', null, '7', 'userSelectorForFactor(''{fieldid}'',''1'',''role'',''9999'') ', 200, 200, 18, 1, 1, 7, '1', '0', null, '1', '1', '3', 'mpcsponsor', null, '0', 'select to_char(concatstr(u.user_name)) as factorvalue from tsys_user u where u.user_id in (''{mpcsponsor}'')', null, null, null, null);
end if;

if not fc_IsExistsProjectFactorInfo('tproject_info_mpccode') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_mpccode', '营销项目编号', '1', '基本信息', '11', '基本信息', null, 'tproject_info_amc', 'mpccode', '0', null, '20', null, 255, 250, 18, 1, 1, 2, '0', '0', null, '1', '8', '1', 'tproject_info_mpccode', null, '0', null, null, null, null, null);
end if;

if not fc_IsExistsProjectFactorInfo('mpcclientname') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('mpcclientname', '客户名称', '1', '基础信息', '11', '基础信息', null, 'tproject_store_info', 'clientname', '0', null, '7', 'customerSelector(''{fieldid}'',''0'',''18'',null)', 255, 150, 18, 1, 1, 53, '1', '0', null, '1', '1', '3', 'mpcclientname', null, '0', 'select t.c_customername factorvalue from tcustomer_info t where t.c_customercode=''{mpcclientname}''', null, null, null, null);
end if;

if not fc_IsExistsProjectFactorInfo('mpcprojectmanager') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('mpcprojectmanager', '项目负责人', '1', '基本信息', '11', '基本信息', null, 'tproject_store_info', 'projectmanager', '0', null, '7', 'userSelectorForFactor(''{fieldid}'',''0'',''role'',''9999'') ', 50, 200, 18, 1, 1, 7, '1', '0', null, '1', '1', '3', 'mpcprojectmanager', null, '0', 'select u.user_name as factorvalue from tsys_user u where u.user_id=''{mpcprojectmanager}''', null, null, null, null);
end if;

if not fc_IsExistsProjectFactorInfo('mpciscooperation') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('mpciscooperation', '客户是否有合作意向', '1', '基本信息', '11', '基本信息', null, 'tproject_store_info', 'iscooperation', '0', null, '6', 'YES_OR_NO', 10, 200, 18, 1, 1, 4, '1', '0', null, '1', '1', '3', 'mpciscooperation', null, '0', null, null, null, null);
end if;

if not fc_IsExistsProjectFactorInfo('mpcstoragetime') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('mpcstoragetime', '进入营销项目库时间', '1', '基本信息', '11', '基本信息', null, 'tproject_store_info', 'storagetime', '0', null, '4', null, 10, 200, 18, 1, 1, 4, '1', '0', null, '1', '1', '3', 'mpcstoragetime', null, '0', null, null, null, null);
end if;



--合作方案商谈情况
if not fc_IsExistsProjectFactorInfo('mpccooperationModel') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('mpccooperationModel', '合作模式', '6', '合作方案商谈情况', '66', '合作方案商谈情况', null, 'tproject_store_info', 'cooperationModel', '0', null, '6', 'COOPERATION_MODEL_YXXM', 255, 200, 18, 1, 1, 4, '1', '0', null, '1', '1', '3', 'mpccooperationModel', null, '0', null, null, null, null);
end if;

if fc_IsExistsProjectFactorInfo('mpccooperationModel') then
	update tproject_factor_info t set t.C_FACTORDEFVAL = '' where t.C_FACTORCODE = 'mpccooperationModel';
end if;

if not fc_IsExistsProjectFactorInfo('mpctargetCustomer') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('mpctargetCustomer', '拟实施目标客户或优质资产', '6', '合作方案商谈情况', '66', '合作方案商谈情况', null, 'tproject_store_info', 'targetCustomer', '0', null, '6', 'TARGET_CUSTOMER_YXXM', 255, 200, 18, 1, 1, 5, '1', '0', null, '1', '1', '3', 'mpctargetCustomer', null, '0', null, null, null, null);
end if;

if not fc_IsExistsProjectFactorInfo('mpcquitType') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('mpcquitType', '资金退出方式', '6', '合作方案商谈情况', '66', '合作方案商谈情况', null, 'tproject_store_info', 'quitType', '0', null, '6', 'QUIT_TYPE_YXXM', 255, 200, 18, 1, 1, 6, '1', '0', null, '1', '1', '3', 'mpcquitType', null, '0', null, null, null, null);
end if;

if fc_IsExistsProjectFactorInfo('mpcquitType') then
	update tproject_factor_info t set t.C_FACTORDEFVAL = '' where t.C_FACTORCODE = 'mpcquitType';
end if;

if not fc_IsExistsProjectFactorInfo('mpcriskControlMeasure') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('mpcriskControlMeasure', '风险控制措施', '6', '合作方案商谈情况', '66', '合作方案商谈情况', null, 'tproject_store_info', 'riskControlMeasure', '0', null, '6', 'RISKCONTROL_MEASURE_YXXM', 255, 200, 18, 1, 1, 7, '1', '0', null, '1', '1', '3', 'mpcriskControlMeasure', null, '0', null, null, null, null);
end if;

if fc_IsExistsProjectFactorInfo('mpcriskControlMeasure') then
	update tproject_factor_info t set t.C_FACTORDEFVAL = '' where t.C_FACTORCODE = 'mpcriskControlMeasure';
end if;

if not fc_IsExistsProjectFactorInfo('mpcintentionamount') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('mpcintentionamount', '合作意向金额(亿元)', '6', '合作方案商谈情况', '66', '合作方案商谈情况', null, 'tproject_store_info', 'intentionamount', '0', null, '16', null, 19, 200, 18, 1, 1, 20, '1', '0', null, '1', '1', '3', 'mpcintentionamount', null, '0', null, null, null, null, null);
end if;

if not fc_IsExistsProjectFactorInfo('mpcstockcompany') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('mpcstockcompany', '拟入股标的企业', '6', '合作方案商谈情况', '66', '合作方案商谈情况', null, 'tproject_store_info', 'stockcompany', '0', null, '7', 'customerSelector(''{fieldid}'',''0'',null,null)', 255, 150, 18, 1, 1, 53, '1', '0', null, '1', '1', '3', 'mpcstockcompany', null, '0', 'select t.c_customername factorvalue from tcustomer_info t where t.c_customercode=''{mpcstockcompany}''', null, null, null, null);
end if;

if not fc_IsExistsProjectFactorInfo('mpcinvestmentdate') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('mpcinvestmentdate', '预计投资期限', '6', '合作方案商谈情况', '66', '合作方案商谈情况', null, 'tproject_store_info', 'investmentdate', '0', null, '4', null, 10, 200, 18, 1, 1, 4, '1', '0', null, '1', '1', '3', 'mpcinvestmentdate', null, '0', null, null, null, null);
end if;

--其他信息
if not fc_IsExistsProjectFactorInfo('mpccurrentProblem') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('mpccurrentProblem', '当前工作中遇到的问题', '7', '其他信息', '77', '其他信息', null, 'tproject_store_info', 'currentProblem', '0', null, '3', null, 1400, 600, 8, 3, 2, 29, '1', '0', null, '1', '1', '3', 'mpccurrentProblem', null, '0', null, null, null, null, null);
end if;

if not fc_IsExistsProjectFactorInfo('mpcnextStagePlan') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('mpcnextStagePlan', '下阶段工作计划', '7', '其他信息', '77', '其他信息', null, 'tproject_store_info', 'nextStagePlan', '0', null, '3', null, 1400, 600, 8, 3, 2, 30, '1', '0', null, '1', '1', '3', 'mpcnextStagePlan', null, '0', null, null, null, null, null);
end if;

if not fc_IsExistsProjectFactorInfo('mpcmemo') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('mpcmemo', '备注', '7', '其他信息', '77', '其他信息', null, 'tproject_store_info', 'memo', '0', null, '3', null, 1400, 600, 8, 3, 2, 31, '1', '0', null, '1', '1', '3', 'mpcmemo', null, '0', null, null, null, null, null);
end if;


--拜访客户信息
if not fc_IsExistsProjectFactorInfo('mpcvisitclientinfo') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('mpcvisitclientinfo', '拜访客户信息', '300', '拜访客户信息', '1', '拜访客户信息', null, 'visitclient_info', null, '0', null, '21', '/pm/project/marketproject/visitclientinfo.htm', 99999, 200, 300, 1, 2, 26, '1', '0', null, '1', '7', '3', 'mpcvisitclientinfo', null, '1', null, 'transStructureManager.saveTransInfoGrid(:map)', null, null, null);
end if;
end;
/