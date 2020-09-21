declare
begin
if  fc_IsExistsProjectFactorInfo('tproject_info_xzzjxq') then
 update tproject_factor_info t set t.c_fieldtype='2' where t.c_factorcode = 'tproject_info_xzzjxq';
end if;
end;
/
