create or replace function fc_IsColNULLABLE(
  sTableName in varchar2,
  sColName   in varchar2)
return boolean
as
  isNULLABLE pls_integer;
begin
  select count(*) into isNULLABLE
    from user_tab_cols utc
    where utc.table_name = upper(sTableName)
      and utc.column_name = upper(sColName) and utc.NULLABLE='Y';
  return case when isNULLABLE = 0 then false else true end;
end;
/