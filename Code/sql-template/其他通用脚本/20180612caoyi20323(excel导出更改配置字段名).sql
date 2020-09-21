declare
begin
if fc_IsDataExists('select count(*) from tgeneral_export_config t where t.c_fieldjson like ''%"code"%''') then
	update tgeneral_export_config t set t.c_fieldjson = replace(t.c_fieldjson,'"code"','"name"') where t.c_fieldjson like '%"code"%';
end if;
if fc_IsDataExists('select count(*) from tgeneral_export_config t where t.c_fieldjson like ''%"label"%''') then
	update tgeneral_export_config t set t.c_fieldjson = replace(t.c_fieldjson,'"label"','"text"') where t.c_fieldjson like '%"label"%';
end if;
end;
/
