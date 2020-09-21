delete from tmobile_config_form t where t.C_FORMURL='packetreception/assetpacket/assetbidprocess.htm';
delete from tmobile_config_field t where t.C_MODELCODE='packetreception/assetpacket/assetbidprocess.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('packetreception/assetpacket/assetbidprocess.htm', '�ʲ���Ͷ���', null, 'bidInfoManager.getBidInfoForMobile()', '1', 'MOBILE', null, '1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '�ʲ���Ͷ���', 'risktype', null, '��������', '6', 1, 'PM_RISK_TYPE', null, null, null, '��Ŀ��Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '�ʲ���Ͷ���', 'assetbusitype', null, 'ҵ������', '6', 2, 'PM_BUSINESSCATE', null, null, null, '��Ŀ��Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '�ʲ���Ͷ���', 'businesstype', null, 'ҵ�����', '6', 1, 'PM_BUSINESS_TYPE', null, null, null, '��Ŀ��Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '�ʲ���Ͷ���', 'bankprice', null, '���е׼�', '2', 12, null, null, null, null, 'Ͷ����', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '�ʲ���Ͷ���', 'participationtype', null, '��������', '6', 3, 'PARTICIPATIONTYPE', null, null, null, 'Ͷ����Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '�ʲ���Ͷ���', 'pushpackettype', null, '�ư�����', '6', 4, 'PUSHPACKAGETYPE', null, null, null, 'Ͷ����Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '�ʲ���Ͷ���', 'minbidprice', null, '������Ȩ��߼�', '2', 5, null, null, null, null, 'Ͷ����Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '�ʲ���Ͷ���', 'maxbidprice', null, '�ܾ��������Ȩ����', '2', 6, null, null, null, null, 'Ͷ����Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '�ʲ���Ͷ���', 'quoteamount', null, '���۽��', '2', 7, null, null, null, null, 'Ͷ����Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '�ʲ���Ͷ���', 'biddate', null, 'Ͷ������', '1', 8, null, null, null, null, 'Ͷ����Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '�ʲ���Ͷ���', 'memo', null, '��ע', '1', 9, null, null, null, null, 'Ͷ����Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '�ʲ���Ͷ���', 'bidresult', null, 'Ͷ����', '9', 11, '{"title":"Ͷ����","columns":[{"name":"���۹�˾","code":"bidcompany_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"����","code":"costamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���۽��","code":"bidamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�����ۿ�(%)","code":"costrate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�Ƿ��б�","code":"iswinbid_show","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, 'Ͷ����', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '�ʲ���Ͷ���', 'openbiddate', null, '��������', '1', 10, null, null, null, null, 'Ͷ����', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('packetreception/assetpacket/assetbidprocess.htm', '�ʲ���Ͷ���', 'additionalRemark', null, '����˵��', '2', 13, null, null, null, null, 'Ͷ����', null);
