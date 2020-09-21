delete from tmobile_config_form t where t.C_FORMURL='/financial/arrivaldata/confirmflowform.htm';
delete from tmobile_config_field t where t.C_MODELCODE='/financial/arrivaldata/confirmflowform.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', null, 'arrivalDataManager.getArrivalDataConfirmForMobile()', '0', 'MOBILE', null, '1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'remark', null, '���лص�', '3', 29, null, null, null, null, '�ؿ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'gridProject', null, '��Ŀ��Ϣ', '9', 30, '{"title":"��Ŀ��Ϣ","columns":[{"name":"��Ŀ����","code":"projectname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�ʲ����ɱ�(Ԫ)","code":"debtamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�ʲ����ѻؿ���(Ԫ)","code":"amount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���λؿ���(Ԫ)","code":"famount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, null, null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'gridCreditorContract', null, 'ծȨ��ͬ������Ϣ', '9', 32, '{"title":"ծȨ��ͬ������Ϣ","columns":[{"name":"ծȨ��ͬ���","code":"creditorcontractcode","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���������","code":"loanaccountname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���ձ���(Ԫ)","code":"rcorpusamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"Ӧ�ձ���","code":"corpusamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"������Ϣ(Ԫ)","code":"rinterest","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"Ӧ����Ϣ","code":"interest","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���շ�Ϣ(Ԫ)","code":"rdefaultinterest","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"Ӧ�շ�Ϣ","code":"defaultinterest","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���ո���(Ԫ)","code":"rcompoundinterest","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"Ӧ�ո���","code":"compoundinterest","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�Ƿ������","code":"isfinished","fieldType":"5","iscanupdate":"0","valuebound":"03:��;1:��;02:��;1��","isshow":"true"}]}', null, null, null, null, null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'gridGuarantee', null, '��������Ϣ', '9', 33, '{"title":"��������Ϣ","columns":[{"name":"������ͬ����","code":"guaranteecontractno","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�������(Ԫ)","code":"guaranteeamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"ʣ�ൣ�����(Ԫ)","code":"repayamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���λؿ���(Ԫ)","code":"amount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�Ƿ������","code":"isfinished","fieldType":5,"iscanupdate":"0","valuebound":"0:��;1:��","isshow":"true"}]}', null, null, null, null, null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'gridPlan', null, '�տ�ƻ���Ϣ', '9', 35, '{"title":"�տ�ƻ���Ϣ","columns":[{"name":"�ƻ�����","code":"pdate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�ƻ�����","code":"captial","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�ƻ���Ϣ","code":"income","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"״̬","code":"state_show","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, null, null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'gridTradeStructure', null, '�ʽ���Դ��Ϣ', '9', 36, '{"title":"�ʽ���Դ��Ϣ","columns":[{"name":"���뷽","code":"customername","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��ʼ����(Ԫ)","code":"contributionamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"������(%)","code":"profitrate","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"ʣ�౾��(Ԫ)","code":"remaincapital","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"ʣ����Ϣ(Ԫ)","code":"remainincome","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�������(Ԫ)","code":"writeoffamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"������ʽ","code":"writeofftype","fieldType":"5","iscanupdate":"0","valuebound":"1:��Ϣ��;2:�ȱ���Ϣ;3:���汾��;4:�û��Զ���","isshow":"true"},{"name":"��������(Ԫ)","code":"writeoffcapital","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"������Ϣ(Ԫ)","code":"writeoffincome","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, null, null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'pawncode', null, '����Ѻ��', '8', 20, null, null, null, null, '�ؿ���Ϣ', 'select t.c_pawnname as factorvalue from tasset_pawn_info  t where t.c_pawncode =''{pawncode}''');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'gridDeposit', null, '��֤����Ϣ', '9', 37, '{"title":"��֤����Ϣ","columns":[{"name":"��Ŀ����","code":"projectname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��֧����","code":"funddir","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��֤������","code":"deposittype_show","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���(Ԫ)","code":"occurbalance","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���(Ԫ)","code":"famount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�����˻�","code":"fundacname","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���ַ�","code":"rivalname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���ַ��˻�","code":"rivalaccount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, null, null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'gridPawn', null, '����Ѻ����Ϣ', '9', 34, '{"title":"����Ѻ����Ϣ","columns":[{"name":"����Ѻ������","code":"pawnname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"ծȨ��ͬ���","code":"creditorcontractcode","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���λؿ���(Ԫ)","code":"amount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�Ƿ������","code":"isfinished","fieldType":"5","iscanupdate":"0","valuebound":"0:��;1:��","isshow":"true"}]}', null, null, null, null, null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'gridInvestContractRepayMent', null, 'Ͷ�ʺ�ͬ�ʽ���Ϣ', '9', 38, '{"title":"Ͷ�ʺ�ͬ�ʽ���Ϣ","columns":[{"name":"����(Ԫ)","code":"writeoffcapital","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��Ϣ(Ԫ)","code":"writeoffincome","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��Ϣ(Ԫ)","code":"penalty","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���ڹ����(Ԫ)","code":"overduefee","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, null, null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'payeeCompany', null, '���˵�λ', '1', 5, null, null, null, null, '�ؿ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'payerAccount', null, '��������˺�', '1', 4, null, null, null, null, '�ؿ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'payerCompany', null, '��λ', '1', 2, null, null, null, null, '�ؿ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'bankDate', null, '������ˮʱ��', '1', 1, null, null, null, null, '�ؿ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'payerBank', null, '�������', '1', 3, null, null, null, null, '�ؿ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'payeeAccount', null, '���������˺�', '1', 7, null, null, null, null, '�ؿ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'payeeBank', null, '�����˻�������', '1', 6, null, null, null, null, '�ؿ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'projectname', null, '��Ŀ����', '1', 9, null, null, null, null, '�ؿ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'amount', null, '���', '2', 8, null, null, null, null, '�ؿ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'collectionType', null, '�տ�����', '6', 10, 'COLLECTION_TYPE', null, null, null, '�ؿ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'dend', null, '��ֹ����', '1', 11, null, null, null, null, '�ؿ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'guarantee', null, '��֤��', '8', 19, 'user|all|0', null, null, null, '�ؿ���Ϣ', 'select i.c_customername as factorvalue from tcustomer_info i where i.c_customercode=''{guarantee}''');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'isLoan', null, '�Ƿ�ؿ��', '6', 16, 'YES_OR_NO', null, null, null, '�ؿ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'loanaccountcode', null, '�����', '8', 18, 'user|all|0', null, null, null, '�ؿ���Ϣ', 'select i.c_customername as factorvalue from tcustomer_info i where i.c_customercode=''{loanaccountcode}''');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'source', null, '������Դ', '6', 17, 'RECOVERYBALANCESOURCE', null, null, null, '�ؿ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'contractId', null, '������ͬ', '8', 24, null, null, null, null, '�ؿ���Ϣ', 'select t.c_contractname||''(''||tt.c_name||'')'' as factorvalue from tinvest_contract t,tinvest_type tt where t.c_investtype = tt.c_investtype and t.c_stock_state not in(''9'',''99'') and t.c_contractid=''{contractId}''');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'distributionorder', null, '���˳��', '6', 22, 'DISTRIBUTION_ORDER', null, null, null, '�ؿ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'payerName', null, '������', '1', 21, null, null, null, null, '�ؿ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'bailtype', null, '��֤������', '6', 26, 'BAIL_TYPE', null, null, null, '�ؿ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'servicefree', null, '�����', '2', 27, null, null, null, null, '�ؿ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'isbailtofee', null, 'ʣ�ౣ֤���Ƿ�ת����', '6', 28, 'YES_OR_NO', null, null, null, '�ؿ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'servicefree2', null, '���������(����˰��)', '2', 27, null, null, null, null, '�ؿ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'outtax', null, '����˰', '2', 27, null, null, null, null, '�ؿ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'summarymoney', null, '����ժҪ', '3', 29, null, null, null, null, '�ؿ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'gridLoan', null, '�������Ϣ', '9', 31, '{"title":"�������Ϣ","columns":[{"name":"��Ŀ����","code":"projectname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"������","code":"loanaccountname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��ʼ���ɱ�(Ԫ)","code":"loanamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"ʣ�໧�ɱ�(Ԫ)","code":"loancurrentbalance","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�ѻؿ���(Ԫ)","code":"repayamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��������(Ԫ)","code":"payamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"ʵ�ʻؿ���(Ԫ)","code":"amount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"����(Ԫ)","code":"capital","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��Ϣ��˰(Ԫ)","code":"income","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"(��Ϣ���-����)(Ԫ)","code":"outincome","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"(��Ϣ���-����˰)(Ԫ)","code":"outtax","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"ԭծȨ����(Ԫ)","code":"corpusamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"ԭծȨ��Ϣ(Ԫ)","code":"interest","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"����ǰ����(Ԫ)","code":"debts","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���ؿ���(Ԫ)","code":"netrepay","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"����˵��","code":"specialremark","fieldType":"3","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�Ƿ������","code":"isfinished","fieldType":"5","iscanupdate":"0","valuebound":"0:��;1:��","isshow":"true"}]}', null, null, null, null, null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'arrivalId', null, '���˼�¼id', '0', 1, null, null, null, null, '�ؿ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'orgid', null, '���첿��id', '0', 1, null, null, null, null, '�ؿ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'claimId', null, '��������id', '0', 1, null, null, null, null, '�ؿ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'claimUserId', null, '������Աid', '0', 1, null, null, null, null, '�ؿ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'confirmId', null, 'ȷ����Ϣid', '0', 1, null, null, null, null, '�ؿ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '����ȷ�ϱ�', 'approveId', null, 'ȷ���������������̹���ID', '0', 1, null, null, null, null, '�ؿ���Ϣ', null);
