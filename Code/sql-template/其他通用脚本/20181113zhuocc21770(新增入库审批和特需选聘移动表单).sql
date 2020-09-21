
--入库审批流程
delete from tmobile_config_form t where t.C_FORMURL='/agency/agencyManage/agencyinboundflow.htm';
delete from tmobile_config_field t where t.C_MODELCODE='/agency/agencyManage/agencyinboundflow.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/agency/agencyManage/agencyinboundflow.htm', '入库审批流程', null, 'talternativeLibraryManager.getAgencyInboundForMobile()', '1', 'MOBILE', null, '1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/agency/agencyManage/agencyinboundflow.htm', '入库审批流程', 'agencyInboundTable', null, '入库中介机构', '9', 2, '{"title":"入库中介机构","columns":[{"name":"中介机构名称","code":"customername","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"中介机构类型","code":"orgtype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"资质类型","code":"qualificationtype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"所在区域","code":"area_view","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"负责人","code":"responsibleperson","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"联系人","code":"contract","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"联系电话","code":"contractnumber","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '入库中介机构', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/agency/agencyManage/agencyinboundflow.htm', '入库审批流程', 'libdate', null, '入库日期', '1', 1, null, null, null, null, '基本信息', null);


--特需选聘流程
delete from tmobile_config_form t where t.C_FORMURL='/agency/agencyManage/specialagencyapplyflow.htm';
delete from tmobile_config_field t where t.C_MODELCODE='/agency/agencyManage/specialagencyapplyflow.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/agency/agencyManage/specialagencyapplyflow.htm', '特需选聘流程', null, 'talternativeLibraryManager.getSpecialAgencyApplyForMobile()', '1', 'MOBILE', null, '1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/agency/agencyManage/specialagencyapplyflow.htm', '特需选聘流程', 'memo', null, '其他', '1', 4, null, null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/agency/agencyManage/specialagencyapplyflow.htm', '特需选聘流程', 'price', null, '报价', '2', 3, null, null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/agency/agencyManage/specialagencyapplyflow.htm', '特需选聘流程', 'rivalname', null, '中介机构名称', '1', 2, null, null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/agency/agencyManage/specialagencyapplyflow.htm', '特需选聘流程', 'projectname', null, '项目名称', '1', 1, null, null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/agency/agencyManage/specialagencyapplyflow.htm', '特需选聘流程', 'remark', null, '摘要', '1', 5, null, null, null, null, '基本信息', null);
