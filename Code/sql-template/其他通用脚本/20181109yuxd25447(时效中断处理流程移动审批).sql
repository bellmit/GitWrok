--[M201811081469]20181109yuxd25447(时效中断处理流程支持移动审批)--start--
declare
begin
if not fc_IsDataExists('select count(*) from tmobile_config_form t where t.C_FORMURL = ''creditorcontract/timestopFlow.htm'' and t.C_CONTENTBOUND=''creditorContractManager.getTimestopListForMobile()''') then
 insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('creditorcontract/timestopFlow.htm', '时效中断处理流程', null, 'creditorContractManager.getTimestopListForMobile()', '1', 'MOBILE', null, '1');
end if;

if fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''creditorcontract/timestopFlow.htm'' and t.C_FIELDCODE=''projectName''') then
	update tmobile_config_field  t set t.C_FIELDCODE='projectname' where t.C_MODELCODE = 'creditorcontract/timestopFlow.htm' and t.C_FIELDCODE='projectName';
end if;
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''creditorcontract/timestopFlow.htm'' and t.C_FIELDCODE=''projectname''') then
  insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('creditorcontract/timestopFlow.htm', '时效中断处理流程', 'projectname', null, '项目名称', '1', 1, null, null, null, null, '时效中断处理',null);
end if;
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''creditorcontract/timestopFlow.htm'' and t.C_FIELDCODE=''creditorcontractcode''') then
  insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('creditorcontract/timestopFlow.htm', '时效中断处理流程', 'creditorcontractcode', null, '债权内部合同编号', '0', 2, null, null, null, null, '时效中断处理',null);
end if;
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''creditorcontract/timestopFlow.htm'' and t.C_FIELDCODE=''mainContract''') then
  insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('creditorcontract/timestopFlow.htm', '时效中断处理流程', 'mainContract', null, '主合同', '1', 3, null, null, null, null, '时效中断处理',null);
end if;
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''creditorcontract/timestopFlow.htm'' and t.C_FIELDCODE=''isContaincreditor''') then
  insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('creditorcontract/timestopFlow.htm', '时效中断处理流程', 'isContaincreditor', null, '是否中断主合同', '6', 4, 'BIZ_YES_OR_NO', null, null, null, '时效中断处理',null);
end if;
if fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''creditorcontract/timestopFlow.htm'' and t.C_FIELDCODE=''timestopMode''') then 
	update tmobile_config_field  t set t.C_FIELDCODE='stoptype' where t.C_MODELCODE = 'creditorcontract/timestopFlow.htm' and t.C_FIELDCODE='timestopMode';
end if;
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''creditorcontract/timestopFlow.htm'' and t.C_FIELDCODE=''stoptype''') then
  insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('creditorcontract/timestopFlow.htm', '时效中断处理流程', 'stoptype', null, '中断方式', '6', 5, 'INTERRUPT_MODE', null, null, null, '时效中断处理',null);
end if;
if fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''creditorcontract/timestopFlow.htm'' and t.C_FIELDCODE=''timestopDate''') then 
	update tmobile_config_field  t set t.C_FIELDCODE='stopdate' where t.C_MODELCODE = 'creditorcontract/timestopFlow.htm' and t.C_FIELDCODE='timestopDate';
end if;
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''creditorcontract/timestopFlow.htm'' and t.C_FIELDCODE=''stopdate''') then
  insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('creditorcontract/timestopFlow.htm', '时效中断处理流程', 'stopdate', null, '中断日期', '4', 6, null, null, null, null, '时效中断处理',null);
end if;
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''creditorcontract/timestopFlow.htm'' and t.C_FIELDCODE=''memo''') then
  insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('creditorcontract/timestopFlow.htm', '时效中断处理流程', 'memo', null, '备注', '3', 7, null, null, null, null, '时效中断处理',null);
end if;

if fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''creditorcontract/timestopFlow.htm'' and t.C_FIELDCODE=''projectCode''') then
	update tmobile_config_field  t set t.C_FIELDCODE='projectcode' where t.C_MODELCODE = 'creditorcontract/timestopFlow.htm' and t.C_FIELDCODE='projectCode';
end if;	
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''creditorcontract/timestopFlow.htm'' and t.C_FIELDCODE=''projectcode''') then
  insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('creditorcontract/timestopFlow.htm', '时效中断处理流程', 'projectcode', null, '项目编号', '0', 8, null, null, null, null, '时效中断处理',null);
end if;
--修改之前提交的保证合同信息中的纸质保证合同编号的code和保证合同名字
if fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''creditorcontract/timestopFlow.htm'' and t.C_FIELDCODE=''gridGuaranteecontract''and t.C_VALUEBOUND=''{"title":"收益分配信","columns":[{"name":"纸质保证合同编号","code":"trustcontractid","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"是否最高额担保","code":"guaranteetype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"担保方式","code":"isguaranteetype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"保证人","code":"relationcode_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"保证金额","code":"guaranteeamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"剩余保证金额","code":"remainingguaranteeamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"币种","code":"cykind_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"保证期间","code":"guaranteeperiod","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"诉讼时效届满日","code":"limitationexpdate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"保证开始日期","code":"guaranteestartdate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"保证结束日期","code":"guaranteeenddate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}''') then
	update tmobile_config_field  t set t.C_VALUEBOUND='{"title":"保证合同信息","columns":[{"name":"纸质保证合同编号","code":"guaranteecontractno","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"是否最高额担保","code":"guaranteetype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"担保方式","code":"isguaranteetype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"保证人","code":"relationcode_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"保证金额","code":"guaranteeamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"剩余保证金额","code":"remainingguaranteeamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"币种","code":"cykind_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"保证期间","code":"guaranteeperiod","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"诉讼时效届满日","code":"limitationexpdate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"保证开始日期","code":"guaranteestartdate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"保证结束日期","code":"guaranteeenddate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}' where t.C_MODELCODE = 'creditorcontract/timestopFlow.htm' and t.C_FIELDCODE='gridGuaranteecontract';
end if;	
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''creditorcontract/timestopFlow.htm'' and t.C_FIELDCODE=''gridGuaranteecontract''') then
 insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('creditorcontract/timestopFlow.htm', '时效中断处理流程', 'gridGuaranteecontract', null, '保证合同信息', '9', 9, '{"title":"保证合同信息","columns":[{"name":"纸质保证合同编号","code":"guaranteecontractno","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"是否最高额担保","code":"guaranteetype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"担保方式","code":"isguaranteetype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"保证人","code":"relationcode_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"保证金额","code":"guaranteeamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"剩余保证金额","code":"remainingguaranteeamount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"币种","code":"cykind_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"保证期间","code":"guaranteeperiod","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"诉讼时效届满日","code":"limitationexpdate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"保证开始日期","code":"guaranteestartdate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"保证结束日期","code":"guaranteeenddate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '时效中断处理',null);
end if;
end;
/
--[M201811081469]20181109yuxd25447(时效中断处理流程支持移动审批)--end--