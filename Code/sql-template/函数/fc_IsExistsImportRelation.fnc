create or replace function fc_IsExistsImportRelation(parentCode   in varchar2,
                                                     subCode      in varchar2,
                                                     relationType in varchar2)
  return boolean as
  /**
  ͨ��Excel�����ϵ���Ψһ��Լ��������
  ����˵��
  1. parentCode �������
  2. subCode �Ӳ����
  3. relationType ��ϵ����:1,Ԫ��/ģ���ϵ;2,ģ��/��ģ���ϵ;3,ģ��/��ģ���ϵ
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
