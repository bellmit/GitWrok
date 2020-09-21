
declare
begin
if fc_isexistsprojectfactorinfo('tproject_info_dealtype') then
	update tproject_factor_info t set t.c_fieldtype = '9',l_maxlength = '20' where t.c_factorcode = 'tproject_info_dealtype';
end if;
if fc_isexistsprojectfactorrule('cbms_cz_1') then
update tproject_factor_rule t set t.c_funargs = '''tproject_info_thirdpartyname'',M[[tproject_info_dealtype],''21'',''g'']M' where t.c_ruleid = 'cbms_cz_1';
end if;

if fc_isexistsprojectfactorrule('cbms_cz_2') then
update tproject_factor_rule t set t.c_funargs = '''tproject_info_publictranstype'',M[[tproject_info_dealtype],''27'',''g'']M' where t.c_ruleid = 'cbms_cz_2';
end if;

if fc_isexistsprojectfactorrule('cbms_cz_23') then
	update tproject_factor_rule t set t.c_funargs = '''tproject_info_realasset'',M[[tproject_info_dealtype],''G'',''g'']M' where t.c_ruleid = 'cbms_cz_23';
end if;

end;
/