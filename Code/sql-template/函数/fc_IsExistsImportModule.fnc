create or replace function fc_IsExistsImportModule(
  moduleCode in varchar2)
return boolean
as
/**
ͨ��Excel����ģ����Ϣ���Ψһ��Լ��������
����˵��
1. moduleCode ģ�����
**/
  Result integer := 0;
begin
  select count(*) into Result
  from TGENERAL_IMPORT_MODULE_INFO t
  where t.c_module_code = moduleCode;
  return case when Result > 0 then true else false end;
end;
/
