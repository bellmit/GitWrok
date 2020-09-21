
declare
begin
if not fc_IsSysparamsExists('viewableHouseholdCostRoleNumber') then
	insert into tsys_parameter (PARAM_CODE, REL_ORG, KIND_CODE, PARAM_NAME, PARAM_VALUE, LIFECYCLE, PLATFORM, PARAM_DESC, EXT_FLAG, PARAM_REGEX)
values ('viewableHouseholdCostRoleNumber', '0_000000', 'BIZ_PARAM', '可查看户成本角色编号', '9999', null, '0', '控制具有户成本查看权限的角色编号', null, null);
end if;

end;
/
