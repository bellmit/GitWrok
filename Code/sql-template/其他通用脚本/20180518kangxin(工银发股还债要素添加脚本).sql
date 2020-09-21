declare
begin
if not fc_isexistsprojectfactorinfo('tproject_info_durdiligencelaunchorg') then
	insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_durdiligencelaunchorg', '�����������', '1', '������Ϣ', '11', '������Ϣ', null, 'tproject_info_amc', 'durdiligencelaunchorg', '0', null, '6', 'DUE_DILIGENCE_LAUNCH_ORG', 5, 200, 18, 1, 1, 12, '1', '0', null, '1', '8', '1', 'tproject_info_durdiligencelaunchorg', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_predictinvestdate') then
	insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_predictinvestdate', 'Ԥ��Ͷ������', '1', '������Ϣ', '11', '������Ϣ', null, 'tproject_info_amc', 'predictinvestdate', '0', null, '4', null, 20, 250, 18, 1, 1, 44, '1', '0', null, '1', '8', '1', 'tproject_info_predictinvestdate', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_investtarget') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_investtarget', 'Ͷ�ʱ��', '2', 'Ͷ�ʱ��', '1', 'Ͷ�ʱ��', null, 'tproject_info_investtarget', null, '0', null, '21', '/pm/project/projectInvestTargets.htm', 99999, 200, 300, 1, 2, 1, '1', '0', null, '1', '7', '1', 'tproject_info_investtarget', null, '1', null, 'projectInvestTargetManager.saveProjectTargetInfoGrid(:map)', null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_pshorgno') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_pshorgno', 'ծת�ɺ�����ҵ', '2', 'Ͷ�ʱ��', '1', 'Ͷ�ʱ��', null, 'tproject_info', 'pshorgno', '0', null, '7', 'customerSelector(''{fieldid}'',''0'',''4'',null)', 255, 250, 18, 1, 1, 2, '1', '0', null, '1', '1', '1', 'tproject_info_pshorgno', null, '0', 'select t.c_customername factorvalue from tcustomer_info t,tcustomer_role_relation tt where t.c_customercode = tt.c_customercode and tt.c_relationcode = ''{tproject_info_pshorgno}''', null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_framesignedmoney') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_framesignedmoney', '���Э��ǩ�����', '2', 'Ͷ�ʱ��', '1', 'Ͷ�ʱ��', null, 'tproject_info_amc', 'framesignedmoney', '0', null, '16', null, 16, 200, 18, 1, 1, 4, '1', '0', null, '1', '8', '1', 'tproject_info_framesignedmoney', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_applyinvestmoney') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_applyinvestmoney', '������Ͷ�ʽ��', '2', 'Ͷ�ʱ��', '1', 'Ͷ�ʱ��', null, 'tproject_info_amc', 'applyinvestmoney', '0', null, '16', null, 16, 200, 18, 1, 1, 5, '1', '0', null, '1', '8', '1', 'tproject_info_applyinvestmoney', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_submitinvestmoney') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_submitinvestmoney', '������Ͷ�ʽ��', '2', 'Ͷ�ʱ��', '1', 'Ͷ�ʱ��', null, 'tproject_info_amc', 'submitinvestmoney', '0', null, '16', null, 16, 200, 18, 1, 1, 6, '1', '0', null, '1', '8', '1', 'tproject_info_submitinvestmoney', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_predictinvestlimit') then
	insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_predictinvestlimit', 'Ԥ��Ͷ������(��)', '3', '���׼ܹ�', '1', '���׼ܹ�', null, 'tproject_info_amc', 'predictinvestlimit', '0', null, '2', null, 10, 250, 18, 1, 1, 3, '1', '0', null, '1', '8', '1', 'tproject_info_predictinvestlimit', null, '0', null, null, null, null, null);
end if;
if not fc_isexistsprojectfactorinfo('tproject_info_investintentmemo') then
	insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_investintentmemo', 'Ͷ������˵��', '3', '���׼ܹ�', '1', '���׼ܹ�', null, 'tproject_info_detail', 'investintentmemo', '0', null, '3', null, 3000, 600, 8, 1, 2, 5, '1', '0', null, '1', '2', '1', 'tproject_info_investintentmeno', null, '0', null, null, null, null, null);
end if;
if not fc_isexistsprojectfactorinfo('tproject_info_channelcostmemo') then
	insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_channelcostmemo', 'ͨ���ɱ����', '3', '���׼ܹ�', '1', '���׼ܹ�', null, 'tproject_info_detail', 'channelcostmemo', '0', null, '3', null, 3000, 600, 8, 1, 2, 6, '1', '0', null, '1', '2', '1', 'tproject_info_channelcostmemo', null, '0', null, null, null, null, null);
end if;
if not fc_isexistsprojectfactorinfo('tproject_info_maininvestpart') then
	insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_maininvestpart', '����Ͷ������', '3', '���׼ܹ�', '1', '���׼ܹ�', null, 'tproject_info_amc', 'maininvestpart', '0', null, '7', 'fundSelector(''{fieldid}'','''',selectFund)', 255, 250, 18, 1, 1, 2, '1', '0', null, '1', '8', '1', 'tproject_info_maininvestpart', null, '0', 'select t.c_projectname as factorvalue from tproject_info t where t.c_projectcode=''{tproject_info_maininvestpart}''', null, null, null, null);
end if;
if not fc_isexistsprojectfactorinfo('tproject_info_tranframework') then
	insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_tranframework', '���׼ܹ�', '3', '���׼ܹ�', '1', '���׼ܹ�', null, 'tproject_info_tranframework', null, '0', null, '21', '/pm/project/projectTransactionFrameworks.htm', 99999, 200, 300, 1, 2, 1, '1', '0', null, '1', '7', '1', 'tproject_info_tranframework', null, '1', null, 'projectTransactionFrameworkManager.saveProjectFrameworkInfoGrid(:map)', null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_isneeddirector') then
	insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_isneeddirector', '�Ƿ���פ����', '4', '�ֹɹ���', '1', '�ֹɹ���', null, 'tproject_info_amc', 'isneeddirector', '6', null, '0', 'YES_OR_NO', 2, 200, 18, 1, 1, 1, '1', '0', null, '1', '8', '1', 'tproject_info_isneeddirector', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_isneedsupervisor') then
	insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_isneedsupervisor', '�Ƿ���פ����', '4', '�ֹɹ���', '1', '�ֹɹ���', null, 'tproject_info_amc', 'isneedsupervisor', '6', null, '0', 'YES_OR_NO', 2, 200, 18, 1, 1, 2, '1', '0', null, '1', '8', '1', 'tproject_info_isneedsupervisor', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_droptype') then
	insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_droptype', '�˳���ʽ', '5', '�˳�������Ͷ������', '1', '�˳�������Ͷ������', null, 'tproject_info_amc', 'droptype', '0', null, '9', 'DROP_TYPE', 20, 200, 18, 1, 1, 1, '1', '0', null, '1', '8', '1', 'tproject_info_droptype', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_dropdescribe') then
	insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_dropdescribe', '�˳���������', '5', '�˳�������Ͷ������', '1', '�˳�������Ͷ������', null, 'tproject_info_detail', 'dropdescribe', '0', null, '3', null, 3000, 600, 8, 1, 2, 2, '1', '0', null, '1', '2', '1', 'tproject_info_dropdescribe', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_predictyield2') then
	insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_predictyield2', 'Ԥ��������(%)', '5', '�˳�������Ͷ������', '1', '�˳�������Ͷ������', null, 'tproject_info', 'predictyield', '0', null, '2', null, 255, 250, 18, 1, 1, 3, '1', '0', null, '1', '', '1', 'tproject_info_predictyield2', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_predictyieldexplain') then
	insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_predictyieldexplain', 'Ԥ������˵��', '5', '�˳�������Ͷ������', '1', '�˳�������Ͷ������', null, 'tproject_info_detail', 'predictyieldexplain', '0', null, '3', null, 3000, 600, 8, 1, 2, 2, '1', '0', null, '1', '2', '1', 'tproject_info_predictyieldexplain', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_approveinvestmoney') then
	insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_approveinvestmoney', '����Ͷ�ʽ��', '7', '�������', '1', '�������', null, 'tproject_info_amc', 'approveinvestmoney', '0', null, '16', null, 16, 200, 18, 1, 1, 1, '1', '0', null, '1', '8', '1', 'tproject_info_approveinvestmoney', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_approveowninvestmoney') then
	insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_approveowninvestmoney', '��������Ͷ�ʽ��', '7', '�������', '1', '�������', null, 'tproject_info_amc', 'approveowninvestmoney', '0', null, '16', null, 16, 200, 18, 1, 1, 2, '1', '0', null, '1', '8', '1', 'tproject_info_approveowninvestmoney', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_approveinvestlimit') then
	insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_approveinvestlimit', '����Ͷ������(��)', '7', '�������', '1', '�������', null, 'tproject_info_amc', 'approveinvestlimit', '0', null, '2', null, 10, 250, 18, 1, 1, 3, '1', '0', null, '1', '8', '1', 'tproject_info_approveinvestlimit', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_approvelimitexplain') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_approvelimitexplain', '��������˵��', '7', '�������', '1', '�������', null, 'tproject_info_detail', 'approvelimitexplain', '0', null, '3', null, 3000, 600, 8, 1, 2, 5, '1', '0', null, '1', '2', '1', 'tproject_info_approvelimitexplain', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_approveorg') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_approveorg', '��������', '7', '�������', '1', '�������', null, 'tproject_info_amc', 'approveorg', '0', null, '6', 'DUE_DILIGENCE_LAUNCH_ORG', 2, 200, 18, 1, 2, 4, '1', '0', null, '1', '8', '1', 'tproject_info_approveorg', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_approvedept') then
	insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_approvedept', '������', '1', '������Ϣ', '11', '������Ϣ', null, 'tproject_info', 'motiondept', '0', '{user_dptid}', '15', 'sysOrganizationManager.getSysLeafOrgList()', 255, 200, 18, 1, 1, 38, '1', '0', null, '1', '8', '1', 'tproject_info_approvedept', null, '0', 'select concatstr(t.org_name) as factorvalue from tsys_organization t where t.org_id in (''{tproject_info_approvedept}'') ', null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_approvedate') then
	insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_approvedate', '��������', '1', '������Ϣ', '11', '������Ϣ', null, 'tproject_info_amc', 'approvedate', '0', null, '4', null, null, 200, 18, 1, 1, 39, '1', '0', null, '1', '8', '1', 'tproject_info_approvedate', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_approvetype') then
	insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_approvetype', '������ʽ', '1', '������Ϣ', '11', '������Ϣ', null, 'tproject_info_amc', 'approvetype', '0', null, '6', 'APPROVE_TYPE', 5, 200, 18, 1, 1, 40, '1', '0', null, '1', '8', '1', 'tproject_info_approvetype', null, '0', null, null, null, null, null);
end if;


if not fc_isexistsprojectfactorinfo('tproject_info_capitalpurposes') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_capitalpurposes', '�ʽ���;', '4', '�ʽ���;', '1', '�ʽ���;', null, 'tproject_info_capitalpurposes', null, '0', null, '21', '/pm/project/projectCapitalPurposes.htm', 99999, 200, 300, 1, 2, 1, '1', '0', null, '1', '7', '1', 'tproject_info_capitalpurposes', null, '1', null, 'projectCapitalPurposeManager.saveProjectCapitalPurposeGrid(:map)', null, null, null);
end if;


if not fc_isexistsprojectfactorinfo('tproject_info_implementtype') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_implementtype', 'ǰ��������ʵ��ʽ', '1', '������Ϣ', '11', '������Ϣ ', null, 'tproject_info_amc', 'implementtype', '0', null, '6', 'PRE_IMPLEMENT_TYPE', 2, 200, 18, 1, 1, 88, '1', '0', null, '1', '8', '1', 'tproject_info_implementtype', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_applyowninvestmoney') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_applyowninvestmoney', '���������ʽ�Ͷ�ʽ��', '1', '������Ϣ', '11', '������Ϣ', null, 'tproject_info_amc', 'applyowninvestmoney', '0', null, '16', null, 16, 200, 18, 1, 1, 17, '1', '0', null, '1', '8', '1', 'tproject_info_applyowninvestmoney', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_approveowninvestmoney_1') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_approveowninvestmoney_1', '��������Ͷ�ʽ��', '1', '������Ϣ', '11', '������Ϣ', null, 'tproject_info_amc', 'approveowninvestmoney', '0', null, '16', null, 16, 200, 18, 1, 1, 18, '1', '0', null, '1', '8', '1', 'tproject_info_approveowninvestmoney_1', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_applyinvestmoney_1') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_applyinvestmoney_1', '������Ͷ�ʽ��', '1', '������Ϣ', '11', '������Ϣ', null, 'tproject_info_amc', 'applyinvestmoney', '0', null, '16', null, 16, 200, 18, 1, 1, 5, '1', '0', null, '1', '8', '1', 'tproject_info_applyinvestmoney_1', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_submitinvestmoney_1') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_submitinvestmoney_1', '������Ͷ�ʽ��', '1', '������Ϣ', '11', '������Ϣ', null, 'tproject_info_amc', 'submitinvestmoney', '0', null, '16', null, 16, 200, 18, 1, 1, 6, '1', '0', null, '1', '8', '1', 'tproject_info_submitinvestmoney_1', null, '0', null, null, null, null, null);
end if;

if not fc_isexistsprojectfactorinfo('tproject_info_fundmanager') then
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND, C_FIELDCONFIG, C_COPYFROMOUT, C_CONTENTBOUND)
values ('tproject_info_fundmanager', 'ҵ���������', '3', '���׼ܹ�', '1', '���׼ܹ�', null, 'tproject_info_amc', 'fundtrustee', '0', null, '1', null, 255, 250, 18, 1, 1, 3, '1', '0', null, '1', '8', '1', 'tproject_info_fundmanager', null, '0', null, null, null, null, null);
end if;


end;
/