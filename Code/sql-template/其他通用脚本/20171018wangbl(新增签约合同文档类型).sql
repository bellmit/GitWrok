--新增文档类型签约合同
delete from tproject_texttype t where t.c_typeid =523000;
insert into tproject_texttype (C_TYPEID, C_PARENTID, C_TYPENAME, C_DESCRIPTION, C_TYPEPROPERTY, C_EXTFIELD1, C_CONCENTRATED, C_ISMANUALUPDATE, C_APPROVEFLOWKEY, C_ISNEEDARCHIVE, C_ISDISCLOSURETYPE)
values (523000, 1001, '签约合同', null, '1', null, null, '1', null, null, null);

