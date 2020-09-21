create or replace function fc_IsSysparamsEquals(in_paramcode in varchar2,in_paramvalue in varchar2)
  return boolean as
   /**********************************************************
    �ж�ϵͳ�����Ƿ����ĳֵ
  ***********************************************************/
  iExists pls_integer;
begin
  select count(*)
    into iExists
    from tsys_parameter t
   where t.param_code = in_paramcode
   and t.param_value = in_paramvalue;
  return case when iExists > 0 then true else false end;
end fc_IsSysparamsEquals;
/
