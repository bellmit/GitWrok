insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('AIMS_GLF003', 'customer_socialcreditcode', null, null, 2, '0', '0', '0', null, null);


insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND)
values ('customer_socialcreditcode', '社会信用代码(营业执照)', '1', '基本信息', '1', '基本信息', null, 'tcustomer_info', 'certificateCode', '0', null, '1', null, null, 250, 18, 1, 1, 2, '1', '0', null, '1', '1', '5', 'customer_socialcreditcode ', null, '0', null, null);


insert into TPROJECT_CONFIG_MAINTAIN (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '系统管理员角色', 'admin', 'AIMS_GLF003', 'customer_socialcreditcode', '1', '1');
insert into TPROJECT_CONFIG_MAINTAIN (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '普通用户角色', '9999', 'AIMS_GLF003', 'customer_socialcreditcode', '1', '1');




insert into tproject_factor_rule (C_RULEID, C_RULENAME, C_EVENTTYPE, C_FUNNAME, C_FUNARGS, C_ISINITEXE, C_TEMPCODE, C_ISUSE, C_ISNOTEXERULE)
values ('customer_12', '干系人性质为非个人时，隐藏证件类型，证件号码，显示社会信用代码', 'change', 'visibleFactor', '''customer_socialcreditcode'',[customer_customerProperty]!=''1''', '2', null, '1', null);

insert into tproject_factor_rule (C_RULEID, C_RULENAME, C_EVENTTYPE, C_FUNNAME, C_FUNARGS, C_ISINITEXE, C_TEMPCODE, C_ISUSE, C_ISNOTEXERULE)
values ('customer_13', '干系人性质为个人时，显示证件类型，证件号码，隐藏社会信用代码', 'change', 'visibleFactor', '''customer_certificateCode,customer_certificateType'',[customer_customerProperty]==''1''', '2', null, '1', null);

update TPROJECT_FACTOR_INFO t set t.c_ruleid = 'customer_3,customer_11,customer_12,customer_13,customer_14,customer_15' where t.c_factorname='干系人性质';