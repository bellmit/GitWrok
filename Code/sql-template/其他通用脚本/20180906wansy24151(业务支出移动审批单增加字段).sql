declare
begin
-- 业务支出审批新增字段
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.c_modelcode = ''/financial/payment/busexpenses.htm'' and t.c_fieldcode = ''otherPayName'' ') then
	insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
	values ('/financial/payment/busexpenses.htm', '业务支出表单', 'otherPayName', null, '其他支出名称', '1', 4, null, null, null, null, '业务支出表单信息', null);
end if;

if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.c_modelcode = ''/financial/payment/busexpenses.htm'' and t.c_fieldcode = ''acquisitiontype'' ') then
	insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
	values ('/financial/payment/busexpenses.htm', '业务支出表单', 'acquisitiontype', null, '收购支出明细', '6', 4, 'ACQUISITION_PAY_TYPE', null, null, null, '业务支出表单信息', null);
end if;

if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.c_modelcode = ''/financial/payment/busexpenses.htm'' and t.c_fieldcode = ''equityInvestType'' ') then
	insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
	values ('/financial/payment/busexpenses.htm', '业务支出表单', 'equityInvestType', null, '权益投资明细', '6', 4, 'EQUITY_INVEST_TYPE', null, null, null, '业务支出表单信息', null);
end if;

end;
/