create or replace function get_all_arrivalorg_ids(temp_org_id varchar2)
  return varchar2 is
  v_all_org_ids varchar2(30000) := temp_org_id;
  v_count       number;
  /****************************************************************
     ��ȡ���벿�������в���
  ��Σ� ����id
  ******************************************************************/
begin
  select count(*)
    into v_count
    from tsys_organization t
   where t.parent_id = temp_org_id;

  if v_count > 0 then
    for rs in (select t.org_id
                 from tsys_organization t
                where t.parent_id = temp_org_id) loop
      v_all_org_ids := v_all_org_ids || ',' ||
                       get_all_arrivalorg_ids(rs.org_id);
    end loop;
  end if;
  return v_all_org_ids;
end;
/
