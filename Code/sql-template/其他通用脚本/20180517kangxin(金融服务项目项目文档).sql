
declare
begin

if not fc_IsDataExists('select count(*) from tproject_texttype_manager t where t.L_PRIMARYID=''15'' and C_INVESTDIRECTION = ''10''') then
	insert into tproject_texttype_manager (L_PRIMARYID, L_TYPEID, C_INVESTDIRECTION, C_ISNECESSARY, C_PROJECTTYPE)
values (15, 1001, '10', '1', '1');
end if;
end;
/