delete from tmobile_config_form t where t.C_FORMURL='approval/generalflow/agencyselect.htm';
delete from tmobile_config_field t where t.C_MODELCODE='approval/generalflow/agencyselect.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('approval/generalflow/agencyselect.htm', '中介机构选聘表单', null, 'intermediaryMobileManager.getAgencySelectForMobile()', '1', 'MOBILE', null,'1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/agencyselect.htm', '中介机构选聘', 'selecttypereason', null, '选聘方式理由', '3', 9, null, null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/agencyselect.htm', '中介机构选聘', 'finishdate', null, '项目时间要求', '4', 5, null, null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/agencyselect.htm', '中介机构选聘', 'objecttype', null, '拟评估对象资产类型', '3', 3, null, null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/agencyselect.htm', '中介机构选聘', 'assetmoney', null, '标的资产金额', '2', 4, null, null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/agencyselect.htm', '中介机构选聘', 'purpose', null, '评估目的', '3', 1, null, null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/agencyselect.htm', '中介机构选聘', 'evalrange', null, '评估范围', '3', 2, null, null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/agencyselect.htm', '中介机构选聘', 'agencytable', null, '中介机构批量选聘', '9', 14, '{"title":"中介机构批量选聘","columns":[{"name":"标题","code":"title","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"推荐机构","code":"office","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"推荐经办人","code":"lawyer","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"关联户信息","code":"Hus","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"推荐备选机构","code":"Gos","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"备选机构选聘结果","code":"Resagencys","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/agencyselect.htm', '中介机构选聘', 'memo', null, '特别事项说明', '3', 6, null, null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/agencyselect.htm', '中介机构选聘', 'selecttype', null, '选聘方式', '6', 7, 'OFFICE_SELECTTYPE', null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/agencyselect.htm', '中介机构选聘', 'hiregroup', null, '选聘工作小组', '1', 8, null, null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/agencyselect.htm', '中介机构选聘', 'estimateCost', null, '预计费用', '2', 7, null, null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/agencyselect.htm', '中介机构选聘', 'projectname', null, '项目名称', '1', 1, null, null, null, null, '基本信息', null);


