declare
begin

--�ƶ���ҵ��֧������ӡ���˾���ֶ�
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''/financial/payment/busexpenses.htm'' and t.C_FIELDCODE = ''paymentCompany''') then
    insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
  values ('/financial/payment/busexpenses.htm', 'ҵ��֧����', 'paymentCompany', null, '��˾', '6', 23, 'PAYMENT_COMPANY', null, null, null, 'ҵ��֧������Ϣ', null);
end if;

end;
/