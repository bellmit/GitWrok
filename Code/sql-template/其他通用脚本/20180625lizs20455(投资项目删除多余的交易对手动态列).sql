declare
begin
delete from tproject_temp_config_field t where t.c_fieldcode ='rivalname' and t.c_templatecode ='investProjectManage' and t.c_modelcode ='investProjectManage';
delete from tproject_temp_config_field t where t.c_fieldcode ='financing' and t.c_templatecode ='investProjectManage' and t.c_modelcode ='investProjectManage';
end;
/