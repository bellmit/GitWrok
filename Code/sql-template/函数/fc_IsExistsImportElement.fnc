create or replace function fc_IsExistsImportElement(
  elementCode in varchar2)
return boolean
as
/**
通用Excel导入元素信息表表的唯一性约束函数：
参数说明
1. elementCode 元素编码
**/
  Result integer := 0;
begin
  select count(*) into Result
  from TGENERAL_IMPORT_ELEMENT_INFO t
  where t.c_elementcode = elementCode;
  return case when Result > 0 then true else false end;
end;
/
