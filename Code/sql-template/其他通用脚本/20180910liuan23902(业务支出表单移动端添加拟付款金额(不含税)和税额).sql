declare
begin

--移动端业务支出表单添加“税额”字段
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''/financial/payment/busexpenses.htm'' and t.C_FIELDCODE = ''taxamount''') then
    insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
  values ('/financial/payment/busexpenses.htm', '业务支出表单', 'taxamount', null, '税额', '2', 21, null, null, null, null, '业务支出表单信息', null);
end if;

--移动端业务支出表单添加“拟付款金额(不含税)”字段
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''/financial/payment/busexpenses.htm'' and t.C_FIELDCODE = ''amountWithoutTax''') then
    insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
  values ('/financial/payment/busexpenses.htm', '业务支出表单', 'amountWithoutTax', null, '拟付款金额(不含税)', '2', 22, null, null, null, null, '业务支出表单信息', null);
end if;

end;
/