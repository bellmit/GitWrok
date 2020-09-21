
--标准化选聘
delete from tmobile_config_form t where t.C_FORMURL='/agency/agencyManage/standardagencyapplyflow.htm';
delete from tmobile_config_field t where t.C_MODELCODE='/agency/agencyManage/standardagencyapplyflow.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/agency/agencyManage/standardagencyapplyflow.htm', '标准化选聘流程', null, 'talternativeLibraryManager.getStandardAgencyApplyForMobile()', '1', 'MOBILE', null, '1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/agency/agencyManage/standardagencyapplyflow.htm', '标准化选聘', 'applydate', null, '选聘日期', '1', 1, null, null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/agency/agencyManage/standardagencyapplyflow.htm', '标准化选聘', 'applydetailtable', null, '选聘中介机构', '9', 3, '{"title":"选聘中介机构","columns":[{"name":"中介机构名称","code":"rivalname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"资质类型","code":"qualificationtype","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"联系人","code":"contact","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"联系电话","code":"contractnumber","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '选聘中介机构', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/agency/agencyManage/standardagencyapplyflow.htm', '标准化选聘', 'applyduedate', null, '到期日期', '1', 2, null, null, null, null, '基本信息', null);


--非标准化选聘
delete from tmobile_config_form t where t.C_FORMURL='/agency/agencyManage/agencySelectUnstdForm.htm';
delete from tmobile_config_field t where t.C_MODELCODE='/agency/agencyManage/agencySelectUnstdForm.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/agency/agencyManage/agencySelectUnstdForm.htm', '非标准化选聘流程', null, 'talternativeLibraryManager.getAgencySelectUnstdForMobile()', '1', 'MOBILE', null, '1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/agency/agencyManage/agencySelectUnstdForm.htm', '非标准化选聘', 'agencyApplyDetailGrid', null, '备选机构', '9', 3, '{"title":"备选机构","columns":[{"name":"备选机构","code":"officeid_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"经办人","code":"operator","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"报价","code":"price","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"最终报价","code":"finalprice","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"是否中标","code":"isbid","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"备注","code":"memo","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '备选机构', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/agency/agencyManage/agencySelectUnstdForm.htm', '非标准化选聘', 'projectname', null, '项目名称', '1', 1, null, null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/agency/agencyManage/agencySelectUnstdForm.htm', '非标准化选聘', 'remark', null, '摘要', '1', 4, null, null, null, null, '基本信息', null);



--投资项目立项外聘中介机构信息21要素
delete from tmobile_config_field t where t.C_MODELCODE='/pm/project/agencyapplyinvest.htm';

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/agencyapplyinvest.htm', '外聘中介机构信息', 'tproject_info_applyagencyinfo_eg', null, '外聘中介机构信息', '9', 1, '{"title":"外聘中介机构信息","columns":[{"name":"中介机构类型","code":"view_orgtype","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"是否标准化选聘","code":"view_standardapply","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"是否特需流程","code":"view_specialapply","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"中介机构名称(库内)","code":"view_applyedagency","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"中介机构名称(库外)","code":"view_notapplyedagency","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '外聘中介机构信息', null);