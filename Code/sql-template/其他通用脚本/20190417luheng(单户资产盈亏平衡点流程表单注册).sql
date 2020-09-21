declare
begin
if not fc_IsDataExists('select count(*) from jbpm4_ext_formreg t where t.uuid = ''86B630B3092DA423E05011AC0500146C''') then
	insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3)
	values ('86B630B3092DA423E05011AC0500146C', '-1', 'PAGE_MW', '单户资产盈亏平衡点流程表单', '/v2/loaner/breakeven/add.htm', '单户资产盈亏平衡点流程表单', 'loanerBreakevenForm', null, null, null);
end if;

end;
/