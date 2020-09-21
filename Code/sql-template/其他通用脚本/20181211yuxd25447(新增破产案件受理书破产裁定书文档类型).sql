--M201812111122
declare
begin
if not fc_IsDataExists('select count(*) from tproject_texttype t where t.C_TYPEID = ''528001''') then
insert into tproject_texttype (C_TYPEID, C_PARENTID, C_TYPENAME, C_DESCRIPTION, C_TYPEPROPERTY, C_EXTFIELD1, C_CONCENTRATED, C_ISMANUALUPDATE, C_APPROVEFLOWKEY, C_ISNEEDARCHIVE, C_ISDISCLOSURETYPE, C_BELONGTO, C_UPLOADCHECK, L_SORT)
values (528001, 400001, '破产裁定书', null, '1', null, '9', '1', null, '0', null, null, null, 0);
end if;
if not fc_IsDataExists('select count(*) from tproject_texttype t where t.C_TYPEID = ''528000''') then
insert into tproject_texttype (C_TYPEID, C_PARENTID, C_TYPENAME, C_DESCRIPTION, C_TYPEPROPERTY, C_EXTFIELD1, C_CONCENTRATED, C_ISMANUALUPDATE, C_APPROVEFLOWKEY, C_ISNEEDARCHIVE, C_ISDISCLOSURETYPE, C_BELONGTO, C_UPLOADCHECK, L_SORT)
values (528000, 400001, '破产案件受理书', null, '1', null, '9', '1', null, '0', null, null, null, 0);
end if;
end;
/
--M201812111122