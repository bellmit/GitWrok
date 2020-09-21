declare
begin
if not fc_IsTableExists('TPROJECT_BUSINESSTYPE_CONFIG') then
 execute immediate 
'create table TPROJECT_BUSINESSTYPE_CONFIG
(
  c_businesstype         VARCHAR2(10) not null,
  c_businessname         VARCHAR2(50),
  c_projectnature        VARCHAR2(3),
  c_busiclassification   VARCHAR2(100),
  c_default_contracttype VARCHAR2(2)
)
';
end if;
if fc_IsTableExists('TPROJECT_BUSINESSTYPE_CONFIG') and not fc_IsIndexExists('TPROJECT_BUSINESSTYPE_CONFIG','PK_BUSINESSTYPE_CONFIG')then
    execute immediate 'alter table TPROJECT_BUSINESSTYPE_CONFIG
  add constraint PK_BUSINESSTYPE_CONFIG primary key (C_BUSINESSTYPE)';
  end if;
commit;
end ;
/







