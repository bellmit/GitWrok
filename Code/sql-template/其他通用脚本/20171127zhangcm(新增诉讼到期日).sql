--要素表配置
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('tasset_creditorcontract_lawdeadend', '诉讼到期日', '1', '基本信息', '11', '基本信息', null, 'tasset_creditorcontract', 'lawdeadend', '0', null, '4', null, 255, 200, 18, 1, 1, 13, '1', '0', null, '1', '1', '13', null, null, '0', null, null, null, null);

--
update tproject_factor_info t set t.c_factorname='诉讼起始日' where t.c_factorflag='13' and t.c_factorcode='tasset_creditorcontract_lawdeaddate';

--关联表配置

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('ZQHT001', 'tasset_creditorcontract_lawdeadend', null, null, 13, '0', '0', '0', null, null);

--查看修改权限
insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('0', '系统管理员', 'admin', 'ZQHT001', 'tasset_creditorcontract_lawdeadend', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '普通用户角色', '9999', 'ZQHT001', 'tasset_creditorcontract_lawdeadend', '1', '1');

--复核权限
insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '普通用户角色', '9999', 'ZQHT001', 'tasset_creditorcontract_lawdeadend', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '系统管理员角色', 'admin', 'ZQHT001', 'tasset_creditorcontract_lawdeadend', '1');