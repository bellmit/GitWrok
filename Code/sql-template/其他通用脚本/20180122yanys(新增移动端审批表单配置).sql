--Ͷ����ټ�¼

delete from tmobile_config_form m where m.c_formurl='/afterinvest/afterinvestadd.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/afterinvest/afterinvestadd.htm', 'Ͷ����ټ�¼', null, 'afterInvestManager.getAfterInvestJsonForMobile()', '1', 'MOBILE', null,'1');

delete from tmobile_config_field f where f.c_modelcode='/afterinvest/afterinvestadd.htm';

delete from tmobile_config_field f where f.c_modelcode='/afterinvest/afterLonaccount.htm';

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterLonaccount.htm', '�ص���ٽ����', 'after_investment_vipLoanaccountinfo', null, '�ص���ٽ������Ϣ', '9', 1, '{"title":"�ص���ٽ������Ϣ","columns":[{"name":"�����","code":"loanaccountname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"������Ϣ","code":"traceinfo","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�ж��ƻ�","code":"actionplan","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '�ص���ٽ������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', 'Ͷ����ټ�¼', 'fivelevel', null, '�弶����', '6', 6, 'FIVELEVEL', null, null, null, 'Ͷ�������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', 'Ͷ����ټ�¼', 'guaranteetraceinfo', null, '�����˸�����Ϣ', '1', 12, null, null, null, null, 'Ͷ�������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', 'Ͷ����ټ�¼', 'iswarning', null, '�Ƿ����Ԥ��', '6', 5, 'YES_OR_NO', null, null, null, 'Ͷ�������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', 'Ͷ����ټ�¼', 'keyloaninfolist', null, '�ص����˸�����Ϣ', '9', 15, '{"title":"�ص����˸�����Ϣ","columns":[{"name":"����˱��","code":"loanaccountcode","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"false"},{"name":"�����","code":"loanaccountname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"������Ϣ","code":"traceinfo","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '�ص����˸�����Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', 'Ͷ����ټ�¼', 'loanaccountcode', null, '���������', '8', 2, 'user|all|0', null, null, null, '��Ŀ��Ϣ', 'select i.c_loanaccountname as factorvalue from tasset_loanaccount_info i where i.c_loanaccountcode=''{loanaccountcode}''');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', 'Ͷ����ټ�¼', 'loantraceinfo', null, 'ծ���˸�����Ϣ', '1', 10, null, null, null, null, 'Ͷ�������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', 'Ͷ����ټ�¼', 'managementdesc', null, '���徭Ӫ����', '1', 13, null, null, null, null, 'Ͷ�������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', 'Ͷ����ټ�¼', 'mortgagetraceinfo', null, '����Ѻ�������Ϣ', '1', 11, null, null, null, null, 'Ͷ�������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', 'Ͷ����ټ�¼', 'projectcode', null, '��Ŀ����', '8', 1, 'pos|all|0', null, null, null, '��Ŀ��Ϣ', 'select i.c_projectcode as factorvalue from tproject_info i where i.c_projectcode=''{projectcode}''');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', 'Ͷ����ټ�¼', 'projecttraceinfo', null, '��Ŀ������Ϣ', '1', 7, null, null, null, null, 'Ͷ�������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', 'Ͷ����ټ�¼', 'recorddate', null, 'Ͷ���������', '4', 3, null, null, null, null, 'Ͷ�������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', 'Ͷ����ټ�¼', 'recordusercode', null, '������', '1', 4, null, null, null, null, 'Ͷ�������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', 'Ͷ����ټ�¼', 'riskdesc', null, '�����������', '1', 9, null, null, null, null, 'Ͷ�������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', 'Ͷ����ټ�¼', 'todo', null, '�������ټƻ�', '1', 8, null, null, null, null, 'Ͷ�������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', 'Ͷ����ټ�¼', 'warninginfo', null, '����Ԥ����Ϣ', '1', 14, null, null, null, null, 'Ͷ�������Ϣ', null);

--��Ŀ�����

delete from tmobile_config_form m where m.c_formurl='approval/project/projectModify.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('approval/project/projectModify.htm', '��Ŀ�����', null, 'amcProjectMobileManager.getProjectJsonForMobileList()', '1', 'MOBILE', null,'1');

--��Ŀ����

delete from tmobile_config_form m where m.c_formurl='approval/project/projectEvaluation.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('approval/project/projectEvaluation.htm', '��Ŀ����', null, 'amcProjectMobileManager.getProjectJsonForMobileList()', '1', 'MOBILE', null ,'1');

--21Ҫ����19Ҫ��
delete from tmobile_config_field f where f.c_modelcode='/pm/project/financform/financinfo.htm';
delete from tmobile_config_field f where f.c_modelcode='/pm/project/investlevelInfo.htm';
delete from tmobile_config_field f where f.c_modelcode='/pm/project/profitLevelInfo.htm?1=1';
delete from tmobile_config_field f where f.c_modelcode='/pm/investproject/predictprofit.htm';
delete from tmobile_config_field f where f.c_modelcode='/pm/project/investprojectGrid.htm?1=1';
delete from tmobile_config_field f where f.c_modelcode='/pm/project/salescode_edit.htm?1=1';
delete from tmobile_config_field f where f.c_modelcode='/pm/handleproject/dealobjectforfactor.htm?process_start={process_start}';
delete from tmobile_config_field f where f.c_modelcode='/pm/handleproject/dealobjectforfactor.htm';
delete from tmobile_config_field f where f.c_modelcode='/pm/project/transactionStructure.htm';
delete from tmobile_config_field f where f.c_modelcode='/pm/project/transactionStructure.htm?type=0';
delete from tmobile_config_field f where f.c_modelcode='/pm/project/transactionStructure.htm?type=1';
delete from tmobile_config_field f where f.c_modelcode='/pm/project/transactionStructure.htm?type=2';
delete from tmobile_config_field f where f.c_modelcode='/pm/project/transactionStructure.htm?type=3';
delete from tmobile_config_field f where f.c_modelcode='/pm/project/projectTeamMeambers.htm';
delete from tmobile_config_field f where f.c_modelcode='/pm/project/householdValuation.htm';
delete from tmobile_config_field f where f.c_modelcode='/pm/realAsset/pmRealAssetList.htm';
delete from tmobile_config_field f where f.c_modelcode='/pm/handleproject/dealobjectforfactor_new.htm?process_start={process_start}';
delete from tmobile_config_field f where f.c_modelcode='/pm/project/transactionStructure2.htm?type=0';

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/handleproject/dealobjectforfactor_new.htm?process_start={process_start}', '���ö���(��)', 'tproject_info_object_new_eg', null, '���ö���', null, null, '{"title":"���ö���","columns":[{"name":"��Ŀ����","code":"projectname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���������","code":"loanaccountname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�ʲ�����","code":"objectname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"����(Ԫ)","code":"corpusamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��Ϣ(Ԫ)","code":"interest","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���¹�ֵ(Ԫ)","code":"appraisementvalue","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"ʣ��ɱ�(Ԫ)","code":"overcost","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '���ö���', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/realAsset/pmRealAssetList.htm', '���ծ�ʲ���Ϣ', 'tproject_info_realasset_eg', null, '���ծ�ʲ���Ϣ', '9', 1, '{"title":"���ծ�ʲ���Ϣ","columns":[{"name":"�ʲ�����","code":"objectname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�ʲ���Դ����","code":"objecttype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�ʲ���Դ","code":"objectsource_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�ʲ���ϸ����","code":"typeex_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"ʡ��","code":"province_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"����","code":"cityname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"������ֵ","code":"valuationamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���ծ���","code":"pawnamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '���ծ�ʲ���Ϣ�б�', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/handleproject/dealobjectforfactor.htm', '���÷�Χ', 'object_channeltype', null, '���÷�Χ', '6', 1, 'DEAL_RANGE', null, null, null, '���÷�Χ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/handleproject/dealobjectforfactor.htm?process_start={process_start}', '���÷�Χ', 'object_dealprojectrange', null, '���ö���', '1', 1, null, null, null, null, '���÷�Χ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/investproject/predictprofit.htm', 'Ԥ��������Ϣ', 'tasset_predictprofit_eg', null, 'Ԥ��������Ϣ�б�', '9', 1, '{"title":"Ԥ��������Ϣ�б�","columns":[{"name":"id","code":"id","fieldType":"0","iscanupdate":"0","valuebound":"","isshow":"false"},{"name":"��Ŀ���","code":"projectcode","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���","code":"yeardate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"Ԥ��������(%)","code":"predictyield","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"Ԥ��Ӫҵ����(Ԫ)","code":"preincome","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"ʵ��Ӫҵ����(Ԫ)","code":"realincome","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"Ԥ��Ӫҵ����(Ԫ)","code":"pregrossprofit","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"ʵ�ʾ�����(Ԫ)","code":"realpureprofit","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, 'Ԥ��������Ϣ�б�', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/financform/financinfo.htm', '������Ϣ', 'finainfo_finaInfoTable', null, '������Ϣ�б�', '9', 1, '{"title":"������Ϣ�б�","columns":[{"name":"����ҵ��","code":"orgname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"¼����","code":"createusername","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"Ԥ�������ʽ�","code":"requirefund","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"Ԥ�Ƹ���ʱ��","code":"prepaydate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"Ԥ���ʽ���Դ","code":"fundsource_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"Ԥ�Ʋ���ƽ̨","code":"opplat_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '������Ϣ�б�', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/householdValuation.htm', '����ֵ', 'householdValuation_assetseller', null, '�ʲ����ʷ�', '1', 1, null, null, null, null, '�ʲ����ʷ�', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/householdValuation.htm', '����ֵ', 'householdValuation_householdValuationDataTable', null, '����ֵ�б�', '9', 4, '{"title":"����ֵ�б�","columns":[{"name":"����˱��","code":"xh","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"false"},{"name":"���������","code":"loanaccountname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"������ֵ","code":"valuationamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"������ֵ��56%","code":"valuationamount56","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��ֵʱ��","code":"appraisetime","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"Ԥ�ƿɻ��ս��","code":"prerepayAmount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"Ԥ�ƻ��ձ���","code":"prequotedPrice","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '����ֵ�б�', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/householdValuation.htm', '����ֵ', 'householdValuation_projectcode', null, '��Ŀ���', '1', 3, null, null, null, null, '��Ŀ���', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/householdValuation.htm', '����ֵ', 'householdValuation_projectname', null, '��Ŀ����', '1', 2, null, null, null, null, '��Ŀ����', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/investlevelInfo.htm', 'Ͷ����Ϣ', 'tproject_info_investlevel_eg', null, 'Ͷ����Ϣ�б�', '9', 1, '{"title":"Ͷ����Ϣ�б�","columns":[{"name":"Ͷ�����ޣ��£�","code":"invest_timelimit","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"Ԥ�������ʣ�%��","code":"invest_expectyield","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"Ͷ�ʽ�Ԫ��","code":"invest_investamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��������","code":"invest_enddate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, 'Ͷ����Ϣ�б�', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/investprojectGrid.htm?1=1', 'Ͷ����Ŀ��Ϣ', 'tproject_info_investproject_eg', null, 'Ͷ����Ŀ��Ϣ', '9', 1, '{"title":"Ͷ����Ŀ��Ϣ","columns":[{"name":"Ͷ����Ŀ","code":"investprojectname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"Ͷ�ʽ��","code":"investbalance","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�Ƿ����","code":"entrustmanage","fieldType":"1","iscanupdate":"0","valuebound":"YES_OR_NO","isshow":"true"},{"name":"Ͷ����Ŀ���","code":"investprojectcode","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, 'Ͷ����Ŀ��Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/profitLevelInfo.htm?1=1', '������Ϣ', 'tproject_info_loaninfo_eg', null, '������Ϣ�б�', '9', 1, '{"title":"������Ϣ�б�","columns":[{"name":"����","code":"invest_timelimit","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���ʣ�%��","code":"loan_yield","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���ʽ�Ԫ��","code":"loan_loanamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��������","code":"loan_enddate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '������Ϣ�б�', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/projectTeamMeambers.htm', '��Ŀ���Ա', 'teammembers_MembersInfoDataTable', null, '��Ŀ���Ա�б�', '9', 1, '{"title":"��Ŀ���Ա�б�","columns":[{"name":"��Ա����","code":"view_membercode","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '��Ŀ���Ա', null);


insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/transactionStructure.htm?type=3', '���׽ṹ', 'transStructureinfo_eg', null, '���׽ṹ', '9', 1, '{"title":"���׽ṹ","columns":[{"name":"Ͷ��ͨ��","code":"customername","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��������","code":"incometype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"����ѽ��/����(%)","code":"memo","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '���׽ṹ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/transactionStructure.htm?type=0', '���׽ṹ', 'transStructureinfo_eg', null, '���׽ṹ', '9', 1, '{"title":"���׽ṹ","columns":[{"name":"��������","code":"customername","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���뷽ʽ","code":"participanttype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��������","code":"incometype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���ʽ��(Ԫ)","code":"contributionamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���ʱ�����%��","code":"contributionrate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"����˵��","code":"memo","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '���׽ṹ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/transactionStructure.htm?type=1', '���׽ṹ', 'transStructureinfo_eg', null, '���׽ṹ', '9', 1, '{"title":"���׽ṹ","columns":[{"name":"��������","code":"customername","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���뷽ʽ","code":"participanttype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��������","code":"incometype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���ʽ��(Ԫ)","code":"contributionamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���ʱ�����%��","code":"contributionrate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"������(%)","code":"memo","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '���׽ṹ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/transactionStructure.htm?type=2', '���׽ṹ', 'transStructureinfo_eg', null, '���׽ṹ', '9', 1, '{"title":"���׽ṹ","columns":[{"name":"�ɶ�����","code":"customername","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���뷽ʽ","code":"participanttype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��������","code":"incometype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���ʽ��(Ԫ)","code":"contributionamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���ʱ�����%��","code":"contributionrate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�������","code":"changedate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"����˵��","code":"memo","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��ע","code":"description","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '���׽ṹ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/transactionStructure2.htm?type=0', '�ʽ���Դ', 'transStructureinfo_ts_eg', null, '�ʽ���Դ', '9', 1, '{"title":"�ʽ���Դ","columns":[{"name":"��������","code":"customername","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���뷽ʽ","code":"participanttype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��������","code":"incometype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���ʽ��(Ԫ)","code":"contributionamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���ʱ�����%��","code":"contributionrate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"����˵��","code":"memo","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '�ʽ���Դ', null);


--��֤��ת����
delete from tmobile_config_form m where m.c_formurl='/financial/deposit/depositTurnIncomeFlowForm.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/financial/deposit/depositTurnIncomeFlowForm.htm', '��֤��ת����', null, 'depositDataMobileManager.getBusinessDataForMobile()', '1', 'MOBILE', null,'1');

delete from tmobile_config_field m where m.C_MODELCODE='/financial/deposit/depositTurnIncomeFlowForm.htm';

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/deposit/depositTurnIncomeFlowForm.htm', '��֤���ܶ�', 'depositPrincipal', null, '��֤���ܶ�', '2', 3, null, null, null, null, '��֤���ܶ�', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/deposit/depositTurnIncomeFlowForm.htm', '��ת����', 'deposittransfertype', null, '��ת����', '6', 2, 'DEPOSIT_TRANSFER_TYPE', null, null, null, '��ת����', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/deposit/depositTurnIncomeFlowForm.htm', '�������Ϣ', 'loanlist', null, '�������Ϣ', '9', 8, '{"title":"�������Ϣ","columns":[{"name":"���������","code":"loanaccountname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���ɱ�","code":"current_balance_display","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��֤�ֿ۽��","code":"transferbalance_display","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '�������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/deposit/depositTurnIncomeFlowForm.htm', '���', 'principal', null, '���', '2', 5, null, null, null, null, '���', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/deposit/depositTurnIncomeFlowForm.htm', '��Ŀ����', 'projectname', null, '��Ŀ����', '1', 1, null, null, null, null, '��Ŀ����', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/deposit/depositTurnIncomeFlowForm.htm', '����ժҪ', 'remark', null, '����ժҪ', '1', 6, null, null, null, null, '����ժҪ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/deposit/depositTurnIncomeFlowForm.htm', 'ת������', 'turnDate', null, 'ת������', '4', 4, null, null, null, null, 'ת������', null);

--�ؿ�ת��
delete from tmobile_config_form m where m.c_formurl='/financial/payment/backpayform.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/financial/payment/backpayform.htm', '�ؿ�ת��', null, 'paymentDataMobileManager.getBusinessDataForMobile()', '1', 'MOBILE', null,'1');

delete from tmobile_config_field m where m.C_MODELCODE='/financial/payment/backpayform.htm';

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/backpayform.htm', '�ؿ�ת��', 'acconame', null, '�տ��˻�', '1', 5, null, null, null, null, '�ؿ�ת������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/backpayform.htm', '�ؿ�ת��', 'busiflag', null, 'ת������', '1', 2, null, null, null, null, '�ؿ�ת������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/backpayform.htm', '�ؿ�ת��', 'customername', null, '�տ', '1', 4, null, null, null, null, '�ؿ�ת������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/backpayform.htm', '�ؿ�ת��', 'cykind', null, '����', '1', 7, null, null, null, null, '�ؿ�ת������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/backpayform.htm', '�ؿ�ת��', 'fundname', null, '�����˻�', '1', 3, null, null, null, null, '�ؿ�ת������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/backpayform.htm', '�ؿ�ת��', 'preoccurbalance', null, '������', '1', 8, null, null, null, null, '�ؿ�ת������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/backpayform.htm', '�ؿ�ת��', 'preoccurdate', null, '��������', '1', 6, null, null, null, null, '�ؿ�ת������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/backpayform.htm', '�ؿ�ת��', 'projectname', null, '��Ŀ����', '1', 1, null, null, null, null, '�ؿ�ת������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/backpayform.htm', '�ؿ�ת��', 'remark', null, 'ժҪ', '1', 9, null, null, null, null, '�ؿ�ת������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/backpayform.htm', '�ؿ�ת��', 'trepayarrivalList', null, '����ȷ����Ϣ', '9', 10, '{"title":"����ȷ����Ϣ","columns":[{"name":"������ˮ����","code":"bankdate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��λ","code":"payercompany","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�������","code":"payerbank","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"����˺�","code":"payeraccount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�����˻�������","code":"payeebank","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���������˺�","code":"payeeaccount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"ȷ�Ͻ��","code":"amount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"ʣ��ת�����","code":"balance","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"����ת�����","code":"transferamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '����ȷ����Ϣ', null);

--���ڹ�ֵ������
delete from tmobile_config_form m where m.c_formurl='approval/valuation/periodicValuation.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('approval/valuation/periodicValuation.htm', '���ڹ�ֵ������', null, 'opertorvaluationMobileManager.getBusinessDataForMobile()', '1', 'MOBILE', null,'1');

delete from tmobile_config_field m where m.C_MODELCODE='approval/valuation/periodicValuation.htm';

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/valuation/periodicValuation.htm', '���ڹ�ֵ', 'assetseller', null, '�ʲ����۷�', '1', 3, null, null, null, null, '�ʲ����۷�', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/valuation/periodicValuation.htm', '���б�', 'datalist', null, '���б�', '9', 5, '{"title":"����ֵ�б�","columns":[{"name":"����˱��","code":"loanaccountnum","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"false"},{"name":"���������","code":"loanaccountname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���ɱ�","code":"current_balance_display","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���¹�ֵ�۸�","code":"valuation","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��ֵʱ��","code":"appraisetime","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"Ԥ�Ƽ�ֵ������","code":"valuationGain","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���¹�ֵʱ��","code":"valuationDate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '���б�', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/valuation/periodicValuation.htm', 'ծȨ���', 'debtamount', null, 'ծȨ���', '2', 4, null, null, null, null, null, null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/valuation/periodicValuation.htm', '���ڹ�ֵ', 'projectcode', null, '��Ŀ���', '1', 1, null, null, null, null, '��Ŀ���', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/valuation/periodicValuation.htm', '���ڹ�ֵ', 'projectname', null, '��Ŀ����', '1', 2, null, null, null, null, '��Ŀ����', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/valuation/periodicValuation.htm', '��ֵ�ϼ�', 'valuactionTotal', null, '��ֵ�ϼ�', '1', 5, null, null, null, null, null, null);


--�����Ƴ�
delete from tmobile_config_form m where m.c_formurl='/afterinvest/riskwarning/riskRemoveForm.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/afterinvest/riskwarning/riskRemoveForm.htm', '�����Ƴ�', null, 'riskWarningRemoveMobileManager.getBusinessDataForMobile()', '1', 'MOBILE', null,'1');


delete from tmobile_config_field m where m.C_MODELCODE='/afterinvest/riskwarning/riskRemoveForm.htm';

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskRemoveForm.htm', '�����Ƴ�', 'closeDate', null, '�ر�����', '1', 4, null, null, null, null, '��Ŀ������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskRemoveForm.htm', '�����Ƴ�', 'list', null, '���շ�����Ϣ', '9', 6, '{"title":"���շ�����Ϣ","columns":[{"name":"��������","code":"feedbackDate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"������","code":"enterUserName","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��������","code":"feedbackContent","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�����Ƿ��ѽ��","code":"isWarningRemove_show","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '���շ�����Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskRemoveForm.htm', '�����Ƴ�', 'loanAccountName', null, '���������', '1', 2, null, null, null, null, '��Ŀ������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskRemoveForm.htm', '�����Ƴ�', 'memo', null, '��ע', '1', 5, null, null, null, null, '��Ŀ������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskRemoveForm.htm', '�����Ƴ�', 'occurDate', null, '���շ�������', '1', 3, null, null, null, null, '��Ŀ������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskRemoveForm.htm', '�����Ƴ�', 'projectName', null, '��Ŀ����', '1', 1, null, null, null, null, '��Ŀ������Ϣ', null);

--����Ԥ��
delete from tmobile_config_form m where m.c_formurl='/afterinvest/riskwarning/riskWarningForm.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/afterinvest/riskwarning/riskWarningForm.htm', '����Ԥ��', null, 'riskWarningMobileManager.getBusinessDataForMobile()', '1', 'MOBILE', null,'1');

delete from tmobile_config_field m where m.C_MODELCODE='/afterinvest/riskwarning/riskWarningForm.htm';

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskWarningForm.htm', '����Ԥ��', 'noticeDateList', null, '���ټ������', '9', 5, '{"title":"���ټ������","columns":[{"name":"���ټ������id","code":"noticeDateId","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"false"},{"name":"�Զ���ʱ�������","code":"noticeDateType","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"false"},{"name":"����Ԥ��ID","code":"noticeDateRuleId","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"false"},{"name":"���ټ������","code":"checkDate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskWarningForm.htm', '����Ԥ��', 'riskWarningTypes', null, '����˵���б�', '9', 5, '{"title":"����˵���б�","columns":[{"name":"���ռ���","code":"warningLevelName","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��������","code":"warningType","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�����ź�����","code":"warningContent","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"Ԥ������id","code":"warningTypeId","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"false"}]}', null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskWarningForm.htm', '����Ԥ��', 'feedbackRate_show', null, '����Ƶ��', '1', 4, null, null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskWarningForm.htm', '����Ԥ��', 'loanAccountName', null, '���������', '1', 2, null, null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskWarningForm.htm', '����Ԥ��', 'occurDate', null, '����ʱ��', '1', 3, null, null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskWarningForm.htm', '����Ԥ��', 'projectName', null, '��Ŀ����', '1', 1, null, null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskWarningForm.htm', '����Ԥ��', 'riskDesc', null, '��������', '1', 6, null, null, null, null, '������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskWarningForm.htm', '����Ԥ��', 'riskSolution', null, '���ջ��ͷ���', '1', 7, null, null, null, null, '������Ϣ', null);



--��ʵ������


delete from tmobile_config_form m where m.c_formurl='pm/meetingManagement/implementconditionForm.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('pm/meetingManagement/implementconditionForm.htm', '��ʵ������', null, 'meetingApplyMoblieImplementManager.getBusinessDataForMobile()', '1', 'MOBILE', null,'1');

delete from tmobile_config_field m where m.C_MODELCODE='pm/meetingManagement/implementconditionForm.htm';

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/meetingManagement/implementconditionForm.htm', '��ʵ������', 'meno', null, '��ע', '1', 2, null, null, null, null, '��ʵ����', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/meetingManagement/implementconditionForm.htm', '��ʵ������', 'conditionlist', null, '��ʵ�����б�', '9', 1, '{"title":"��ʵ������Ϣ","columns":[{"name":"�Ƿ�����ʵ","code":"isImplement_view","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��������","code":"condition","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '��ʵ����', null);











