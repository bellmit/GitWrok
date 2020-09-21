declare
begin
if fc_isexistsprojectfactorinfo('tproject_info_projectsources') then
	update tproject_factor_info t set  t.l_maxlength = '50' where t.c_factorcode = 'tproject_info_projectsources';
end if;
end;
/