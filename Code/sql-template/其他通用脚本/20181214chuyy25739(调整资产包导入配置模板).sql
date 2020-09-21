--改模板配置中number大写为小写
update TGENERAL_IMPORT_ELEMENT_INFO t set t.c_elementtype='number' WHERE t.c_elementcode in ('AMC_ASSETPACKET_001_1_CORPUSAMOUNT','AMC_DATATRANSPLANTATION_001_3_CORPUSAMOUNT') ;