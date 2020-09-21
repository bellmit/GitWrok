set define off;
declare
begin
if not fc_IsDictItemExists('PROJECT_BUSIN_TYPE','2') then
insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE)
values ('2', 'PROJECT_BUSIN_TYPE', '营销项目', null, null, 9, null);
end if;
commit;
end;
/
set define on;
