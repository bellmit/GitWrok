

declare
begin
if  fc_isdataexists ('select count(*) from tproject_template_field t where t.c_modelcode=''investProjectManage'' and t.c_fieldcode=''financing'' and t.c_fieldname=''交易对手''') then
  if not fc_isdataexists ('select count(*) from tproject_template_field t where t.c_modelcode=''investProjectManage'' and t.c_fieldcode=''financing'' and t.c_fieldname=''融资方''') then
    update tproject_template_field t set t.c_fieldname='融资方',
    t.c_valuebound='customerSelector(''financing'',''0'',''11'',closeCustomerSelector)',
    t.c_fieldtype='3',t.c_comptype='7' WHERE t.c_modelcode='investProjectManage' and t.c_fieldcode='financing'     ;
  end if; 
end if;
if not fc_isdataexists ('select count(*) from tproject_template_field t where t.c_modelcode=''investProjectManage'' and t.c_fieldcode=''financing''') then
if not fc_isdataexists ('select count(*) from tproject_template_field t where t.c_modelcode=''investProjectManage'' and t.c_fieldcode=''financing''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE)
values ('financing', '融资方', 'investProjectManage', 2, '3', '7', 'customerSelector(''financing'',''0'',''11'',closeCustomerSelector)', 1, null, '150', null, null);
end if; 
end if; 
end;

/
