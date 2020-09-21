declare
begin
if not fc_IsExistsTemplateField('paymentList','projectphase') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH)
    values ('projectphase', 'ÏîÄ¿½×¶Î', 'paymentList', null, '1', '20', null, 1, null, null);
end if;
end;
/
