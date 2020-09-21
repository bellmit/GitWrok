delete from tmobile_config_form t where t.C_FORMURL='approval/transfer/assetsDeliv.htm';
delete from tmobile_config_field t where t.C_MODELCODE='approval/transfer/assetsDeliv.htm';


insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('approval/transfer/assetsDeliv.htm', '资产交割审批表单', null, 'transferContractManager.getAssetTransferForMobile()', '1', 'MOBILE', null,'1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/transfer/assetsDeliv.htm', '资产交割审批', 'assetseller', null, '资产出售方', '1', 3, null, null, null, null, '分户估值信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/transfer/assetsDeliv.htm', '资产交割审批', 'contractbalance_display', null, '收购金额', '1', 4, null, null, null, null, '分户估值信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/transfer/assetsDeliv.htm', '资产交割审批', 'householdValueSum', null, '估值合计', '1', 5, null, null, null, null, '分户估值信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/transfer/assetsDeliv.htm', '资产交割审批', 'loanaccountgird', null, '分户估值信息', '9', 6, '{"title":"分户估值信息","columns":[{"name":"借款人编号","code":"loanaccountnum","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"借款人/实物","code":"loanaccountname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"估值报价","code":"householdValue","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"估值报价","code":"lastbalanceall","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"成本自动分摊","code":"loanaccountcosts","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"实际户成本","code":"realloanaccountcosts","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"估值时间","code":"valuationDate","fieldType":"4","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"所属部门","code":"depname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"户编码","code":"loandbcode","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '分户估值信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/transfer/assetsDeliv.htm', '资产交割审批', 'projectname', null, '项目名称', '1', 2, null, null, null, null, '分户估值信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/transfer/assetsDeliv.htm', '资产交割审批', 'transferCheckBoxs', null, '资料录入是否完整', '10', 1, 'islawsuitinfofull:诉讼信息已录入完整;isexecinfofull:执行信息已录入完整;isseizedinfofull:保全信息已录入完整;isbankruptcyinfofull:破产重整信息已录入完整;isbidinfofull:投标结果已录入完整', null, null, null, '资料录入是否完整', null);
