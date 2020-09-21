begin
  if not fc_IsDataExists('select count(*) from user_constraints t where t.table_name = ''TASSET_ACCOUNT_STOCK'' and t.constraint_type=''P''') then
    update TASSET_ACCOUNT_STOCK t set t.c_moneytype='CNY' where t.c_moneytype is null; 
    execute immediate 'drop index PK_TASSET_ACCOUNT_STOCK';
    execute immediate 'alter table TASSET_ACCOUNT_STOCK add constraint PK_TASSET_ACCOUNT_STOCK primary key (D_DATE, C_PROJECTCODE, L_ACCOID, C_MONEYTYPE)';
  end if;  
end;
/