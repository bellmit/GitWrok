
--��׼��ѡƸ
delete from tmobile_config_form t where t.C_FORMURL='/agency/agencyManage/standardagencyapplyflow.htm';
delete from tmobile_config_field t where t.C_MODELCODE='/agency/agencyManage/standardagencyapplyflow.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/agency/agencyManage/standardagencyapplyflow.htm', '��׼��ѡƸ����', null, 'talternativeLibraryManager.getStandardAgencyApplyForMobile()', '1', 'MOBILE', null, '1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/agency/agencyManage/standardagencyapplyflow.htm', '��׼��ѡƸ', 'applydate', null, 'ѡƸ����', '1', 1, null, null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/agency/agencyManage/standardagencyapplyflow.htm', '��׼��ѡƸ', 'applydetailtable', null, 'ѡƸ�н����', '9', 3, '{"title":"ѡƸ�н����","columns":[{"name":"�н��������","code":"rivalname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��������","code":"qualificationtype","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��ϵ��","code":"contact","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��ϵ�绰","code":"contractnumber","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, 'ѡƸ�н����', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/agency/agencyManage/standardagencyapplyflow.htm', '��׼��ѡƸ', 'applyduedate', null, '��������', '1', 2, null, null, null, null, '������Ϣ', null);


--�Ǳ�׼��ѡƸ
delete from tmobile_config_form t where t.C_FORMURL='/agency/agencyManage/agencySelectUnstdForm.htm';
delete from tmobile_config_field t where t.C_MODELCODE='/agency/agencyManage/agencySelectUnstdForm.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/agency/agencyManage/agencySelectUnstdForm.htm', '�Ǳ�׼��ѡƸ����', null, 'talternativeLibraryManager.getAgencySelectUnstdForMobile()', '1', 'MOBILE', null, '1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/agency/agencyManage/agencySelectUnstdForm.htm', '�Ǳ�׼��ѡƸ', 'agencyApplyDetailGrid', null, '��ѡ����', '9', 3, '{"title":"��ѡ����","columns":[{"name":"��ѡ����","code":"officeid_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"������","code":"operator","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"����","code":"price","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���ձ���","code":"finalprice","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�Ƿ��б�","code":"isbid","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��ע","code":"memo","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '��ѡ����', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/agency/agencyManage/agencySelectUnstdForm.htm', '�Ǳ�׼��ѡƸ', 'projectname', null, '��Ŀ����', '1', 1, null, null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/agency/agencyManage/agencySelectUnstdForm.htm', '�Ǳ�׼��ѡƸ', 'remark', null, 'ժҪ', '1', 4, null, null, null, null, '������Ϣ', null);



--Ͷ����Ŀ������Ƹ�н������Ϣ21Ҫ��
delete from tmobile_config_field t where t.C_MODELCODE='/pm/project/agencyapplyinvest.htm';

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/agencyapplyinvest.htm', '��Ƹ�н������Ϣ', 'tproject_info_applyagencyinfo_eg', null, '��Ƹ�н������Ϣ', '9', 1, '{"title":"��Ƹ�н������Ϣ","columns":[{"name":"�н��������","code":"view_orgtype","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�Ƿ��׼��ѡƸ","code":"view_standardapply","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�Ƿ���������","code":"view_specialapply","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�н��������(����)","code":"view_applyedagency","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�н��������(����)","code":"view_notapplyedagency","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '��Ƹ�н������Ϣ', null);