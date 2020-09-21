declare
begin
if  fc_IsDataExists('select count(*) from tflowformdesign t where t.c_fieldcode = ''authorizedprice''') then
	update tflowformdesign t set c_fieldtype = '1' where t.c_fieldcode = 'authorizedprice';
end if;
end;
/