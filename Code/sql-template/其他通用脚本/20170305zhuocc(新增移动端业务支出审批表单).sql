delete from tmobile_config_form t where t.C_FORMURL='/financial/payment/busexpenses.htm';
delete from tmobile_config_field t where t.C_MODELCODE='/financial/payment/busexpenses.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/financial/payment/busexpenses.htm', '业务支出表单', null, 'paymentDataManager.getPaymentDataForMobile()', '1', 'MOBILE', null, '1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', '业务支出表单', 'projectname', null, '基金/项目名称', '1', 1, null, null, null, null, '业务支出表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', '业务支出表单', 'customername', null, '收款方', '1', 4, null, null, null, null, '业务支出表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', '业务支出表单', 'busiflag', null, '付款类型', '6', 3, 'AMC_PAYMENT_TYPE', null, null, null, '业务支出表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', '业务支出表单', 'occurbalance', null, '实际付款金额', '2', 10, null, null, null, null, '业务支出表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', '业务支出表单', 'acconame', null, '收款账户', '1', 5, null, null, null, null, '业务支出表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', '业务支出表单', 'preoccurdate', null, '拟付款日期', '1', 6, null, null, null, null, '业务支出表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', '业务支出表单', 'cykind', null, '币种', '6', 8, 'MONEYTYPE', null, null, null, '业务支出表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', '业务支出表单', 'preoccurbalance', null, '拟付款金额', '2', 9, null, null, null, null, '业务支出表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', '业务支出表单', 'isdebts', null, '是否挂账', '6', 11, 'YES_OR_NO', null, null, null, '业务支出表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', '业务支出表单', 'deposittype', null, '保证金类型', '6', 12, 'BAIL_TYPE', null, null, null, '业务支出表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', '业务支出表单', 'contractname', null, '合同名称', '1', 2, null, null, null, null, '业务支出表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', '业务支出表单', 'occurinvest', null, '应付款金额', '2', 13, null, null, null, null, '业务支出表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', '业务支出表单', 'blance', null, '转收购成本金额', '2', 14, null, null, null, null, '业务支出表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', '业务支出表单', 'huname', null, '户名称', '1', 15, null, null, null, null, '业务支出表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', '业务支出表单', 'remark', null, '款项摘要', '3', 16, null, null, null, null, '业务支出表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', '业务支出表单', 'isoutpace', null, '诉讼费是否超标', '5', 17, '0:否;1:是', null, null, null, '业务支出表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', '业务支出表单', 'invoice', null, '发票类型', '6', 18, 'INVOICE_TYPE', null, null, null, '业务支出表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', '业务支出表单', 'payway', null, '付款方式', '6', 19, 'PAYMENTWAY', null, null, null, '业务支出表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', '业务支出表单', 'loanaccountinfo', null, '付款账户', '9', 20, '{"title":"付款账户","columns":[{"name":"付款账户","code":"fundname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"付款金额","code":"blance","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"付款日期","code":"date","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '付款账户', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', '业务支出表单', 'dealpanel1', null, '收取保证金流水', '9', 20, '{"title":"收取保证金流水","columns":[{"name":"项目名称","code":"projectname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"到账日期","code":"occurdate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"收支方向","code":"funddir","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"保证金类型","code":"deposittype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"金额","code":"occurbalance","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"余额","code":"principal","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"本方账户","code":"fundacname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"对手方","code":"rivalname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"对手方账户","code":"rivalaccount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '收取保证金流水', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', '业务支出表单', 'payplaninfo', null, '用款计划信息', '9', 20, '{"title":"用款计划信息","columns":[{"name":"用款计划编号","code":"lid","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"项目名称","code":"projectname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"合同编号","code":"contractname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"付款类型","code":"paytype","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"用款时间(起始)","code":"begindate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"用款时间(截止)","code":"enddate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"预计付款金额","code":"preoccurbalance","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"已用款金额","code":"occurbalance","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"拟使用周期(月)","code":"cycle","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"周期收益率(%)","code":"rate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"优先级","code":"clevel","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"申请说明","code":"remark","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '用款计划信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/busexpenses.htm', '业务支出表单', 'gridLoan', null, '户信息', '9', 20, '{"title":"户信息","columns":[{"name":"户名称","code":"loanaccountname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"初始户成本(元)","code":"loanaccountcosts","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"分摊金额(元)","code":"debtsmoney","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '户信息', null);
