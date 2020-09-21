create or replace function fc_IsExistsImportCell(tempCode    in varchar2,
                                                 elementCode in varchar2)
  return boolean as
  /**
  通用Excel导入模版单元格信息表的唯一性约束函数：
  参数说明
  1. tempCode 所属模版
  2. elementCode 元素编码
  **/
  Result integer := 0;
begin
  select count(*)
    into Result
    from TGENERAL_IMPORT_TEMP_CELL t
   where t.c_tempcode = tempCode
     and t.c_elementcode = elementCode;
  return case when Result > 0 then true else false end;
end;
/
