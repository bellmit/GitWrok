create or replace function fc_IsExistsImportRelation(parentCode   in varchar2,
                                                     subCode      in varchar2,
                                                     relationType in varchar2)
  return boolean as
  /**
  通用Excel导入关系表的唯一性约束函数：
  参数说明
  1. parentCode 父层编码
  2. subCode 子层编码
  3. relationType 关系类型:1,元素/模块关系;2,模块/子模块关系;3,模版/子模版关系
  **/
  Result integer := 0;
begin
  select count(*)
    into Result
    from TGENERAL_IMPORT_RELATION t
   where t.c_parent_code = parentCode
     and t.c_sub_code = subCode
     and t.c_relation_type = relationType;
  return case when Result > 0 then true else false end;
end;
/
