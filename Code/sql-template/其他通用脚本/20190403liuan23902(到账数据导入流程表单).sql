declare
begin

if not fc_IsExistsExtFormReg('e667f4dc05fc44448a90215ec0b82523') then
    insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3, C_FORMBEAN, C_SYSTEM)
  values ('e667f4dc05fc44448a90215ec0b82523', 'b4f539ddefb848f99ff48c1a8f4b5f8f', 'PAGE_MW', '到账数据导入流程表单', '/v2/financial/arrival/arrivalImportForm.htm', null, 'arrivalimportform', null, null, null, null, null);
end if;

end;
/