declare
begin

if not fc_IsExistsExtFormReg('9aba02177fc94a8e8d1a156455ffaa85') then
    insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3, C_FORMBEAN, C_SYSTEM)
  values ('9aba02177fc94a8e8d1a156455ffaa85', 'b4f539ddefb848f99ff48c1a8f4b5f8f', 'PAGE_MW', '新增到账数据表单', '/v2/financial/arrival/addEditArrivalForm.htm', null, 'addarrivalform', null, null, null, null, null);
end if;

end;
/