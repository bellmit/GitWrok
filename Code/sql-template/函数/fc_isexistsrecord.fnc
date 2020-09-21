create or replace function fc_isexistsrecord(
  sTableName in varchar2,
  sColName   in varchar2,
  sValue     in varchar2
  )
return boolean
as
  v_cursor NUMBER;
  selectSql  varchar2(300) default '';
  a NUMBER;
begin
    selectSql := 'select 1  from '||sTableName||' where '|| sColName ||'='||chr(39)||sValue||chr(39);
    v_cursor := dbms_sql.open_cursor;
    dbms_sql.parse(v_cursor, selectSql, dbms_sql.native);
    a:=dbms_sql.execute(v_cursor);
    if dbms_sql.fetch_rows(v_cursor)=1 then
      dbms_sql.close_cursor(v_cursor);
       return true;
    end if;
    dbms_sql.close_cursor(v_cursor);
 return false;
end;


/