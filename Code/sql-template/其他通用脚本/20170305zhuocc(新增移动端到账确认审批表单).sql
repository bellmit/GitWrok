delete from tmobile_config_form t where t.C_FORMURL='/financial/arrivaldata/confirmflowform.htm';
delete from tmobile_config_field t where t.C_MODELCODE='/financial/arrivaldata/confirmflowform.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', null, 'arrivalDataManager.getArrivalDataConfirmForMobile()', '0', 'MOBILE', null, '1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'remark', null, '银行回单', '3', 29, null, null, null, null, '回款信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'gridProject', null, '项目信息', '9', 30, '{"title":"项目信息","columns":[{"name":"项目名称","code":"projectname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"资产包成本(元)","code":"debtamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"资产包已回款金额(元)","code":"amount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"本次回款金额(元)","code":"famount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, null, null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'gridCreditorContract', null, '债权合同冲销信息', '9', 32, '{"title":"债权合同冲销信息","columns":[{"name":"债权合同编号","code":"creditorcontractcode","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"借款人名称","code":"loanaccountname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"清收本金(元)","code":"rcorpusamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"应收本金","code":"corpusamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"清收利息(元)","code":"rinterest","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"应收利息","code":"interest","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"清收罚息(元)","code":"rdefaultinterest","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"应收罚息","code":"defaultinterest","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"清收复利(元)","code":"rcompoundinterest","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"应收复利","code":"compoundinterest","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"是否处置完毕","code":"isfinished","fieldType":"5","iscanupdate":"0","valuebound":"03:是;1:是;02:否;1否","isshow":"true"}]}', null, null, null, null, null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'gridGuarantee', null, '担保人信息', '9', 33, '{"title":"担保人信息","columns":[{"name":"担保合同名称","code":"guaranteecontractno","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"担保金额(元)","code":"guaranteeamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"剩余担保金额(元)","code":"repayamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"本次回款金额(元)","code":"amount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"是否处置完毕","code":"isfinished","fieldType":5,"iscanupdate":"0","valuebound":"0:否;1:是","isshow":"true"}]}', null, null, null, null, null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'gridPlan', null, '收款计划信息', '9', 35, '{"title":"收款计划信息","columns":[{"name":"计划日期","code":"pdate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"计划本金","code":"captial","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"计划利息","code":"income","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"状态","code":"state_show","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, null, null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'gridTradeStructure', null, '资金来源信息', '9', 36, '{"title":"资金来源信息","columns":[{"name":"参与方","code":"customername","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"初始本金(元)","code":"contributionamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"收益率(%)","code":"profitrate","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"剩余本金(元)","code":"remaincapital","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"剩余利息(元)","code":"remainincome","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"冲销金额(元)","code":"writeoffamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"冲销方式","code":"writeofftype","fieldType":"5","iscanupdate":"0","valuebound":"1:先息后本;2:先本后息;3:利随本清;4:用户自定义","isshow":"true"},{"name":"冲销本金(元)","code":"writeoffcapital","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"冲销利息(元)","code":"writeoffincome","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, null, null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'pawncode', null, '抵质押物', '8', 20, null, null, null, null, '回款信息', 'select t.c_pawnname as factorvalue from tasset_pawn_info  t where t.c_pawncode =''{pawncode}''');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'gridDeposit', null, '保证金信息', '9', 37, '{"title":"保证金信息","columns":[{"name":"项目名称","code":"projectname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"收支方向","code":"funddir","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"保证金类型","code":"deposittype_show","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"金额(元)","code":"occurbalance","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"余额(元)","code":"famount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"本方账户","code":"fundacname","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"对手方","code":"rivalname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"对手方账户","code":"rivalaccount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, null, null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'gridPawn', null, '抵质押物信息', '9', 34, '{"title":"抵质押物信息","columns":[{"name":"抵质押物名称","code":"pawnname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"债权合同编号","code":"creditorcontractcode","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"本次回款金额(元)","code":"amount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"是否处置完毕","code":"isfinished","fieldType":"5","iscanupdate":"0","valuebound":"0:否;1:是","isshow":"true"}]}', null, null, null, null, null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'gridInvestContractRepayMent', null, '投资合同资金信息', '9', 38, '{"title":"投资合同资金信息","columns":[{"name":"本金(元)","code":"writeoffcapital","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"利息(元)","code":"writeoffincome","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"罚息(元)","code":"penalty","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"逾期管理费(元)","code":"overduefee","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, null, null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'payeeCompany', null, '入账单位', '1', 5, null, null, null, null, '回款信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'payerAccount', null, '打款银行账号', '1', 4, null, null, null, null, '回款信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'payerCompany', null, '打款单位', '1', 2, null, null, null, null, '回款信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'bankDate', null, '银行流水时间', '1', 1, null, null, null, null, '回款信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'payerBank', null, '打款银行', '1', 3, null, null, null, null, '回款信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'payeeAccount', null, '入账银行账号', '1', 7, null, null, null, null, '回款信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'payeeBank', null, '入账账户开户行', '1', 6, null, null, null, null, '回款信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'projectname', null, '项目名称', '1', 9, null, null, null, null, '回款信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'amount', null, '金额', '2', 8, null, null, null, null, '回款信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'collectionType', null, '收款类型', '6', 10, 'COLLECTION_TYPE', null, null, null, '回款信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'dend', null, '截止日期', '1', 11, null, null, null, null, '回款信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'guarantee', null, '保证人', '8', 19, 'user|all|0', null, null, null, '回款信息', 'select i.c_customername as factorvalue from tcustomer_info i where i.c_customercode=''{guarantee}''');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'isLoan', null, '是否回款到户', '6', 16, 'YES_OR_NO', null, null, null, '回款信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'loanaccountcode', null, '借款人', '8', 18, 'user|all|0', null, null, null, '回款信息', 'select i.c_customername as factorvalue from tcustomer_info i where i.c_customercode=''{loanaccountcode}''');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'source', null, '还款来源', '6', 17, 'RECOVERYBALANCESOURCE', null, null, null, '回款信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'contractId', null, '关联合同', '8', 24, null, null, null, null, '回款信息', 'select t.c_contractname||''(''||tt.c_name||'')'' as factorvalue from tinvest_contract t,tinvest_type tt where t.c_investtype = tt.c_investtype and t.c_stock_state not in(''9'',''99'') and t.c_contractid=''{contractId}''');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'distributionorder', null, '冲抵顺序', '6', 22, 'DISTRIBUTION_ORDER', null, null, null, '回款信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'payerName', null, '代偿方', '1', 21, null, null, null, null, '回款信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'bailtype', null, '保证金类型', '6', 26, 'BAIL_TYPE', null, null, null, '回款信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'servicefree', null, '服务费', '2', 27, null, null, null, null, '回款信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'isbailtofee', null, '剩余保证金是否转费用', '6', 28, 'YES_OR_NO', null, null, null, '回款信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'servicefree2', null, '服务费收入(不含税金)', '2', 27, null, null, null, null, '回款信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'outtax', null, '销项税', '2', 27, null, null, null, null, '回款信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'summarymoney', null, '款项摘要', '3', 29, null, null, null, null, '回款信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'gridLoan', null, '借款人信息', '9', 31, '{"title":"借款人信息","columns":[{"name":"项目名称","code":"projectname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"户名称","code":"loanaccountname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"初始户成本(元)","code":"loanamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"剩余户成本(元)","code":"loancurrentbalance","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"已回款金额(元)","code":"repayamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"发生费用(元)","code":"payamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"实际回款金额(元)","code":"amount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"本金(元)","code":"capital","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"利息金额含税(元)","code":"income","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"(利息金额-收入)(元)","code":"outincome","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"(利息金额-销项税)(元)","code":"outtax","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"原债权本金(元)","code":"corpusamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"原债权利息(元)","code":"interest","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"冲销前挂账(元)","code":"debts","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"净回款金额(元)","code":"netrepay","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"特殊说明","code":"specialremark","fieldType":"3","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"是否处置完毕","code":"isfinished","fieldType":"5","iscanupdate":"0","valuebound":"0:否;1:是","isshow":"true"}]}', null, null, null, null, null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'arrivalId', null, '到账记录id', '0', 1, null, null, null, null, '回款信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'orgid', null, '认领部门id', '0', 1, null, null, null, null, '回款信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'claimId', null, '认领数据id', '0', 1, null, null, null, null, '回款信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'claimUserId', null, '认领人员id', '0', 1, null, null, null, null, '回款信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'confirmId', null, '确认信息id', '0', 1, null, null, null, null, '回款信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/confirmflowform.htm', '到账确认表单', 'approveId', null, '确认流程与认领流程关联ID', '0', 1, null, null, null, null, '回款信息', null);
