
delete from tproject_factor_info i where i.c_factorcode='tproject_fund_fundtrustee';

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('tproject_fund_fundtrustee', '管理人', '1', '基本信息', null, null, null, 'tproject_info', 'fundtrustee', '0', null, '7', 'customerFundSelector(''{fieldid}'','''','''','''','''','''',''管理人'','''','''')', 255, 150, 18, 1, 1, 6, '0', null, null, '1', '1', '60', 'tproject_fund_fundtrustee', null, '0', 'select t.c_customername factorvalue from tcustomer_info t,tcustomer_role_relation tt where t.c_customercode = tt.c_customercode and tt.c_relationcode= ''{tproject_fund_fundtrustee}''
union
select t.c_projectname factorvalue from tproject_info t  where t.c_projectcode = ''{tproject_fund_fundtrustee}'' and t.c_projectnature = ''99''
union
select t.c_customername factorvalue from tcustomer_info t where t.c_customercode = ''{tproject_fund_fundtrustee}''', null, null, null);

delete from tproject_factor_info i where i.c_factorcode='tproject_fund_sponsoragencies';

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('tproject_fund_sponsoragencies', '发起机构', '1', '基本信息', null, null, null, 'tproject_info', 'sponsoragencies', '0', null, '7', 'customerFundSelector(''{fieldid}'','''','''','''','''','''',''发起机构'','''','''')', 255, 150, 18, 1, 1, 10, '1', null, null, '1', '1', '60', 'tproject_fund_sponsoragencies', null, '0', 'select t.c_customername factorvalue from tcustomer_info t,tcustomer_role_relation tt where t.c_customercode = tt.c_customercode and tt.c_relationcode= ''{tproject_fund_sponsoragencies}''
union
select t.c_projectname factorvalue from tproject_info t  where t.c_projectcode = ''{tproject_fund_sponsoragencies}'' and t.c_projectnature = ''99''
union
select t.c_customername factorvalue from tcustomer_info t where t.c_customercode = ''{tproject_fund_sponsoragencies}''', null, null, null);