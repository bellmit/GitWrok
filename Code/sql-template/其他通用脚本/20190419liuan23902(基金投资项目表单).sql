declare
begin

if not fc_IsExistsExtFormReg('888551ec03d1471e8595a1161571b8ed') then
    insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3, C_FORMBEAN, C_SYSTEM)
    values ('888551ec03d1471e8595a1161571b8ed', 'a330c239cd994a6fbd87c3e9a8ea5da8', 'PAGE_MW', '基金投资管理项目表单', 'approval/project/projectEvaluation.htm?projectnature=19'||'&'||'intrustflag=19'||'&'||'tempcodes=fundInvestmentProject', null, 'fundInvestmentProject', null, null, null, null, null);
end if;

end;
/