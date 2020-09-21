delete from tmobile_config_form t where t.C_FORMURL='pm/project/voteflow/meetingprepare.htm';
delete from tmobile_config_field t where t.C_MODELCODE='pm/project/voteflow/meetingprepare.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('pm/project/voteflow/meetingprepare.htm', 'Ͷ��׼����', null, 'meetingApplyManager.getMeetingPrepareMapForMoblie()', '0', 'MOBILE', null, '1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/project/voteflow/meetingprepare.htm', 'Ͷ��׼����', 'convenedate', null, '���ٿ�����', '4', 3, null, null, null, null, '����Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/project/voteflow/meetingprepare.htm', 'Ͷ��׼����', 'meetingnum', null, '�����ڴ�', '1', 2, null, null, null, null, '����Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/project/voteflow/meetingprepare.htm', 'Ͷ��׼����', 'meetingtable', null, '�᰸��Ϣ', '9', 12, '{"title":"�᰸��Ϣ","columns":[{"name":"���ϻ��᰸","code":"companyname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��������","code":"meetingtype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"����/�����ʽ�","code":"requiredfund","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���鲿��","code":"startmotiondept_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"Ͷ����ʽ","code":"votingtype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '����Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/project/voteflow/meetingprepare.htm', 'Ͷ��׼����', 'meetingtype', null, '��������', '6', 1, 'MEETING_TYPE', null, null, null, '����Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/project/voteflow/meetingprepare.htm', 'Ͷ��׼����', 'memo', null, '��ע', '3', 4, null, null, null, null, '����Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/project/voteflow/meetingprepare.htm', 'Ͷ��׼����', 'meetingPlace', null, '����ص�', '1', 6, null, null, null, null, '����Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/project/voteflow/meetingprepare.htm', 'Ͷ��׼����', 'meetingAccessCode', null, '���������', '1', 7, null, null, null, null, '����Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/project/voteflow/meetingprepare.htm', 'Ͷ��׼����', 'meetingNo', null, '�绰�������', '1', 8, null, null, null, null, '����Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/project/voteflow/meetingprepare.htm', 'Ͷ��׼����', 'meetingLink', null, '��������', '1', 9, null, null, null, null, '����Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/project/voteflow/meetingprepare.htm', 'Ͷ��׼����', 'meetingtime', null, '����ʱ��', '1', 10, null, null, null, null, '����Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/project/voteflow/meetingprepare.htm', 'Ͷ��׼����', 'view_participants', null, '�λ���Ա', '1', 11, null, null, null, null, '����Ϣ', null);


