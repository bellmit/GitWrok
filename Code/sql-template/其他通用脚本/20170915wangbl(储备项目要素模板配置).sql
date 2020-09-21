delete from tproject_config_review t where t.c_tempcode='CBXM_001' and t.c_classcode in ('admin','9999');
delete from tproject_config_maintain t where t.c_tempcode='CBXM_001' and t.c_classcode in ('admin','9999');
delete from tproject_factor_rule t where t.c_ruleid='storeprojectinfo_1';
delete from tproject_factor_info t
 where t.c_factorcode in (select tfr.c_factorcode
                            from tproject_factor_relation tfr
                           where tfr.c_tempcode = 'CBXM_001');
delete from tproject_factor_relation t where t.c_tempcode='CBXM_001';
delete from tproject_factor_temp t where t.c_tempcode='CBXM_001';
--����������ĿҪ�ع���
insert into tproject_factor_rule (C_RULEID, C_RULENAME, C_EVENTTYPE, C_FUNNAME, C_FUNARGS, C_ISINITEXE, C_TEMPCODE, C_ISUSE, C_ISNOTEXERULE)
values ('storeprojectinfo_1', '������Ŀ���=������Ŀ����', 'change', 'exp', '[storeproprojectshortname]=[storeproprojectname]', '0', null, '1', null);

--����������ĿҪ��
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storeproprojectname', '������Ŀ����', '1', '������Ϣ', '11', '������Ϣ', null, 'tproject_store_info', 'projectname', '0', null, '1', null, 255, 200, 18, 1, 1, 2, '1', '0', null, '1', '1', '3', 'storeproprojectname', 'storeprojectinfo_1', '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storeproprojectcode', '������Ŀ���', '1', '������Ϣ', '11', '������Ϣ', null, 'tproject_store_info', 'projectcode', '0', null, '1', null, 20, 200, 18, 1, 1, 1, '1', '1', '��ϵͳ�Զ����ɣ�������д��', '1', '1', '3', 'storeproprojectcode', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storeproprojectshortname', '������Ŀ���', '1', '������Ϣ', '11', '������Ϣ', null, 'tproject_store_info', 'projectshortname', '0', null, '1', null, 255, 200, 18, 1, 1, 3, '1', '0', null, '1', '1', '3', 'storeproprojectshortname', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storeprojectnature', '������Ŀ����', '1', '������Ϣ', '11', '������Ϣ', null, 'tproject_store_info', 'projectnature', '0', '09', '6', 'PM_PROJECT_NATURE', 2, 200, 18, 1, 1, 4, '1', '0', null, '1', '1', '3', 'storeprojectnature', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storeprojectprovince', '����ʡ��', '1', '������Ϣ', '11', '������Ϣ', null, 'tproject_store_info', 'projectprovince', '0', null, '6', 'PROVINCE_INFO', 255, 250, 18, 1, 1, 7, '1', '0', null, '1', '1', '3', 'storeprojectprovince', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storepreSignAmount', 'Ԥ��ǩԼ���', '2', 'ǩԼ���', '22', 'ǩԼ���', null, 'tproject_store_info', 'preSignAmount', '0', null, '16', null, 999999999, 778, 250, 1, 1, 14, '1', '0', null, '1', '1', '3', 'storepreSignAmount', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storegroupName', '��������', '1', '������Ϣ', '11', '������Ϣ', null, 'tproject_store_info', 'groupName', '0', null, '1', null, 255, 200, 18, 1, 1, 6, '1', '0', null, '1', '1', '3', 'storegroupName', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storeprojectcity', '����', '1', '������Ϣ', '1', '������Ϣ', null, 'tproject_store_info', 'projectcity', '0', null, '14', 'cityNoManager.getCityNoToMapList([storeprojectprovince]:string)', 255, 250, 18, 1, 1, 8, '1', '0', null, '1', '1', '3', 'storeprojectcity', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storeprojectleader', '��Ŀ�鳤', '1', '������Ϣ', '11', '������Ϣ', null, 'tproject_store_info', 'projectleader', '0', null, '7', 'userSelectorForFactor(''{fieldid}'',''0'',''role'',''9999'') ', 50, 200, 18, 1, 1, 7, '1', '0', null, '1', '1', '3', 'storeprojectleader', null, '0', 'select u.user_name as factorvalue from tsys_user u where u.user_id=''{storeprojectleader}''', null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storesponsor', '������Ա', '1', '������Ϣ', '11', '������Ϣ', null, 'tproject_store_info', 'sponsor', '0', null, '7', 'userSelectorForFactor(''{fieldid}'',''0'',''role'',''9999'') ', 50, 200, 18, 1, 1, 7, '1', '0', null, '1', '1', '3', 'storesponsor', null, '0', 'select u.user_name as factorvalue from tsys_user u where u.user_id=''{storesponsor}''', null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storeisSigned', '�Ƿ���ǩԼ', '2', 'ǩԼ���', '22', 'ǩԼ���', null, 'tproject_store_info', 'isSigned', '0', null, '6', 'YES_OR_NO', 255, 200, 18, 1, 1, 9, '1', '0', null, '1', '1', '3', 'storeisSigned', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storepreSignTime', 'Ԥ��ǩԼʱ��', '2', 'ǩԼ���', '22', 'ǩԼ���', null, 'tproject_store_info', 'preSignTime', '0', null, '4', null, 20, 200, 18, 1, 1, 10, '1', '0', null, '1', '1', '3', 'storepreSignTime', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storeisStartc3process', '�Ƿ���C3����', '3', '�������', '33', '�������', null, 'tproject_store_info', 'isStartc3process', '0', null, '6', 'START_C3_PROCESS', 255, 200, 18, 1, 1, 11, '1', '0', null, '1', '1', '3', 'storeisStartc3process', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storeisImplement', '�Ƿ���ʵʩ', '4', 'ʵʩ���', '44', 'ʵʩ���', null, 'tproject_store_info', 'isImplement', '0', '0', '6', 'YES_OR_NO', 255, 200, 18, 1, 1, 12, '1', '0', null, '1', '1', '3', 'storeisImplement', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storeimplementTime', 'ʵʩʱ��', '4', 'ʵʩ���', '44', 'ʵʩ���', null, 'tproject_store_info', 'implementTime', '0', null, '4', null, 20, 200, 18, 1, 1, 20, '1', '0', null, '1', '1', '3', 'storeimplementTime', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storeimplementAmount', 'ʵʩ���', '4', 'ʵʩ���', '44', 'ʵʩ���', null, 'tproject_store_info', 'implementAmount', '0', null, '16', null, 40, 200, 18, 1, 1, 13, '1', '0', null, '1', '1', '3', 'storeimplementAmount', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storeisVisitCustomer', '�Ƿ��Ѱݷÿͻ�', '5', '�ݷÿͻ����', '55', '�ݷÿͻ����', null, 'tproject_store_info', 'isVisitCustomer', '0', '0', '6', 'YES_OR_NO', 255, 200, 18, 1, 1, 15, '1', '0', null, '1', '1', '3', 'storeisVisitCustomer', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storeisZZGcooperation', '�ͻ��Ƿ���ծת�ɺ�����Ը', '5', '�ݷÿͻ����', '55', '�ݷÿͻ����', null, 'tproject_store_info', 'isZZGcooperation', '0', '0', '6', 'COOPERATION_WILLING', 255, 200, 18, 1, 1, 15, '1', '0', null, '1', '1', '3', 'storeisZZGcooperation', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storelaterestcommTime', '��ͻ����һ�ι�ͨʱ��', '5', '�ݷÿͻ����', '55', '�ݷÿͻ����', null, 'tproject_store_info', 'laterestcommTime', '0', null, '4', null, 20, 200, 18, 1, 1, 20, '1', '0', null, '1', '1', '3', 'storelaterestcommTime', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storeisComProjectform', '�Ƿ�����ɷ����ƶ�', '6', '����������̸���', '66', '����������̸���', null, 'tproject_store_info', 'isComProjectform', '0', '0', '6', 'WHETHER_FORMULATED', 255, 200, 18, 1, 1, 15, '1', '0', null, '1', '1', '3', 'storeisComProjectform', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storeisDefcommModel', '�Ƿ���ȷ������ģʽ', '6', '����������̸���', '66', '����������̸���', null, 'tproject_store_info', 'isDefcommModel', '0', '0', '6', 'WHETHER_DETERMINED', 255, 200, 18, 1, 1, 16, '1', '0', null, '1', '1', '3', 'storeisDefcommModel', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storecooperationModel', '����ģʽ', '6', '����������̸���', '66', '����������̸���', null, 'tproject_store_info', 'cooperationModel', '0', '0', '6', 'COOPERATION_MODEL', 255, 200, 18, 1, 1, 17, '1', '0', null, '1', '1', '3', 'storecooperationModel', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storeisDefObject', '�Ƿ���ȷ��Ŀ��ͻ��������ʲ�', '6', '����������̸���', '66', '����������̸���', null, 'tproject_store_info', 'isDefObject', '0', '0', '6', 'WHETHER_DETERMINED', 255, 200, 18, 1, 1, 18, '1', '0', null, '1', '1', '3', 'storeisDefObject', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storetargetCustomer', '��ʵʩĿ��ͻ��������ʲ�', '6', '����������̸���', '66', '����������̸���', null, 'tproject_store_info', 'targetCustomer', '0', '0', '6', 'TARGET_CUSTOMER', 255, 200, 18, 1, 1, 19, '1', '0', null, '1', '1', '3', 'storetargetCustomer', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storeisDefQuittype', '�Ƿ���ȷ���ʽ��˳���ʽ', '6', '����������̸���', '66', '����������̸���', null, 'tproject_store_info', 'isDefQuittype', '0', '0', '6', 'WHETHER_DETERMINED', 255, 200, 18, 1, 1, 20, '1', '0', null, '1', '1', '3', 'storeisDefQuittype', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storequitType', '�ʽ��˳���ʽ', '6', '����������̸���', '66', '����������̸���', null, 'tproject_store_info', 'quitType', '0', '0', '6', 'QUITWAY_CB', 255, 200, 18, 1, 1, 21, '1', '0', null, '1', '1', '3', 'storequitType', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storeisDefriskmeasure', '�Ƿ���ȷ�����ջ��ʹ�ʩ', '6', '����������̸���', '66', '����������̸���', null, 'tproject_store_info', 'isDefriskmeasure', '0', '0', '6', 'WHETHER_DETERMINED', 255, 200, 18, 1, 1, 22, '1', '0', null, '1', '1', '3', 'storeisDefriskmeasure', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storeriskControlMeasure', '���տ��ƴ�ʩ', '6', '����������̸���', '66', '����������̸���', null, 'tproject_store_info', 'riskControlMeasure', '0', '0', '6', 'RISKCONTROLMEASURE', 255, 200, 18, 1, 1, 23, '1', '0', null, '1', '1', '3', 'storeriskControlMeasure', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storeisDefMQL', '�Ƿ���ȷ�������޼�����', '6', '����������̸���', '66', '����������̸���', null, 'tproject_store_info', 'isDefMQL', '0', '0', '6', 'WHETHER_DETERMINED', 255, 200, 18, 1, 1, 24, '1', '0', null, '1', '1', '3', 'storeisDefMQL', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storetimelimit', '����', '6', '����������̸���', '66', '��������̸���', null, 'tproject_store_info', 'timelimit', '0', null, '2', null, 20, 250, 18, 1, 1, 25, '1', '0', null, '1', '1', '3', 'storetimelimit', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storeRate', '����(%)', '6', '����������̸���', '66', '����������̸���', null, 'tproject_store_info', 'storeRate', '0', null, '2', null, 50, 250, 18, 1, 1, 28, '0', '0', null, '1', '1', '3', 'storeRate', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storecurrentProblem', '��ǰ����������������', '7', '������Ϣ', '77', '������Ϣ', null, 'tproject_store_info', 'currentProblem', '0', null, '3', null, 1400, 600, 8, 3, 2, 29, '1', '0', null, '1', '1', '3', 'storecurrentProblem', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storenextStagePlan', '�½׶ι����ƻ�', '7', '������Ϣ', '77', '������Ϣ', null, 'tproject_store_info', 'nextStagePlan', '0', null, '3', null, 1400, 600, 8, 3, 2, 30, '1', '0', null, '1', '1', '3', 'storenextStagePlan', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storememo', '��ע', '7', '������Ϣ', '77', '������Ϣ', null, 'tproject_store_info', 'memo', '0', null, '3', null, 1400, 600, 8, 3, 2, 31, '1', '0', null, '1', '1', '3', 'storememo', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storeinvestindustry', '��ҵ', '1', '������Ϣ', '11', '������Ϣ', null, 'tproject_store_info', 'investindustry', '0', null, '6', 'PM_INVEST_INDUSTRY', 2, 250, 18, 1, 1, 9, '1', '0', null, '1', '1', '3', 'storeinvestindustry', null, '0', null, null, null, null);

insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT)
values ('storepreImplementAmount', 'Ԥ��ʵʩ���', '3', '�������', '33', '�������', null, 'tproject_store_info', 'preImplementAmount', '0', null, '16', null, 40, 200, 18, 1, 1, 13, '1', '0', null, '1', '1', '3', 'storepreImplementAmount', null, '0', null, null, null, null);

--����������ĿҪ��ģ��
insert into tproject_factor_temp (C_TEMPCODE, C_TEMPNAME, C_TEMPDESC, C_CREATEUSER, D_CREATETIME, D_UPDATETIME, C_FACTORFLAG, C_DIRECTION, C_UPDATEUSER, C_BUSITYPE, C_DICTITEMCODE, C_ISDEFAULT, C_ISPUBLIC, C_ISUSE, C_PROJTYPE, C_TEMPTYPE)
values ('CBXM_001', '������ĿҪ��ģ��', null, 'admin', to_date('17-06-2015 09:57:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('15-09-2017 15:50:38', 'dd-mm-yyyy hh24:mi:ss'), '3', null, 'admin', '1', null, '1', '1', '1', null, null);

--����������ĿҪ��ģ����Ҫ�ع�����ϵ
insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storeproprojectcode', null, null, 1, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storeproprojectname', null, null, 2, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storeproprojectshortname', null, null, 3, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storeprojectnature', null, null, 4, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storegroupName', null, null, 6, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storeprojectprovince', null, null, 7, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storeprojectcity', null, null, 8, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storeinvestindustry', null, null, 9, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storeprojectleader', null, null, 10, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storesponsor', null, null, 11, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storeisSigned', null, null, 9, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storepreSignTime', null, null, 10, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storepreSignAmount', null, null, 14, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storeisStartc3process', null, null, 11, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storepreImplementAmount', null, null, 13, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storeisImplement', null, null, 12, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storeimplementAmount', null, null, 15, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storeimplementTime', null, null, 14, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storeisVisitCustomer', null, null, 15, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storeisZZGcooperation', null, null, 15, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storelaterestcommTime', null, null, 20, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storeisComProjectform', null, null, 15, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storeisDefcommModel', null, null, 16, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storecooperationModel', null, null, 17, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storeisDefObject', null, null, 18, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storetargetCustomer', null, null, 19, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storeisDefQuittype', null, null, 20, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storequitType', null, null, 21, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storeisDefriskmeasure', null, null, 22, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storeriskControlMeasure', null, null, 23, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storeisDefMQL', null, null, 24, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storetimelimit', null, null, 25, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storeRate', null, null, 28, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storememo', null, null, 31, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storecurrentProblem', null, null, 29, '0', '0', '0', null, null);

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('CBXM_001', 'storenextStagePlan', null, null, 30, '0', '0', '0', null, null);

--����������ĿҪ��Ĭ����ͨ�û���ɫ��ϵͳ����Ա��ɫ�޸�Ȩ��
insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeproprojectcode', '1', '0');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeproprojectname', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeproprojectshortname', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeprojectnature', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storegroupName', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeprojectprovince', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeprojectcity', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeinvestindustry', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeprojectleader', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storesponsor', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeisSigned', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storepreSignTime', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storepreSignAmount', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeisStartc3process', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storepreImplementAmount', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeisImplement', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeimplementAmount', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeimplementTime', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeisVisitCustomer', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeisZZGcooperation', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storelaterestcommTime', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeisComProjectform', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeisDefcommModel', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storecooperationModel', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeisDefObject', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storetargetCustomer', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeisDefQuittype', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storequitType', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeisDefriskmeasure', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeriskControlMeasure', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeisDefMQL', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storetimelimit', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeRate', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storememo', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storecurrentProblem', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storenextStagePlan', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeproprojectcode', '1', '0');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeproprojectname', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeproprojectshortname', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeprojectnature', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storegroupName', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeprojectprovince', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeprojectcity', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeinvestindustry', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeprojectleader', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storesponsor', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeisSigned', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storepreSignTime', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storepreSignAmount', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeisStartc3process', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storepreImplementAmount', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeisImplement', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeimplementTime', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeimplementAmount', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeisVisitCustomer', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeisZZGcooperation', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storelaterestcommTime', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeisComProjectform', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeisDefcommModel', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storecooperationModel', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeisDefObject', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storetargetCustomer', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeisDefQuittype', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storequitType', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeisDefriskmeasure', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeriskControlMeasure', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeisDefMQL', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storetimelimit', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeRate', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storecurrentProblem', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storenextStagePlan', '1', '1');

insert into tproject_config_maintain (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISCANVIEW, C_ISCANUPDATE)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storememo', '1', '1');

--����������ĿҪ��Ĭ����ͨ�û���ɫ��ϵͳ����Ա��ɫ����Ȩ��
insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeproprojectname', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeproprojectshortname', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeprojectnature', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storegroupName', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeprojectprovince', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeprojectcity', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeinvestindustry', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeprojectleader', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storesponsor', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeisSigned', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storepreSignTime', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storepreSignAmount', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeisStartc3process', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storepreImplementAmount', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeisImplement', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeimplementTime', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeimplementAmount', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeisVisitCustomer', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeisZZGcooperation', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storelaterestcommTime', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeisComProjectform', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeisDefcommModel', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storecooperationModel', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeisDefObject', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storetargetCustomer', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeisDefQuittype', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storequitType', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeisDefriskmeasure', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeriskControlMeasure', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeisDefMQL', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storetimelimit', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storeRate', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storecurrentProblem', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storenextStagePlan', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', '��ͨ�û���ɫ', '9999', 'CBXM_001', 'storememo', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeproprojectname', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeproprojectshortname', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeprojectnature', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storegroupName', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeprojectprovince', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeprojectcity', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeinvestindustry', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeprojectleader', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storesponsor', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeisSigned', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storepreSignTime', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storepreSignAmount', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeisStartc3process', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storepreImplementAmount', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeisImplement', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeimplementTime', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeimplementAmount', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeisVisitCustomer', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeisZZGcooperation', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storelaterestcommTime', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeisComProjectform', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeisDefcommModel', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storecooperationModel', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeisDefObject', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storetargetCustomer', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeisDefQuittype', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storequitType', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeisDefriskmeasure', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeriskControlMeasure', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeisDefMQL', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storetimelimit', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storeRate', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storecurrentProblem', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storenextStagePlan', '1');

insert into tproject_config_review (C_CLASSTYPE, C_CLASSNAME, C_CLASSCODE, C_TEMPCODE, C_FACTORCODE, C_ISREVIEW)
values ('1', 'ϵͳ����Ա��ɫ', 'admin', 'CBXM_001', 'storememo', '1');
