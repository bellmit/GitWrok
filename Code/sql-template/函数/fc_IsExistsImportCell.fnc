create or replace function fc_IsExistsImportCell(tempCode    in varchar2,
                                                 elementCode in varchar2)
  return boolean as
  /**
  ͨ��Excel����ģ�浥Ԫ����Ϣ���Ψһ��Լ��������
  ����˵��
  1. tempCode ����ģ��
  2. elementCode Ԫ�ر���
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
