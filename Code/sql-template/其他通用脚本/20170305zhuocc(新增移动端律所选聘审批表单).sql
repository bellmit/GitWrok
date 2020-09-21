delete from tmobile_config_form t where t.C_FORMURL='approval/generalflow/officeselect.htm';
delete from tmobile_config_field t where t.C_MODELCODE='approval/generalflow/officeselect.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('approval/generalflow/officeselect.htm', '����ѡƸ��', null, 'intermediaryMobileManager.getOfficeSelectForMobile()', '1', 'MOBILE', null,'1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/officeselect.htm', '����ѡƸ', 'memo', null, '��ע', '3', 6, null, null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/officeselect.htm', '����ѡƸ', 'proxytype', null, '����ʽ', '6', 5, 'PROXY_TYPE', null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/officeselect.htm', '����ѡƸ', 'items', null, '��Ҫ����', '3', 2, null, null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/officeselect.htm', '����ѡƸ', 'lawyerfee', null, '��֧����ʦ��', '2', 1, null, null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/officeselect.htm', '����ѡƸ', 'selecttypereason', null, 'ѡƸ��ʽ����', '3', 9, null, null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/officeselect.htm', '����ѡƸ', 'projectname', null, '��Ŀ����', '1', 1, null, null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/officeselect.htm', '����ѡƸ', 'officetable', null, '�н��������ѡƸ', '9', 10, '{"title":"�н��������ѡƸ","columns":[{"name":"����","code":"title","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�Ƽ�����","code":"office","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�Ƽ�������","code":"lawyer","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��������Ϣ","code":"Hus","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�Ƽ���ѡ����","code":"Gos","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��ѡ����ѡƸ���","code":"Resagencys","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/officeselect.htm', '����ѡƸ', 'hiregroup', null, 'ѡƸ����С��', '1', 8, null, null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/officeselect.htm', '����ѡƸ', 'selecttype', null, 'ѡƸ��ʽ', '6', 7, 'OFFICE_SELECTTYPE', null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/generalflow/officeselect.htm', '����ѡƸ', 'estimatecost', null, 'Ԥ�Ʒ���', '2', 5, null, null, null, null, '������Ϣ', null);
