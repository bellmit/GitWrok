
--�����������
delete from tmobile_config_form t where t.C_FORMURL='/agency/agencyManage/agencyinboundflow.htm';
delete from tmobile_config_field t where t.C_MODELCODE='/agency/agencyManage/agencyinboundflow.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/agency/agencyManage/agencyinboundflow.htm', '�����������', null, 'talternativeLibraryManager.getAgencyInboundForMobile()', '1', 'MOBILE', null, '1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/agency/agencyManage/agencyinboundflow.htm', '�����������', 'agencyInboundTable', null, '����н����', '9', 2, '{"title":"����н����","columns":[{"name":"�н��������","code":"customername","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�н��������","code":"orgtype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��������","code":"qualificationtype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��������","code":"area_view","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"������","code":"responsibleperson","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��ϵ��","code":"contract","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��ϵ�绰","code":"contractnumber","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '����н����', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/agency/agencyManage/agencyinboundflow.htm', '�����������', 'libdate', null, '�������', '1', 1, null, null, null, null, '������Ϣ', null);


--����ѡƸ����
delete from tmobile_config_form t where t.C_FORMURL='/agency/agencyManage/specialagencyapplyflow.htm';
delete from tmobile_config_field t where t.C_MODELCODE='/agency/agencyManage/specialagencyapplyflow.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/agency/agencyManage/specialagencyapplyflow.htm', '����ѡƸ����', null, 'talternativeLibraryManager.getSpecialAgencyApplyForMobile()', '1', 'MOBILE', null, '1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/agency/agencyManage/specialagencyapplyflow.htm', '����ѡƸ����', 'memo', null, '����', '1', 4, null, null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/agency/agencyManage/specialagencyapplyflow.htm', '����ѡƸ����', 'price', null, '����', '2', 3, null, null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/agency/agencyManage/specialagencyapplyflow.htm', '����ѡƸ����', 'rivalname', null, '�н��������', '1', 2, null, null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/agency/agencyManage/specialagencyapplyflow.htm', '����ѡƸ����', 'projectname', null, '��Ŀ����', '1', 1, null, null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/agency/agencyManage/specialagencyapplyflow.htm', '����ѡƸ����', 'remark', null, 'ժҪ', '1', 5, null, null, null, null, '������Ϣ', null);
