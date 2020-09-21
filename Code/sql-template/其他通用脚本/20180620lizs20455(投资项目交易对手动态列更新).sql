declare
begin
delete from tproject_temp_config_field t where t.c_fieldcode ='rivalname' and t.c_templatecode ='investProjectManage' and t.c_modelcode ='investProjectManage';

if not fc_isexiststemplatefield('investProjectManage','rivalname_view') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE)
values ('rivalname_view', '交易对手', 'investProjectManage', 2, '3', '7', 'customerSelector(''rivalname'',''0'',''4'',closeCustomerSelector)', 1, null, '150', null, null);
end if;

if not  fc_IsExistsTempConfigField('investProjectManage','rivalname_view','investProjectManage')then
insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('rivalname_view', 'investProjectManage', '交易对手', '1', 7, 'investProjectManage');
end if;

end;
/