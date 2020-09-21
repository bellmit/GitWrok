create or replace function fc_IsExistsImportModule(
  moduleCode in varchar2)
return boolean
as
/**
通用Excel导入模块信息表的唯一性约束函数：
参数说明
1. moduleCode 模块编码
**/
  Result integer := 0;
begin
  select count(*) into Result
  from TGENERAL_IMPORT_MODULE_INFO t
  where t.c_module_code = moduleCode;
  return case when Result > 0 then true else false end;
end;
/
