declare
begin
 

if  fc_IsDictItemExists('CUSTOMER_ROLE','0') then
	delete from TSYS_DICT_ITEM t where t.DICT_ITEM_CODE='0' and t.DICT_ENTRY_CODE='CUSTOMER_ROLE' ;
end if;

commit;
end;
/
