--信托贷款合同要素模板
--新增三个要素
declare
begin
if not fc_IsDataExists('select count(*) from tproject_factor_info t where t.C_FACTORCODE = ''tinvest_contract_financial_advisorfee''') then
	insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('tinvest_contract_financial_advisorfee', '财务顾问费', '1', '基本信息', '11', '基本信息', '', 'tinvest_contract', 'financialadvisorfee', '0', '', '16', '', 19, 200, 18, 1, 1, 8, '1', '0', '', '1', '1', '6', '', '', '0', '', '', '', '');
end if;

if not fc_IsDataExists('select count(*) from tproject_factor_info t where t.C_FACTORCODE = ''tinvest_contract_trustcategory''') then
	insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('tinvest_contract_trustcategory', '信托类别', '1', '基本信息', '11', '基本信息', '', 'tinvest_contract', 'trustcategory', '0', '', '6', 'PM_TRUST_CATEGORY', 2, 200, 18, 1, 1, 11, '1', '0', '', '1', '1', '6', '', '', '0', '', '', '', '');
end if;

if not fc_IsDataExists('select count(*) from tproject_factor_info t where t.C_FACTORCODE = ''tinvest_contract_trustcompany''') then
	insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('tinvest_contract_trustcompany', '信托公司', '1', '基本信息', '11', '基本信息', '', 'tinvest_contract', 'trustcompany', '0', '', '7', 'customerAccSelector(''37'',''{fieldid}'',setRivalAccount,'''',''1'')', 255, 150, 18, 1, 1, 23, '1', '', '', '1', '1', '6', '', '', '0', 'select ci.c_customername as factorvalue from tcustomer_accountinfo ca, tcustomer_role_relation crr, tcustomer_info ci where ca.c_relationcode=crr.c_relationcode and crr.c_customercode=ci.c_customercode and ca.c_accountcode = ''{tinvest_contract_rivalid}''', '', '', '');
end if;

update tproject_factor_info t
   set t.c_factorsqlval = 'select ci.c_customername as factorvalue from tcustomer_accountinfo ca, tcustomer_role_relation crr, tcustomer_info ci where ca.c_relationcode=crr.c_relationcode and crr.c_customercode=ci.c_customercode and ca.c_accountcode = ''{tinvest_contract_trustcompany}'''
 where t.c_factorcode = 'tinvest_contract_trustcompany';

--要素模板
if not fc_IsDataExists('select count(*) from tproject_factor_temp t where t.C_TEMPCODE = ''XTDK_001''') then
	insert into tproject_factor_temp (C_TEMPCODE, C_TEMPNAME, C_TEMPDESC, C_CREATEUSER, D_CREATETIME, D_UPDATETIME, C_FACTORFLAG, C_DIRECTION, C_UPDATEUSER, C_BUSITYPE, C_DICTITEMCODE, C_ISDEFAULT, C_ISPUBLIC, C_ISUSE, C_PROJTYPE, C_TEMPTYPE)
values ('XTDK_001', '信托贷款合同要素模板', '', 'admin', to_date('19-12-2015 12:41:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-01-2018 17:12:35', 'dd-mm-yyyy hh24:mi:ss'), '6', '', 'admin', '01', '', '0', '1', '1', '', '');
end if;
end;
/