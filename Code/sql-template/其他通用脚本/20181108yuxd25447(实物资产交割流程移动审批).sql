--[M201811081469]20181108yuxd25447(实物资产交割流程支持移动审批)--start--
declare
begin
if not fc_IsDataExists('select count(*) from tmobile_config_form t where t.C_FORMURL = ''pm/realAsset/realAssetsDeliv.htm'' and t.C_CONTENTBOUND=''cbmsTinvestCollateralManager.getRealAssetFormForMobile()''') then
	insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('pm/realAsset/realAssetsDeliv.htm', '实物资产交割流程表单', null, 'cbmsTinvestCollateralManager.getRealAssetFormForMobile()', '1', 'MOBILE', null, '1');
end if;
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''pm/realAsset/realAssetsDeliv.htm'' and t.C_FIELDCODE=''projectcode''') then
	insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/realAsset/realAssetsDeliv.htm', '实物资产交割流程表单', 'projectcode', null, '项目编号', '0', 1, null, null, null, null, '回款信息',null);
end if ;
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''pm/realAsset/realAssetsDeliv.htm'' and t.C_FIELDCODE=''realAssetCode''') then
insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/realAsset/realAssetsDeliv.htm', '实物资产交割流程表单', 'realAssetCode', null, '资产编号', '1', 2, null, null, null, null, '回款信息',null);
end if ;
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''pm/realAsset/realAssetsDeliv.htm'' and t.C_FIELDCODE=''realAssetName''') then
insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/realAsset/realAssetsDeliv.htm', '实物资产交割流程表单', 'realAssetName', null, '资产名称', '1',3, null, null, null, null, '回款信息',null);
end if;
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''pm/realAsset/realAssetsDeliv.htm'' and t.C_FIELDCODE=''amount''') then
insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/realAsset/realAssetsDeliv.htm', '实物资产交割流程表单', 'amount', null, '抵债金额', '16', 4, null, null, null, null, '回款信息',null);
end if;
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''pm/realAsset/realAssetsDeliv.htm'' and t.C_FIELDCODE=''transferTax''') then
insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/realAsset/realAssetsDeliv.htm', '实物资产交割流程表单', 'transferTax', null, '过户交易税费', '16',5, null, null, null, null, '回款信息',null);
end if;
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''pm/realAsset/realAssetsDeliv.htm'' and t.C_FIELDCODE=''newLwarrantno''') then
insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/realAsset/realAssetsDeliv.htm', '实物资产交割流程表单', 'newLwarrantno', null, '新的土地权证号', '1', 6, null, null, null, null, '回款信息',null);
end if;
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''pm/realAsset/realAssetsDeliv.htm'' and t.C_FIELDCODE=''newHwarrantno''') then
insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/realAsset/realAssetsDeliv.htm', '实物资产交割流程表单', 'newHwarrantno', null, '新的房权证号', '1', 7, null, null, null, null, '回款信息',null);
end if;
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''pm/realAsset/realAssetsDeliv.htm'' and t.C_FIELDCODE=''projectname''') then
insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/realAsset/realAssetsDeliv.htm', '实物资产交割流程表单', 'projectname', null, '项目名称', '1', 8, null, null, null, null, '回款信息',null);
end if;
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''pm/realAsset/realAssetsDeliv.htm'' and t.C_FIELDCODE=''dend''') then
insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/realAsset/realAssetsDeliv.htm', '实物资产交割流程表单', 'dend', null, '截止日期', '4', 9, null, null, null, null, '回款信息',null);
end if;
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''pm/realAsset/realAssetsDeliv.htm'' and t.C_FIELDCODE=''distributionorder''') then
insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/realAsset/realAssetsDeliv.htm', '实物资产交割流程表单', 'distributionorder', null, '冲抵顺序', '6',10, 'DISTRIBUTION_ORDER', null, null, null, '回款信息',null);
end if;

if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''pm/realAsset/realAssetsDeliv.htm'' and t.C_FIELDCODE=''gridCreditorContract''') then
insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/realAsset/realAssetsDeliv.htm', '实物资产交割流程表单', 'gridCreditorContract', null, '债权合同冲销信息', '9', 12, '{"title":"债权合同冲销信息","columns":[{"name":"债权合同编号","code":"creditorcontractcode","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"借款人名称","code":"loanaccountname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"清收本金(元)","code":"rcorpusamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"应收本金","code":"corpusamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"清收利息(元)","code":"rinterest","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"应收利息","code":"interest","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"清收罚息(元)","code":"rdefaultinterest","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"应收罚息","code":"defaultinterest","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"清收复利(元)","code":"rcompoundinterest","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"应收复利","code":"compoundinterest","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"是否处置完毕","code":"isfinished","fieldType":"5","iscanupdate":"0","valuebound":"03:是;1:是;02:否;1否","isshow":"true"}]}', null, null, null, null, null);
end if ;
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''pm/realAsset/realAssetsDeliv.htm'' and t.C_FIELDCODE=''gridGuarantee''') then
insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/realAsset/realAssetsDeliv.htm', '实物资产交割流程表单', 'gridGuarantee', null, '担保人信息', '9', 13, '{"title":"担保人信息","columns":[{"name":"担保合同名称","code":"guaranteecontractno","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"担保金额(元)","code":"guaranteeamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"剩余担保金额(元)","code":"repayamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"本次回款金额(元)","code":"amount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"是否处置完毕","code":"isfinished","fieldType":5,"iscanupdate":"0","valuebound":"0:否;1:是","isshow":"true"}]}', null, null, null, null, null);

end if;
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''pm/realAsset/realAssetsDeliv.htm'' and t.C_FIELDCODE=''gridLoan''') then
insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/realAsset/realAssetsDeliv.htm', '实物资产交割流程表单', 'gridLoan', null, '户信息', '9', 11, '{"title":"户信息","columns":[{"name":"项目名称","code":"projectname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"户名称","code":"loanaccountname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"初始户成本(元)","code":"loanamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"已回款金额(元)","code":"repayamount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"实际回款金额(元)","code":"amount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"冲销前挂账(元)","code":"debts","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"净回款金额(元)","code":"netrepay","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"特殊说明","code":"specialremark","fieldType":"3","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"是否处置完毕","code":"isfinished","fieldType":"5","iscanupdate":"0","valuebound":"0:否;1:是","isshow":"true"}]}', null, null, null, null, null);
end if;
end ;
/
--[M201811081469]20181108yuxd25447(实物资产交割流程支持移动审批)--start--