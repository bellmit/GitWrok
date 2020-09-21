declare
begin

if not fc_IsDataExists('select count(*) from TPROJECT_TEXTTYPE_Manager t where t.L_PRIMARYID = 22') then
    insert into TPROJECT_TEXTTYPE_Manager (L_PRIMARYID, L_TYPEID, C_INVESTDIRECTION, C_ISNECESSARY, C_PROJECTTYPE)
    values (22, 1001, '19', '1', '1');
end if;

end;
/