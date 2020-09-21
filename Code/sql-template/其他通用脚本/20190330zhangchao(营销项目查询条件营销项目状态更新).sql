declare
begin
if fc_IsDataExists('select count(*) from tproject_template_field t where t.c_fieldcode = ''mpcstatus''') then 
	update tproject_template_field t set t.c_comptype = '6',t.c_valuebound = 'STORE_PROJECT_STATUS' where t.c_fieldcode = 'mpcstatus';
end if;
end;
/