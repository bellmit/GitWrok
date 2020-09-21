delete from tmobile_config_form t where t.C_FORMURL='/pm/project/doc/textBorrow.htm';
delete from tmobile_config_field t where t.C_MODELCODE='/pm/project/doc/textBorrow.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/pm/project/doc/textBorrow.htm', '文档借阅审批表单', null, 'documentManager.getTextBorrowMapForMoblie()', '1', 'MOBILE', null,'1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textBorrow.htm', '文档借阅（用）审批表单', 'applydate', null, '申请日期', '4', 4, null, null, null, null, '借阅信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textBorrow.htm', '文档借阅（用）审批表单', 'borrower', null, '借阅人', '1', 3, null, null, null, null, '借阅信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textBorrow.htm', '文档借阅（用）审批表单', 'borrowreason', null, '借阅事由', '3', 7, null, null, null, null, '借阅信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textBorrow.htm', '文档借阅（用）审批表单', 'borrowtype', null, '借阅标识', '5', 5, '0:借阅;1:借出;', null, null, null, '借阅信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textBorrow.htm', '文档借阅（用）审批表单', 'department', null, '部门', '1', 1, null, null, null, null, '借阅信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textBorrow.htm', '文档借阅（用）审批表单', 'doclevel', null, '档案级别', '5', 10, '0:涉密;1:非涉密;', null, null, null, '借阅信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textBorrow.htm', '文档借阅（用）审批表单', 'docname', null, '档案名称', '1', 9, null, null, null, null, '借阅信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textBorrow.htm', '文档借阅（用）审批表单', 'docno', null, '档案号', '1', 8, null, null, null, null, '借阅信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textBorrow.htm', '文档借阅（用）审批表单', 'reelnumber', null, '卷号（X卷/Y卷）', '1', 6, null, null, null, null, '借阅信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textBorrow.htm', '文档借阅（用）审批表单', 'returnee', null, '归还人', '1', 12, null, null, null, null, '借阅信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textBorrow.htm', '文档借阅（用）审批表单', 'returntime', null, '归还时间', '4', 11, null, null, null, null, '借阅信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textBorrow.htm', '文档借阅（用）审批表单', 'view_projectcode', null, '项目名称', '1', 2, null, null, null, null, '借阅信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textBorrow.htm', '文档借阅（用）审批表单', 'memo', null, '备注', '3', 14, null, null, null, null, '借阅信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textBorrow.htm', '文档借阅（用）审批表单', 'borrowtime', null, '借阅时间', '4', 13, null, null, null, null, '借阅信息', null);
