declare
begin
if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.uuid = ''3fc0498b1faf4d149a722d7c40ff1098''') then
  	insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('3fc0498b1faf4d149a722d7c40ff1098', 'a3eb2bb05d7c42d7b2880624908866d3', '审批状态', '1', 'String', '"1"：审批通过，''0"：驳回发起人', '"1"');
end if;
end;
/