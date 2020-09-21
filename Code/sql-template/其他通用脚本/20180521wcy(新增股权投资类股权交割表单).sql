declare
begin

if not fc_IsDataExists('select count(*) from jbpm4_ext_formreg t where t.UUID = ''b780102587c544268b231022851b1a98''') then 
insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3, C_FORMBEAN)
values ('b780102587c544268b231022851b1a98', 'a330c239cd994a6fbd87c3e9a8ea5da8', 'PAGE_MW', '股权交割（股权投资）表单', '/invest/stockdelivflow_gq.htm', null, null, null, null, null, null);
end if;
end;
/