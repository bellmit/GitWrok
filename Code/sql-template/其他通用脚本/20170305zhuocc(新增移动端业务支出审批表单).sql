delete from tmobile_config_form t where t.C_FORMURL='/financial/payment/busexpenses.htm';
delete from tmobile_config_field t where t.C_MODELCODE='/financial/payment/busexpenses.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/financial/payment/busexpenses.htm', 'ҵ��֧����', null, 'paymentDataManager.getPaymentDataForMobile()', '1', 'MOBILE', null, '1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', 'ҵ��֧����', 'projectname', null, '����/��Ŀ����', '1', 1, null, null, null, null, 'ҵ��֧������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', 'ҵ��֧����', 'customername', null, '�տ', '1', 4, null, null, null, null, 'ҵ��֧������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', 'ҵ��֧����', 'busiflag', null, '��������', '6', 3, 'AMC_PAYMENT_TYPE', null, null, null, 'ҵ��֧������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', 'ҵ��֧����', 'occurbalance', null, 'ʵ�ʸ�����', '2', 10, null, null, null, null, 'ҵ��֧������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', 'ҵ��֧����', 'acconame', null, '�տ��˻�', '1', 5, null, null, null, null, 'ҵ��֧������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', 'ҵ��֧����', 'preoccurdate', null, '�⸶������', '1', 6, null, null, null, null, 'ҵ��֧������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', 'ҵ��֧����', 'cykind', null, '����', '6', 8, 'MONEYTYPE', null, null, null, 'ҵ��֧������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', 'ҵ��֧����', 'preoccurbalance', null, '�⸶����', '2', 9, null, null, null, null, 'ҵ��֧������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', 'ҵ��֧����', 'isdebts', null, '�Ƿ����', '6', 11, 'YES_OR_NO', null, null, null, 'ҵ��֧������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', 'ҵ��֧����', 'deposittype', null, '��֤������', '6', 12, 'BAIL_TYPE', null, null, null, 'ҵ��֧������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', 'ҵ��֧����', 'contractname', null, '��ͬ����', '1', 2, null, null, null, null, 'ҵ��֧������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', 'ҵ��֧����', 'occurinvest', null, 'Ӧ������', '2', 13, null, null, null, null, 'ҵ��֧������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', 'ҵ��֧����', 'blance', null, 'ת�չ��ɱ����', '2', 14, null, null, null, null, 'ҵ��֧������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', 'ҵ��֧����', 'huname', null, '������', '1', 15, null, null, null, null, 'ҵ��֧������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', 'ҵ��֧����', 'remark', null, '����ժҪ', '3', 16, null, null, null, null, 'ҵ��֧������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', 'ҵ��֧����', 'isoutpace', null, '���Ϸ��Ƿ񳬱�', '5', 17, '0:��;1:��', null, null, null, 'ҵ��֧������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', 'ҵ��֧����', 'invoice', null, '��Ʊ����', '6', 18, 'INVOICE_TYPE', null, null, null, 'ҵ��֧������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', 'ҵ��֧����', 'payway', null, '���ʽ', '6', 19, 'PAYMENTWAY', null, null, null, 'ҵ��֧������Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', 'ҵ��֧����', 'loanaccountinfo', null, '�����˻�', '9', 20, '{"title":"�����˻�","columns":[{"name":"�����˻�","code":"fundname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"������","code":"blance","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��������","code":"date","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '�����˻�', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', 'ҵ��֧����', 'dealpanel1', null, '��ȡ��֤����ˮ', '9', 20, '{"title":"��ȡ��֤����ˮ","columns":[{"name":"��Ŀ����","code":"projectname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��������","code":"occurdate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��֧����","code":"funddir","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��֤������","code":"deposittype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���","code":"occurbalance","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���","code":"principal","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�����˻�","code":"fundacname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���ַ�","code":"rivalname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���ַ��˻�","code":"rivalaccount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '��ȡ��֤����ˮ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', 'ҵ��֧����', 'payplaninfo', null, '�ÿ�ƻ���Ϣ', '9', 20, '{"title":"�ÿ�ƻ���Ϣ","columns":[{"name":"�ÿ�ƻ����","code":"lid","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��Ŀ����","code":"projectname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��ͬ���","code":"contractname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��������","code":"paytype","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�ÿ�ʱ��(��ʼ)","code":"begindate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"�ÿ�ʱ��(��ֹ)","code":"enddate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"Ԥ�Ƹ�����","code":"preoccurbalance","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���ÿ���","code":"occurbalance","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��ʹ������(��)","code":"cycle","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"����������(%)","code":"rate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"���ȼ�","code":"clevel","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"����˵��","code":"remark","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '�ÿ�ƻ���Ϣ', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', 'ҵ��֧����', 'gridLoan', null, '����Ϣ', '9', 20, '{"title":"����Ϣ","columns":[{"name":"������","code":"loanaccountname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��ʼ���ɱ�(Ԫ)","code":"loanaccountcosts","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"��̯���(Ԫ)","code":"debtsmoney","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '����Ϣ', null);
