delete from tmobile_config_form t where t.C_FORMURL='/pm/project/doc/textTransfer.htm';
delete from tmobile_config_field t where t.C_MODELCODE='/pm/project/doc/textTransfer.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/pm/project/doc/textTransfer.htm', '�ĵ��ƽ�������', null, 'documentManager.getTextTransferMapForMoblie()', '1', 'MOBILE', null,'1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textTransfer.htm', '�ĵ��ƽ�������', 'department', null, '����', '1', 1, null, null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textTransfer.htm', '�ĵ��ƽ�������', 'busitype_display', null, 'ҵ������', '1', 3, null, null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textTransfer.htm', '�ĵ��ƽ�������', 'reelnumber', null, '��ţ�X��/Y��', '1', 5, null, null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textTransfer.htm', '�ĵ��ƽ�������', 'remark', null, '��ע', '3', 8, null, null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textTransfer.htm', '�ĵ��ƽ�������', 'transferdate', null, '�ƽ�����', '4', 7, null, null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textTransfer.htm', '�ĵ��ƽ�������', 'transfertype', null, '�����ƽ�����', '5', 4, '0:���񵵰��ƽ�;1:���鵵���ƽ�;2:�ʲ��������ƽ�;', null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textTransfer.htm', '�ĵ��ƽ�������', 'transferuser', null, '�ƽ���', '1', 6, null, null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/doc/textTransfer.htm', '�ĵ��ƽ�������', 'view_projectcode', null, '��Ŀ����', '1', 2, null, null, null, null, '������Ϣ', null);

