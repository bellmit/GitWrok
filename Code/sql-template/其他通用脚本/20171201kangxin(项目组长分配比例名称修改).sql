declare
begin

if fc_IsExistsProjectFactorInfo('tproject_info_projectleaderrate') then

update tproject_factor_info t set c_factorname = '项目组长分配比例(%)' where c_factorcode = 'tproject_info_projectleaderrate';

end if;

end;
/