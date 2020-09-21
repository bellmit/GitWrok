delete from tmobile_config_form t where t.C_FORMURL='approval/transfer/assetsDeliv.htm';
delete from tmobile_config_field t where t.C_MODELCODE='approval/transfer/assetsDeliv.htm';


insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('approval/transfer/assetsDeliv.htm', '�ʲ�����������', null, 'transferContractManager.getAssetTransferForMobile()', '1', 'MOBILE', null,'1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/transfer/assetsDeliv.htm', '�ʲ���������', 'assetseller', null, '�ʲ����۷�', '1', 3, null, null, null, null, '�ֻ���ֵ��Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/transfer/assetsDeliv.htm', '�ʲ���������', 'contractbalance_display', null, '�չ����', '1', 4, null, null, null, null, '�ֻ���ֵ��Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/transfer/assetsDeliv.htm', '�ʲ���������', 'householdValueSum', null, '��ֵ�ϼ�', '1', 5, null, null, null, null, '�ֻ���ֵ��Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/transfer/assetsDeliv.htm', '�ʲ���������', 'loanaccountgird', null, '�ֻ���ֵ��Ϣ', '9', 6, '{"title":"�ֻ���ֵ��Ϣ","columns":[{"name":"����˱��","code":"loanaccountnum","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�����/ʵ��","code":"loanaccountname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��ֵ����","code":"householdValue","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��ֵ����","code":"lastbalanceall","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�ɱ��Զ���̯","code":"loanaccountcosts","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"ʵ�ʻ��ɱ�","code":"realloanaccountcosts","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��ֵʱ��","code":"valuationDate","fieldType":"4","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��������","code":"depname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"������","code":"loandbcode","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '�ֻ���ֵ��Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/transfer/assetsDeliv.htm', '�ʲ���������', 'projectname', null, '��Ŀ����', '1', 2, null, null, null, null, '�ֻ���ֵ��Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/transfer/assetsDeliv.htm', '�ʲ���������', 'transferCheckBoxs', null, '����¼���Ƿ�����', '10', 1, 'islawsuitinfofull:������Ϣ��¼������;isexecinfofull:ִ����Ϣ��¼������;isseizedinfofull:��ȫ��Ϣ��¼������;isbankruptcyinfofull:�Ʋ�������Ϣ��¼������;isbidinfofull:Ͷ������¼������', null, null, null, '����¼���Ƿ�����', null);
