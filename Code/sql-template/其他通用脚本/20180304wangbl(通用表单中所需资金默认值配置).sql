declare
begin
if not fc_IsDataExists('select count(*) from tflowform_autovalue_config t where t.c_key=''needmoney''') then
   insert into tflowform_autovalue_config (C_KEY, C_SQL, C_VALUE, C_MODE, C_ATTRIBUTE)
values ('needmoney', 'select t.f_requiredfund as needmoney from tproject_info t where t.c_projectcode = ?', null, '2', null);
end if;
end;
/

