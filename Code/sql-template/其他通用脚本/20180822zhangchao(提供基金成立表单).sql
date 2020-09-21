declare
begin

if not fc_IsDataExists('select count(*) from jbpm4_ext_formreg t where t.UUID = ''58401dbd14704799b4b10f0c3e11c50c''') then 
insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3, C_FORMBEAN)
values ('58401dbd14704799b4b10f0c3e11c50c', 'c4e52c8a896b4e348e1dc9f4aca2799b', 'PAGE_MW', '基金成立', 'pm/fund/fundform.htm', null, 'fundEstablished', null, null, null, null);
end if;

end;
/
