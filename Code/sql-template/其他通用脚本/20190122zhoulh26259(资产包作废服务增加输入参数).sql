declare
begin

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID = ''f56f3e31dd944a0ba1c75339890c1947''') then
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('f56f3e31dd944a0ba1c75339890c1947', '6ac621488c0343b19dd4ebeb1846998f', '流程状态', '1', 'String', '当前流程的状态', null);
end if;

end;
/
