declare
begin
if not fc_IsDataExists('select count(*) from tsubject_type t where t.l_id=0') then
	insert into tsubject_type(l_id, c_name, l_parentid, l_order, c_creater, d_create)
	values(0, '全部', 0, 1, 'admin', sysdate);
end if;

end;
/