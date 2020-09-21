delete from tmobile_config_form t where t.C_FORMURL='agency/generalflow/agencyEvalua.htm';
delete from tmobile_config_field t where t.C_MODELCODE='agency/generalflow/agencyEvalua.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('agency/generalflow/agencyEvalua.htm', '中介机构冻结表单', null, 'talternativeLibraryManager.getAgencyInfoMapForMoblie()', '0', 'MOBILE', null,'1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('agency/generalflow/agencyEvalua.htm', '中介机构冻结表单', 'customerName', null, '机构名称', '1', 1, null, null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('agency/generalflow/agencyEvalua.htm', '中介机构冻结表单', 'hiseval', null, '历史评价', '9', 4, '{
    "title": "历史评价",
    "columns": [
        {
            "name": "评价人",
            "code": "username",
            "fieldType": "1",
            "iscanupdate": "0",
            "valuebound": "",
            "isshow": "true"
        },
        {
            "name": "评价人所属机构",
            "code": "deptname",
            "fieldType": "1",
            "iscanupdate": "0",
            "valuebound": "",
            "isshow": "true"
        },
        {
            "name": "满意度",
            "code": "depteval",
            "fieldType": "6",
            "iscanupdate": "0",
            "valuebound": "DEPT_FILL",
            "isshow": "true"
        },
        {
            "name": "服务质量",
            "code": "agencyquality",
            "fieldType": "6",
            "iscanupdate": "0",
            "valuebound": "DEPT_FILL",
            "isshow": "true"
        },
        {
            "name": "评价分值",
            "code": "totalscore",
            "fieldType": "1",
            "iscanupdate": "0",
            "valuebound": "",
            "isshow": "true"
        },
        {
            "name": "评价日期",
            "code": "evaluatime",
            "fieldType": "1",
            "iscanupdate": "0",
            "valuebound": "",
            "isshow": "true"
        },
        {
            "name": "项目名称",
            "code": "projectname",
            "fieldType": "1",
            "iscanupdate": "0",
            "valuebound": "",
            "isshow": "true"
        }
    ]
}', null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('agency/generalflow/agencyEvalua.htm', '中介机构冻结表单', 'orgtype', null, '机构类型', '6', 2, 'INSTITUTION_TYPE', null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('agency/generalflow/agencyEvalua.htm', '中介机构冻结表单', 'reason', null, '冻结原因', '3', 3, null, null, null, null, '基本信息', null);
