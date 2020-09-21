declare
begin
if not fc_IsExistsExtFormReg('0054d2bc18654906ada50557ff3d7c75') then
	insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3)
values ('0054d2bc18654906ada50557ff3d7c75', 'b4f539ddefb848f99ff48c1a8f4b5f8f', 'PAGE_MW', '到账确认表单', '/financial/arrivaldata/confirmflowform.htm', '', '', '', '', '');
end if;
end;
/