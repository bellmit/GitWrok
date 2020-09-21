
declare
begin

if not fc_IsDataExists('select count(*) from tproject_texttype_manager t where t.L_PRIMARYID=''18'' and C_INVESTDIRECTION = ''13''') then
	insert into tproject_texttype_manager (L_PRIMARYID, L_TYPEID, C_INVESTDIRECTION, C_ISNECESSARY, C_PROJECTTYPE)
values (18, 1001, '13', '1', '1');
end if;
end;
/