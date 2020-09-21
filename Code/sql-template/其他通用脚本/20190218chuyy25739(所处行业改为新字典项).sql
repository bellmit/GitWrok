--所处行业改为新字典项
update TGENERAL_IMPORT_ELEMENT_INFO t set t.c_elementtype='sql',t.c_elementbounds ='select  trim(x.c_dict_name) as dictname,x.c_dict_item_code  as dictvalue from  tsys_dict_tree x where x.c_dict_entry_code=''T0001''' WHERE t.c_elementcode in ('AMC_DATATRANSPLANTATION_001_2_INDUSTRYDETAIL','AMC_ASSETPACKET_001_0_INDUSTRYDETAIL') ;
