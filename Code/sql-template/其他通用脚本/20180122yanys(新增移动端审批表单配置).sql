--投后跟踪记录

delete from tmobile_config_form m where m.c_formurl='/afterinvest/afterinvestadd.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/afterinvest/afterinvestadd.htm', '投后跟踪记录', null, 'afterInvestManager.getAfterInvestJsonForMobile()', '1', 'MOBILE', null,'1');

delete from tmobile_config_field f where f.c_modelcode='/afterinvest/afterinvestadd.htm';

delete from tmobile_config_field f where f.c_modelcode='/afterinvest/afterLonaccount.htm';

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterLonaccount.htm', '重点跟踪借款人', 'after_investment_vipLoanaccountinfo', null, '重点跟踪借款人信息', '9', 1, '{"title":"重点跟踪借款人信息","columns":[{"name":"借款人","code":"loanaccountname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"跟踪信息","code":"traceinfo","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"行动计划","code":"actionplan","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '重点跟踪借款人信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', '投后跟踪记录', 'fivelevel', null, '五级分类', '6', 6, 'FIVELEVEL', null, null, null, '投后跟踪信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', '投后跟踪记录', 'guaranteetraceinfo', null, '担保人跟踪信息', '1', 12, null, null, null, null, '投后跟踪信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', '投后跟踪记录', 'iswarning', null, '是否风险预警', '6', 5, 'YES_OR_NO', null, null, null, '投后跟踪信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', '投后跟踪记录', 'keyloaninfolist', null, '重点借款人跟踪信息', '9', 15, '{"title":"重点借款人跟踪信息","columns":[{"name":"借款人编号","code":"loanaccountcode","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"false"},{"name":"借款人","code":"loanaccountname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"跟踪信息","code":"traceinfo","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '重点借款人跟踪信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', '投后跟踪记录', 'loanaccountcode', null, '借款人名称', '8', 2, 'user|all|0', null, null, null, '项目信息', 'select i.c_loanaccountname as factorvalue from tasset_loanaccount_info i where i.c_loanaccountcode=''{loanaccountcode}''');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', '投后跟踪记录', 'loantraceinfo', null, '债务人跟踪信息', '1', 10, null, null, null, null, '投后跟踪信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', '投后跟踪记录', 'managementdesc', null, '整体经营评价', '1', 13, null, null, null, null, '投后跟踪信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', '投后跟踪记录', 'mortgagetraceinfo', null, '抵质押物跟踪信息', '1', 11, null, null, null, null, '投后跟踪信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', '投后跟踪记录', 'projectcode', null, '项目名称', '8', 1, 'pos|all|0', null, null, null, '项目信息', 'select i.c_projectcode as factorvalue from tproject_info i where i.c_projectcode=''{projectcode}''');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', '投后跟踪记录', 'projecttraceinfo', null, '项目跟踪信息', '1', 7, null, null, null, null, '投后跟踪信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', '投后跟踪记录', 'recorddate', null, '投后跟踪日期', '4', 3, null, null, null, null, '投后跟踪信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', '投后跟踪记录', 'recordusercode', null, '跟踪人', '1', 4, null, null, null, null, '投后跟踪信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', '投后跟踪记录', 'riskdesc', null, '总体风险评价', '1', 9, null, null, null, null, '投后跟踪信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', '投后跟踪记录', 'todo', null, '后续跟踪计划', '1', 8, null, null, null, null, '投后跟踪信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/afterinvestadd.htm', '投后跟踪记录', 'warninginfo', null, '风险预警信息', '1', 14, null, null, null, null, '投后跟踪信息', null);

--项目变更表单

delete from tmobile_config_form m where m.c_formurl='approval/project/projectModify.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('approval/project/projectModify.htm', '项目变更表单', null, 'amcProjectMobileManager.getProjectJsonForMobileList()', '1', 'MOBILE', null,'1');

--项目评审

delete from tmobile_config_form m where m.c_formurl='approval/project/projectEvaluation.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('approval/project/projectEvaluation.htm', '项目评审', null, 'amcProjectMobileManager.getProjectJsonForMobileList()', '1', 'MOBILE', null ,'1');

--21要素与19要素
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
values ('/pm/handleproject/dealobjectforfactor_new.htm?process_start={process_start}', '处置对象(新)', 'tproject_info_object_new_eg', null, '处置对象', null, null, '{"title":"处置对象","columns":[{"name":"项目名称","code":"projectname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"借款人名称","code":"loanaccountname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"资产名称","code":"objectname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"本金(元)","code":"corpusamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"利息(元)","code":"interest","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"最新估值(元)","code":"appraisementvalue","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"剩余成本(元)","code":"overcost","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '处置对象', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/realAsset/pmRealAssetList.htm', '拟抵债资产信息', 'tproject_info_realasset_eg', null, '拟抵债资产信息', '9', 1, '{"title":"拟抵债资产信息","columns":[{"name":"资产名称","code":"objectname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"资产来源性质","code":"objecttype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"资产来源","code":"objectsource_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"资产明细类型","code":"typeex_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"省份","code":"province_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"城市","code":"cityname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"评估价值","code":"valuationamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"拟抵债金额","code":"pawnamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '拟抵债资产信息列表', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/handleproject/dealobjectforfactor.htm', '处置范围', 'object_channeltype', null, '处置范围', '6', 1, 'DEAL_RANGE', null, null, null, '处置范围', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/handleproject/dealobjectforfactor.htm?process_start={process_start}', '处置范围', 'object_dealprojectrange', null, '处置对象', '1', 1, null, null, null, null, '处置范围', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/investproject/predictprofit.htm', '预计收入信息', 'tasset_predictprofit_eg', null, '预计收入信息列表', '9', 1, '{"title":"预计收入信息列表","columns":[{"name":"id","code":"id","fieldType":"0","iscanupdate":"0","valuebound":"","isshow":"false"},{"name":"项目编号","code":"projectcode","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"年度","code":"yeardate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"预期收益率(%)","code":"predictyield","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"预计营业收入(元)","code":"preincome","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"实际营业收入(元)","code":"realincome","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"预计营业利润(元)","code":"pregrossprofit","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"实际净利润(元)","code":"realpureprofit","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '预计收入信息列表', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/financform/financinfo.htm', '财务信息', 'finainfo_finaInfoTable', null, '财务信息列表', '9', 1, '{"title":"财务信息列表","columns":[{"name":"所属业务部","code":"orgname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"录入人","code":"createusername","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"预计所需资金","code":"requirefund","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"预计付款时间","code":"prepaydate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"预计资金来源","code":"fundsource_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"预计操作平台","code":"opplat_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '财务信息列表', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/householdValuation.htm', '户估值', 'householdValuation_assetseller', null, '资产出资方', '1', 1, null, null, null, null, '资产出资方', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/householdValuation.htm', '户估值', 'householdValuation_householdValuationDataTable', null, '户估值列表', '9', 4, '{"title":"户估值列表","columns":[{"name":"借款人编号","code":"xh","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"false"},{"name":"借款人名称","code":"loanaccountname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"评估价值","code":"valuationamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"评估价值的56%","code":"valuationamount56","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"估值时间","code":"appraisetime","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"预计可回收金额","code":"prerepayAmount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"预计回收报价","code":"prequotedPrice","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '户估值列表', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/householdValuation.htm', '户估值', 'householdValuation_projectcode', null, '项目编号', '1', 3, null, null, null, null, '项目编号', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/householdValuation.htm', '户估值', 'householdValuation_projectname', null, '项目名称', '1', 2, null, null, null, null, '项目名称', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/investlevelInfo.htm', '投资信息', 'tproject_info_investlevel_eg', null, '投资信息列表', '9', 1, '{"title":"投资信息列表","columns":[{"name":"投资期限（月）","code":"invest_timelimit","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"预期收益率（%）","code":"invest_expectyield","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"投资金额（元）","code":"invest_investamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"到期日期","code":"invest_enddate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '投资信息列表', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/investprojectGrid.htm?1=1', '投资项目信息', 'tproject_info_investproject_eg', null, '投资项目信息', '9', 1, '{"title":"投资项目信息","columns":[{"name":"投资项目","code":"investprojectname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"投资金额","code":"investbalance","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"是否代管","code":"entrustmanage","fieldType":"1","iscanupdate":"0","valuebound":"YES_OR_NO","isshow":"true"},{"name":"投资项目编号","code":"investprojectcode","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '投资项目信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/profitLevelInfo.htm?1=1', '融资信息', 'tproject_info_loaninfo_eg', null, '融资信息列表', '9', 1, '{"title":"融资信息列表","columns":[{"name":"期限","code":"invest_timelimit","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"利率（%）","code":"loan_yield","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"融资金额（元）","code":"loan_loanamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"到期日期","code":"loan_enddate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '融资信息列表', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/projectTeamMeambers.htm', '项目组成员', 'teammembers_MembersInfoDataTable', null, '项目组成员列表', '9', 1, '{"title":"项目组成员列表","columns":[{"name":"组员姓名","code":"view_membercode","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '项目组成员', null);


insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/transactionStructure.htm?type=3', '交易结构', 'transStructureinfo_eg', null, '交易结构', '9', 1, '{"title":"交易结构","columns":[{"name":"投资通道","code":"customername","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"服务费类别","code":"incometype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"服务费金额/比例(%)","code":"memo","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '交易结构', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/transactionStructure.htm?type=0', '交易结构', 'transStructureinfo_eg', null, '交易结构', '9', 1, '{"title":"交易结构","columns":[{"name":"参与名称","code":"customername","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"参与方式","code":"participanttype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"收益类型","code":"incometype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"出资金额(元)","code":"contributionamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"出资比例（%）","code":"contributionrate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"收益说明","code":"memo","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '交易结构', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/transactionStructure.htm?type=1', '交易结构', 'transStructureinfo_eg', null, '交易结构', '9', 1, '{"title":"交易结构","columns":[{"name":"参与名称","code":"customername","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"参与方式","code":"participanttype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"收益类型","code":"incometype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"出资金额(元)","code":"contributionamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"出资比例（%）","code":"contributionrate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"收益率(%)","code":"memo","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '交易结构', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/transactionStructure.htm?type=2', '交易结构', 'transStructureinfo_eg', null, '交易结构', '9', 1, '{"title":"交易结构","columns":[{"name":"股东名称","code":"customername","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"参与方式","code":"participanttype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"收益类型","code":"incometype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"出资金额(元)","code":"contributionamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"出资比例（%）","code":"contributionrate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"变更日期","code":"changedate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"收益说明","code":"memo","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"备注","code":"description","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '交易结构', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/pm/project/transactionStructure2.htm?type=0', '资金来源', 'transStructureinfo_ts_eg', null, '资金来源', '9', 1, '{"title":"资金来源","columns":[{"name":"参与名称","code":"customername","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"参与方式","code":"participanttype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"收益类型","code":"incometype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"出资金额(元)","code":"contributionamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"出资比例（%）","code":"contributionrate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"收益说明","code":"memo","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '资金来源', null);


--保证金转收入
delete from tmobile_config_form m where m.c_formurl='/financial/deposit/depositTurnIncomeFlowForm.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/financial/deposit/depositTurnIncomeFlowForm.htm', '保证金转收入', null, 'depositDataMobileManager.getBusinessDataForMobile()', '1', 'MOBILE', null,'1');

delete from tmobile_config_field m where m.C_MODELCODE='/financial/deposit/depositTurnIncomeFlowForm.htm';

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/deposit/depositTurnIncomeFlowForm.htm', '保证金总额', 'depositPrincipal', null, '保证金总额', '2', 3, null, null, null, null, '保证金总额', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/deposit/depositTurnIncomeFlowForm.htm', '划转类型', 'deposittransfertype', null, '划转类型', '6', 2, 'DEPOSIT_TRANSFER_TYPE', null, null, null, '划转类型', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/deposit/depositTurnIncomeFlowForm.htm', '借款人信息', 'loanlist', null, '借款人信息', '9', 8, '{"title":"借款人信息","columns":[{"name":"借款人名称","code":"loanaccountname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"户成本","code":"current_balance_display","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"保证抵扣金额","code":"transferbalance_display","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '借款人信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/deposit/depositTurnIncomeFlowForm.htm', '金额', 'principal', null, '金额', '2', 5, null, null, null, null, '金额', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/deposit/depositTurnIncomeFlowForm.htm', '项目名称', 'projectname', null, '项目名称', '1', 1, null, null, null, null, '项目名称', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/deposit/depositTurnIncomeFlowForm.htm', '款项摘要', 'remark', null, '款项摘要', '1', 6, null, null, null, null, '款项摘要', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/deposit/depositTurnIncomeFlowForm.htm', '转入日期', 'turnDate', null, '转入日期', '4', 4, null, null, null, null, '转入日期', null);

--回款转付
delete from tmobile_config_form m where m.c_formurl='/financial/payment/backpayform.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/financial/payment/backpayform.htm', '回款转付', null, 'paymentDataMobileManager.getBusinessDataForMobile()', '1', 'MOBILE', null,'1');

delete from tmobile_config_field m where m.C_MODELCODE='/financial/payment/backpayform.htm';

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/backpayform.htm', '回款转付', 'acconame', null, '收款账户', '1', 5, null, null, null, null, '回款转付表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/backpayform.htm', '回款转付', 'busiflag', null, '转付类型', '1', 2, null, null, null, null, '回款转付表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/backpayform.htm', '回款转付', 'customername', null, '收款方', '1', 4, null, null, null, null, '回款转付表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/backpayform.htm', '回款转付', 'cykind', null, '币种', '1', 7, null, null, null, null, '回款转付表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/backpayform.htm', '回款转付', 'fundname', null, '付款账户', '1', 3, null, null, null, null, '回款转付表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/backpayform.htm', '回款转付', 'preoccurbalance', null, '付款金额', '1', 8, null, null, null, null, '回款转付表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/backpayform.htm', '回款转付', 'preoccurdate', null, '付款日期', '1', 6, null, null, null, null, '回款转付表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/backpayform.htm', '回款转付', 'projectname', null, '项目名称', '1', 1, null, null, null, null, '回款转付表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/backpayform.htm', '回款转付', 'remark', null, '摘要', '1', 9, null, null, null, null, '回款转付表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/payment/backpayform.htm', '回款转付', 'trepayarrivalList', null, '到账确认信息', '9', 10, '{"title":"到账确认信息","columns":[{"name":"银行流水日期","code":"bankdate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"打款单位","code":"payercompany","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"打款银行","code":"payerbank","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"打款账号","code":"payeraccount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"入账账户开户行","code":"payeebank","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"入账银行账号","code":"payeeaccount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"确认金额","code":"amount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"剩余转付金额","code":"balance","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"本次转付金额","code":"transferamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '到账确认信息', null);

--定期估值审批表单
delete from tmobile_config_form m where m.c_formurl='approval/valuation/periodicValuation.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('approval/valuation/periodicValuation.htm', '定期估值审批表单', null, 'opertorvaluationMobileManager.getBusinessDataForMobile()', '1', 'MOBILE', null,'1');

delete from tmobile_config_field m where m.C_MODELCODE='approval/valuation/periodicValuation.htm';

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/valuation/periodicValuation.htm', '定期估值', 'assetseller', null, '资产出售方', '1', 3, null, null, null, null, '资产出售方', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/valuation/periodicValuation.htm', '户列表', 'datalist', null, '户列表', '9', 5, '{"title":"户估值列表","columns":[{"name":"借款人编号","code":"loanaccountnum","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"false"},{"name":"借款人名称","code":"loanaccountname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"户成本","code":"current_balance_display","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"最新估值价格","code":"valuation","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"估值时间","code":"appraisetime","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"预计减值计提金额","code":"valuationGain","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"最新估值时间","code":"valuationDate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '户列表', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/valuation/periodicValuation.htm', '债权金额', 'debtamount', null, '债权金额', '2', 4, null, null, null, null, null, null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/valuation/periodicValuation.htm', '定期估值', 'projectcode', null, '项目编号', '1', 1, null, null, null, null, '项目编号', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/valuation/periodicValuation.htm', '定期估值', 'projectname', null, '项目名称', '1', 2, null, null, null, null, '项目名称', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('approval/valuation/periodicValuation.htm', '估值合计', 'valuactionTotal', null, '估值合计', '1', 5, null, null, null, null, null, null);


--风险移除
delete from tmobile_config_form m where m.c_formurl='/afterinvest/riskwarning/riskRemoveForm.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/afterinvest/riskwarning/riskRemoveForm.htm', '风险移除', null, 'riskWarningRemoveMobileManager.getBusinessDataForMobile()', '1', 'MOBILE', null,'1');


delete from tmobile_config_field m where m.C_MODELCODE='/afterinvest/riskwarning/riskRemoveForm.htm';

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskRemoveForm.htm', '风险移除', 'closeDate', null, '关闭日期', '1', 4, null, null, null, null, '项目基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskRemoveForm.htm', '风险移除', 'list', null, '风险反馈信息', '9', 6, '{"title":"风险反馈信息","columns":[{"name":"反馈日期","code":"feedbackDate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"反馈人","code":"enterUserName","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"反馈内容","code":"feedbackContent","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"风险是否已解决","code":"isWarningRemove_show","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '风险反馈信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskRemoveForm.htm', '风险移除', 'loanAccountName', null, '借款人名称', '1', 2, null, null, null, null, '项目基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskRemoveForm.htm', '风险移除', 'memo', null, '备注', '1', 5, null, null, null, null, '项目基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskRemoveForm.htm', '风险移除', 'occurDate', null, '风险发生日期', '1', 3, null, null, null, null, '项目基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskRemoveForm.htm', '风险移除', 'projectName', null, '项目名称', '1', 1, null, null, null, null, '项目基本信息', null);

--风险预警
delete from tmobile_config_form m where m.c_formurl='/afterinvest/riskwarning/riskWarningForm.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/afterinvest/riskwarning/riskWarningForm.htm', '风险预警', null, 'riskWarningMobileManager.getBusinessDataForMobile()', '1', 'MOBILE', null,'1');

delete from tmobile_config_field m where m.C_MODELCODE='/afterinvest/riskwarning/riskWarningForm.htm';

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskWarningForm.htm', '风险预警', 'noticeDateList', null, '跟踪检查日期', '9', 5, '{"title":"跟踪检查日期","columns":[{"name":"跟踪检查日期id","code":"noticeDateId","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"false"},{"name":"自定义时间表类型","code":"noticeDateType","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"false"},{"name":"风险预警ID","code":"noticeDateRuleId","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"false"},{"name":"跟踪检查日期","code":"checkDate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskWarningForm.htm', '风险预警', 'riskWarningTypes', null, '风险说明列表', '9', 5, '{"title":"风险说明列表","columns":[{"name":"风险级别","code":"warningLevelName","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"风险类型","code":"warningType","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"风险信号内容","code":"warningContent","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"预警类型id","code":"warningTypeId","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"false"}]}', null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskWarningForm.htm', '风险预警', 'feedbackRate_show', null, '反馈频率', '1', 4, null, null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskWarningForm.htm', '风险预警', 'loanAccountName', null, '借款人名称', '1', 2, null, null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskWarningForm.htm', '风险预警', 'occurDate', null, '发生时间', '1', 3, null, null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskWarningForm.htm', '风险预警', 'projectName', null, '项目名称', '1', 1, null, null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskWarningForm.htm', '风险预警', 'riskDesc', null, '风险描述', '1', 6, null, null, null, null, '基本信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskWarningForm.htm', '风险预警', 'riskSolution', null, '风险缓释方案', '1', 7, null, null, null, null, '基本信息', null);



--落实条件表单


delete from tmobile_config_form m where m.c_formurl='pm/meetingManagement/implementconditionForm.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('pm/meetingManagement/implementconditionForm.htm', '落实条件表单', null, 'meetingApplyMoblieImplementManager.getBusinessDataForMobile()', '1', 'MOBILE', null,'1');

delete from tmobile_config_field m where m.C_MODELCODE='pm/meetingManagement/implementconditionForm.htm';

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/meetingManagement/implementconditionForm.htm', '落实条件表单', 'meno', null, '备注', '1', 2, null, null, null, null, '落实条件', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/meetingManagement/implementconditionForm.htm', '落实条件表单', 'conditionlist', null, '落实条件列表', '9', 1, '{"title":"落实条件信息","columns":[{"name":"是否已落实","code":"isImplement_view","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"条件内容","code":"condition","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '落实条件', null);











