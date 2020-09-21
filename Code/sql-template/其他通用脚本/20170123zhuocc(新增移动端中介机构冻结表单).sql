delete from tmobile_config_form t where t.C_FORMURL='agency/generalflow/agencyEvalua.htm';
delete from tmobile_config_field t where t.C_MODELCODE='agency/generalflow/agencyEvalua.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('agency/generalflow/agencyEvalua.htm', '�н���������', null, 'talternativeLibraryManager.getAgencyInfoMapForMoblie()', '0', 'MOBILE', null,'1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('agency/generalflow/agencyEvalua.htm', '�н���������', 'customerName', null, '��������', '1', 1, null, null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('agency/generalflow/agencyEvalua.htm', '�н���������', 'hiseval', null, '��ʷ����', '9', 4, '{
    "title": "��ʷ����",
    "columns": [
        {
            "name": "������",
            "code": "username",
            "fieldType": "1",
            "iscanupdate": "0",
            "valuebound": "",
            "isshow": "true"
        },
        {
            "name": "��������������",
            "code": "deptname",
            "fieldType": "1",
            "iscanupdate": "0",
            "valuebound": "",
            "isshow": "true"
        },
        {
            "name": "�����",
            "code": "depteval",
            "fieldType": "6",
            "iscanupdate": "0",
            "valuebound": "DEPT_FILL",
            "isshow": "true"
        },
        {
            "name": "��������",
            "code": "agencyquality",
            "fieldType": "6",
            "iscanupdate": "0",
            "valuebound": "DEPT_FILL",
            "isshow": "true"
        },
        {
            "name": "���۷�ֵ",
            "code": "totalscore",
            "fieldType": "1",
            "iscanupdate": "0",
            "valuebound": "",
            "isshow": "true"
        },
        {
            "name": "��������",
            "code": "evaluatime",
            "fieldType": "1",
            "iscanupdate": "0",
            "valuebound": "",
            "isshow": "true"
        },
        {
            "name": "��Ŀ����",
            "code": "projectname",
            "fieldType": "1",
            "iscanupdate": "0",
            "valuebound": "",
            "isshow": "true"
        }
    ]
}', null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('agency/generalflow/agencyEvalua.htm', '�н���������', 'orgtype', null, '��������', '6', 2, 'INSTITUTION_TYPE', null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('agency/generalflow/agencyEvalua.htm', '�н���������', 'reason', null, '����ԭ��', '3', 3, null, null, null, null, '������Ϣ', null);
