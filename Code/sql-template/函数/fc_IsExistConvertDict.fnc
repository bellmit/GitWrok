create or replace function fc_IsExistConvertDict(functioncode   in varchar2,
                                                  ITEM_CODE      in varchar2,
                                                  ENTRY_CODE in varchar2)
  return boolean as
  Result integer := 0;
begin
  select count(*)
    into Result
    from tsys_dict_convert t
   where t.FUNCODE = functioncode
     and t.DICT_ITEM_CODE = ITEM_CODE
     and t.DICT_ENTRY_CODE = ENTRY_CODE;
  return case when Result > 0 then true else false end;
end;
/