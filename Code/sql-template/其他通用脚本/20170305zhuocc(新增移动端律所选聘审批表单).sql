delete from tmobile_config_form t where t.C_FORMURL='approval/generalflow/officeselect.htm';
delete from tmobile_config_field t where t.C_MODELCODE='approval/generalflow/officeselect.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('approval/generalflow/officeselect.htm', '律所选聘表单', null, 'intermediaryMobileManager.getOfficeSelectForMobile()', '1', 'MOBILE', null,'1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/officeselect.htm', '律所选聘', 'memo', null, '备注', '3', 6, null, null, null, null, '机构信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/officeselect.htm', '律所选聘', 'proxytype', null, '代理方式', '6', 5, 'PROXY_TYPE', null, null, null, '机构信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/officeselect.htm', '律所选聘', 'items', null, '主要事项', '3', 2, null, null, null, null, '机构信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/officeselect.htm', '律所选聘', 'lawyerfee', null, '拟支付律师费', '2', 1, null, null, null, null, '机构信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/officeselect.htm', '律所选聘', 'selecttypereason', null, '选聘方式理由', '3', 9, null, null, null, null, '机构信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/officeselect.htm', '律所选聘', 'projectname', null, '项目名称', '1', 1, null, null, null, null, '机构信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/officeselect.htm', '律所选聘', 'officetable', null, '中介机构批量选聘', '9', 10, '{"title":"中介机构批量选聘","columns":[{"name":"标题","code":"title","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"推荐机构","code":"office","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"推荐经办人","code":"lawyer","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"关联户信息","code":"Hus","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"推荐备选机构","code":"Gos","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"备选机构选聘结果","code":"Resagencys","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '机构信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/officeselect.htm', '律所选聘', 'hiregroup', null, '选聘工作小组', '1', 8, null, null, null, null, '机构信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/officeselect.htm', '律所选聘', 'selecttype', null, '选聘方式', '6', 7, 'OFFICE_SELECTTYPE', null, null, null, '机构信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/officeselect.htm', '律所选聘', 'estimatecost', null, '预计费用', '2', 5, null, null, null, null, '机构信息', null);
