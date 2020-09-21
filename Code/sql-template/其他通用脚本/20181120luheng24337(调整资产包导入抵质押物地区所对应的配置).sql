declare 
begin
-- 启用要素模版形式，将资产包导入中配置的省份编码更换为树形字典
if fc_IsDataExists('select count(1) from tsys_parameter t where t.param_code=''isUsePawnTemp'' and t.param_value=''1''') then
  execute immediate '
     update tgeneral_import_element_info e
     set e.c_elementbounds = ''select t.c_dict_name as dictname, t.c_dict_item_code dictvalue
                          from tsys_dict_tree t
                          where t.c_dict_entry_code = ''''COUNTRY_AREA''''
                          and t.c_level = ''''1''''
                          and t.c_isuse = ''''1'''' order by t.l_orderno '', e.c_elementtype = ''sql''
     where e.c_elementcode = ''AMC_ASSETPACKET_001_4_PROVINCECODE''
  ';
  execute immediate '
     update tgeneral_import_element_info e
     set e.c_elementbounds = ''select t.c_dict_name as dictname, t.c_dict_item_code dictvalue
                          from tsys_dict_tree t
                          where t.c_dict_entry_code = ''''COUNTRY_AREA''''
                          and t.c_level = ''''1''''
                          and t.c_isuse = ''''1'''' order by t.l_orderno '', e.c_elementtype = ''sql''
     where e.c_elementcode = ''AMC_DATATRANSPLANTATION_001_6_PROVINCECODE''
  ';
else
  execute immediate '
    update tgeneral_import_element_info e
       set e.c_elementbounds = ''PROVINCE_INFO'', e.c_elementtype = ''dict''
     where e.c_elementcode = ''AMC_ASSETPACKET_001_4_PROVINCECODE''
  ';
  execute immediate '
    update tgeneral_import_element_info e
       set e.c_elementbounds = ''PROVINCE_INFO'', e.c_elementtype = ''dict''
     where e.c_elementcode = ''AMC_DATATRANSPLANTATION_001_6_PROVINCECODE''
  ';
end if;
end;
/