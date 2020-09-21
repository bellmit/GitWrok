declare
begin
if  fc_IsDataExists('select count(*) from tflowformdesign t where t.c_fielduuid=''3a7e13c5ba356667dc2cc711de74f6bd''') then
   update tflowformdesign t set t.c_defvalue = 'exp{getFlowformDefaultValue(''needmoney'',projectcode)}' where t.c_fielduuid='3a7e13c5ba356667dc2cc711de74f6bd' and t.c_fieldcode='needmoney';
end if;
end;
/