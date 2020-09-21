delete from tmobile_config_form t where t.C_FORMURL='packetreception/assetpacket/assetbidprocess.htm';
delete from tmobile_config_field t where t.C_MODELCODE='packetreception/assetpacket/assetbidprocess.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('packetreception/assetpacket/assetbidprocess.htm', '资产包投标表单', null, 'bidInfoManager.getBidInfoForMobile()', '1', 'MOBILE', null, '1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '资产包投标表单', 'risktype', null, '风险类型', '6', 1, 'PM_RISK_TYPE', null, null, null, '项目信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '资产包投标表单', 'assetbusitype', null, '业务类型', '6', 2, 'PM_BUSINESSCATE', null, null, null, '项目信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '资产包投标表单', 'businesstype', null, '业务分类', '6', 1, 'PM_BUSINESS_TYPE', null, null, null, '项目信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '资产包投标表单', 'bankprice', null, '银行底价', '2', 12, null, null, null, null, '投标结果', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '资产包投标表单', 'participationtype', null, '参与类型', '6', 3, 'PARTICIPATIONTYPE', null, null, null, '投标信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '资产包投标表单', 'pushpackettype', null, '推包类型', '6', 4, 'PUSHPACKAGETYPE', null, null, null, '投标信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '资产包投标表单', 'minbidprice', null, '决议授权最高价', '2', 5, null, null, null, null, '投标信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '资产包投标表单', 'maxbidprice', null, '总经理最高授权报价', '2', 6, null, null, null, null, '投标信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '资产包投标表单', 'quoteamount', null, '报价金额', '2', 7, null, null, null, null, '投标信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '资产包投标表单', 'biddate', null, '投标日期', '1', 8, null, null, null, null, '投标信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '资产包投标表单', 'memo', null, '备注', '1', 9, null, null, null, null, '投标信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '资产包投标表单', 'bidresult', null, '投标结果', '9', 11, '{"title":"投标结果","columns":[{"name":"报价公司","code":"bidcompany_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"本金","code":"costamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"报价金额","code":"bidamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"本金折扣(%)","code":"costrate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"是否中标","code":"iswinbid_show","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '投标结果', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '资产包投标表单', 'openbiddate', null, '开标日期', '1', 10, null, null, null, null, '投标结果', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '资产包投标表单', 'additionalRemark', null, '补充说明', '2', 13, null, null, null, null, '投标结果', null);
