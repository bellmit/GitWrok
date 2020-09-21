declare
begin
delete from tproject_template_field t where t.C_FIELDCODE = 'contractType' and t.C_MODELCODE = 'contractManager';
delete from tproject_temp_config_field t where t.c_modelcode ='contractManager' and t.c_fieldcode ='contractType';
if not fc_isexiststemplatefield('contractManager','contractType') then  
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE)
values ('contractType', '合同类型code', 'contractManager', 0, '1', null, null, 1, null, null, null, null);
end if;
end;
/