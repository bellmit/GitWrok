declare
begin
-- ҵ��֧�����������ֶ�
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.c_modelcode = ''/financial/payment/busexpenses.htm'' and t.c_fieldcode = ''otherPayName'' ') then
	insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
	values ('/financial/payment/busexpenses.htm', 'ҵ��֧����', 'otherPayName', null, '����֧������', '1', 4, null, null, null, null, 'ҵ��֧������Ϣ', null);
end if;

if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.c_modelcode = ''/financial/payment/busexpenses.htm'' and t.c_fieldcode = ''acquisitiontype'' ') then
	insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
	values ('/financial/payment/busexpenses.htm', 'ҵ��֧����', 'acquisitiontype', null, '�չ�֧����ϸ', '6', 4, 'ACQUISITION_PAY_TYPE', null, null, null, 'ҵ��֧������Ϣ', null);
end if;

if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.c_modelcode = ''/financial/payment/busexpenses.htm'' and t.c_fieldcode = ''equityInvestType'' ') then
	insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
	values ('/financial/payment/busexpenses.htm', 'ҵ��֧����', 'equityInvestType', null, 'Ȩ��Ͷ����ϸ', '6', 4, 'EQUITY_INVEST_TYPE', null, null, null, 'ҵ��֧������Ϣ', null);
end if;

end;
/