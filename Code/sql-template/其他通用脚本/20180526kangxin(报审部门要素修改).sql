declare
begin
if fc_isexistsprojectfactorinfo('tproject_info_approvedept') then
	update tproject_factor_info set C_STORETYPE = '1' where c_factorcode = 'tproject_info_approvedept';
end if;

end;
/