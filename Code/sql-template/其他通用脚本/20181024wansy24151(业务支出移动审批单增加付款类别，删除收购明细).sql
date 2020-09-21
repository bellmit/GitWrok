declare
begin
-- 业务支出审批新增字段 付款类别
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.c_modelcode = ''/financial/payment/busexpenses.htm'' and t.c_fieldcode = ''payCategory'' ') then
  insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
  values ('/financial/payment/busexpenses.htm', '业务支出表单', 'payCategory', null, '付款类别', '6', 3, 'AMC_PAYMENT_CATEGORY', null, null, null, '业务支出表单信息', null);
end if;

-- 删除权益投资明细与收购明细字段
delete from tmobile_config_field t where t.c_modelcode = '/financial/payment/busexpenses.htm' and t.c_fieldcode = 'acquisitiontype';
delete from tmobile_config_field t where t.c_modelcode = '/financial/payment/busexpenses.htm' and t.c_fieldcode = 'equityInvestType'; 

end;
/
