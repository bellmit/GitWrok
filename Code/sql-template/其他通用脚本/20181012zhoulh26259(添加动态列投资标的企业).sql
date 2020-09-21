
declare
begin

if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''investtargetname''') then
  insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('investtargetname', '投资标的企业', 'debtbuyoutmanager', 11, '1', '4', null, 1, null, '150', null, null, null, null);
end if;

end;
/