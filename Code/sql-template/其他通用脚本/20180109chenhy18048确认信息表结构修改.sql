declare
colisnull varchar2(4);
begin
select nullable
   into colisnull
   from user_tab_columns
  where table_name = 'TREPAY_CONFIRM'
    and column_name = 'PROCESS_INSTANCEID';
 if colisnull = 'N' then
   execute immediate 'alter table TREPAY_CONFIRM modify PROCESS_INSTANCEID VARCHAR2(100) null';
end if;
select nullable
   into colisnull
   from user_tab_columns
  where table_name = 'TREPAY_CONFIRM'
    and column_name = 'L_APPROVEID';
 if colisnull = 'N' then
   execute immediate 'alter table TREPAY_CONFIRM modify L_APPROVEID VARCHAR2(32) null';
end if;
end;
/