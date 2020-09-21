insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE)
values ('605', 'INVEST_BUSIFLAG_EXT', '外部机构服务费', null, null, 605, null);

update TINVEST_BUSIFLAG t set t.c_extconfig = '602,603,604,605' where t.c_busiflag = '30016';