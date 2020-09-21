declare
begin
if not fc_IsDataExists('select count(*) from jbpm4_ext_formreg t where t.uuid = ''86142A0CB5CB1267E05011AC0500717E''') then
	insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3)
	values ('86142A0CB5CB1267E05011AC0500717E', '2cabb42eb92842558a555202a97410f2', 'PAGE_MW', '投后管理方案表单', '/v2/after/program/add.htm', '投后管理-投后管理方案表单', 'afterProgramForm', null, null, null);
end if;
-- 添加 C_FORMBEAN 配置-- begin -- 
if fc_IsDataExists('select count(*) from jbpm4_ext_formreg t where t.uuid = ''86142A0CB5CB1267E05011AC0500717E'' and t.c_formbean is null') then
 update jbpm4_ext_formreg t set t.c_formbean = 'afterProgramProcessManager' where t.uuid = '86142A0CB5CB1267E05011AC0500717E';
end if;
-- 添加 C_FORMBEAN 配置-- end -- 

end;
/