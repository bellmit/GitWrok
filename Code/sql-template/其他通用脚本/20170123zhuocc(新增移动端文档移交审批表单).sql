delete from tmobile_config_form t where t.C_FORMURL='/pm/project/doc/textTransfer.htm';
delete from tmobile_config_field t where t.C_MODELCODE='/pm/project/doc/textTransfer.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/pm/project/doc/textTransfer.htm', '文档移交审批表单', null, 'documentManager.getTextTransferMapForMoblie()', '1', 'MOBILE', null,'1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textTransfer.htm', '文档移交审批表单', 'department', null, '部门', '1', 1, null, null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textTransfer.htm', '文档移交审批表单', 'busitype_display', null, '业务类型', '1', 3, null, null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textTransfer.htm', '文档移交审批表单', 'reelnumber', null, '卷号（X卷/Y卷）', '1', 5, null, null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textTransfer.htm', '文档移交审批表单', 'remark', null, '备注', '3', 8, null, null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textTransfer.htm', '文档移交审批表单', 'transferdate', null, '移交日期', '4', 7, null, null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textTransfer.htm', '文档移交审批表单', 'transfertype', null, '档案移交类型', '5', 4, '0:声像档案移交;1:文书档案移交;2:资产管理档案移交;', null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textTransfer.htm', '文档移交审批表单', 'transferuser', null, '移交人', '1', 6, null, null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textTransfer.htm', '文档移交审批表单', 'view_projectcode', null, '项目名称', '1', 2, null, null, null, null, '基本信息', null);

