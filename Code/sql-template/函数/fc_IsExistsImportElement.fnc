create or replace function fc_IsExistsImportElement(
  elementCode in varchar2)
return boolean
as
/**
ͨ��Excel����Ԫ����Ϣ����Ψһ��Լ��������
����˵��
1. elementCode Ԫ�ر���
**/
  Result integer := 0;
begin
  select count(*) into Result
  from TGENERAL_IMPORT_ELEMENT_INFO t
  where t.c_elementcode = elementCode;
  return case when Result > 0 then true else false end;
end;
/
