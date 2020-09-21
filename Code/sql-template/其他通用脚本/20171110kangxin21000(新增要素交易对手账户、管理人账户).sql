
declare
begin

if not fc_IsExistsProjectFactorInfo('tinvest_contract-rivalAcc') then

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('tinvest_contract-rivalAcc', '交易对手账户', '1', '基本信息', '11', '基本信息', null, 'tinvest_contract', 'rivalaccountcode', '0', null, '7', 'customerAccSelector(''4'',''{fieldid}'',setRivalAccount,'''',''1'')', 255, 200, 18, 1, 1, 19, '1', '0', null, '1', '1', '6', null, null, '0', 'select ci.c_customername as factorvalue from tcustomer_accountinfo ca, tcustomer_role_relation crr, tcustomer_info ci where ca.c_relationcode=crr.c_relationcode and crr.c_customercode=ci.c_customercode and ca.c_accountcode = ''{tinvest_contract-rivalAcc}''', null, null, null);

end if;


if not fc_IsExistsProjectFactorInfo('tinvest_contract-manageraccount') then

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('tinvest_contract-manageraccount', '管理人账户', '1', '基本信息', '11', '基本信息', null, 'tinvest_contract', 'rivalaccountcode', '0', null, '7', 'accountSelector(''{fieldid}'','''','''','''')', 255, 200, 18, 1, 1, 34, '1', '0', null, '1', '1', '6', null, null, '0', 'select t.c_acconame factorvalue from taccount_bankinfo t where t.l_accoid = ''{tinvest_contract-manageraccount}''', null, null, null);

end if;

end;
/