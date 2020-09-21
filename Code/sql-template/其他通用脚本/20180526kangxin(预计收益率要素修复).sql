declare
begin
if fc_isexistsprojectfactorinfo('tproject_info_predictyield2') then
	update tproject_factor_info set C_STORETYPE = '1' where c_factorcode = 'tproject_info_predictyield2';
end if;

if fc_isexistsprojectfactorinfo('tproject_info_predictyield') then
	update tproject_factor_info set C_STORETYPE = '1' where c_factorcode = 'tproject_info_predictyield';
end if;

end;
/