declare
begin
if fc_IsDataExists('select count(*) from tgeneral_export_config t where t.c_modelcode=''intermediaryManagerList''') then
	update tgeneral_export_config t set  t.c_fieldJson = '[{"name":"orgType_display","text":"机构类型"},{"name":"customername", "text":"评估机构名称"},{"name":"libate", "text":"入选日期","width":"30"},{"name":"memo","text":"入库说明","width":"30"},{"name":"contract","text":"联系人"},{"name":"contractnumber","text":"联系电话"}]' 
	where t.c_modelcode='intermediaryManagerList';
end if;
if not fc_IsDataExists('select count(*) from tgeneral_export_config t where t.c_modelcode=''intermediaryManagerList''') then
    insert into tgeneral_export_config (C_MODELCODE, C_FILENAME, C_FILETYPE, C_FIELDJSON, C_QUERY_SQL, C_QUERY_INSTANCE, F_FIELD_DATA_TYPE)
    values ('intermediaryManagerList', '中介机构管理', '0', '[{"name":"orgType_display","text":"机构类型"},{"name":"customername", "text":"评估机构名称"},{"name":"libate", "text":"入选日期","width":"30"},{"name":"memo","text":"入库说明","width":"40"},{"name":"contract","text":"联系人"},{"name":"contractnumber","text":"联系电话"}]', null, 'talternativeLibraryManager.getAgencyInfoPage', null);
end if;
end;
/
