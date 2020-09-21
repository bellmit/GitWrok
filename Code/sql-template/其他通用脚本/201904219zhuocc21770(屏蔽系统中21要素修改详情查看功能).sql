declare
begin
  update tproject_factor_info t set t.c_viewtracemode = null where t.c_fieldtype='21';
end;
/