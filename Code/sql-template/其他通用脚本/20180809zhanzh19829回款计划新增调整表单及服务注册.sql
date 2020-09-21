declare
begin
if not fc_IsDataExists('select count(*) from jbpm4_ext_formreg t where t.uuid = ''f046c6cc42764654a3d70ab7e4a4abe2''') then
	insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3, C_FORMBEAN)
values ('f046c6cc42764654a3d70ab7e4a4abe2', 'b4f539ddefb848f99ff48c1a8f4b5f8f', 'PAGE_MW', '用款计划新增表单', '/financial/payplan/payplaneditflow.htm?querymodel=add_model', null, null, null, null, null, null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_formreg t where t.uuid = ''a97352e6b520443b9328328809fa1895''') then
	insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3, C_FORMBEAN)
values ('a97352e6b520443b9328328809fa1895', 'b4f539ddefb848f99ff48c1a8f4b5f8f', 'PAGE_MW', '用款计划调整表单', '/financial/payplan/payplaneditflow.htm?querymodel=edit_model', null, null, null, null, null, null);
end if;
end;
/

