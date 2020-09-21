--新增储备项目文档类型
delete from  tproject_texttype t where t.c_typeid='1005';
insert into tproject_texttype (C_TYPEID, C_PARENTID, C_TYPENAME, C_DESCRIPTION, C_TYPEPROPERTY, C_EXTFIELD1, C_CONCENTRATED, C_ISMANUALUPDATE, C_APPROVEFLOWKEY, C_ISNEEDARCHIVE, C_ISDISCLOSURETYPE)
values (1005, 1001, '储备项目文档', null, '0', null, '1', '1', null, null, null);
