
delete from tproject_texttype t where t.c_typeid = '2000018';
insert into tproject_texttype (C_TYPEID, C_PARENTID, C_TYPENAME, C_DESCRIPTION, C_TYPEPROPERTY, C_EXTFIELD1, C_CONCENTRATED, C_ISMANUALUPDATE, C_APPROVEFLOWKEY, C_ISNEEDARCHIVE, C_ISDISCLOSURETYPE)
values (2000018, 200001, '项目方案', null, '1', null, '9', '1', null, null, null);

delete from tproject_texttype t where t.c_typeid = '2000019';
insert into tproject_texttype (C_TYPEID, C_PARENTID, C_TYPENAME, C_DESCRIPTION, C_TYPEPROPERTY, C_EXTFIELD1, C_CONCENTRATED, C_ISMANUALUPDATE, C_APPROVEFLOWKEY, C_ISNEEDARCHIVE, C_ISDISCLOSURETYPE)
values (2000019, 200001, '法律意见书', null, '1', null, '9', '1', null, null, null);


