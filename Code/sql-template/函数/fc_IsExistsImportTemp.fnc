create or replace function fc_IsExistsImportTemp(
  tempCode in varchar2)
return boolean
as
/**
ͨ��Excel����ģ��������Ϣ���Ψһ��Լ��������
����˵��
1. moduleCode ģ�����
**/
  Result integer := 0;
begin
  select count(*) into Result
  from TGENERAL_IMPORT_TEMP_INFO t
  where t.c_tempcode = tempCode;
  return case when Result > 0 then true else false end;
end;
/
