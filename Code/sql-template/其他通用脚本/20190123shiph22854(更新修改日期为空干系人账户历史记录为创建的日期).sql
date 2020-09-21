declare
begin

if fc_IsDataExists('select count(*) from tcustomer_accountinfo t where t.d_updatetime is null and t.d_createtime is not null') then
	update tcustomer_accountinfo t set t.d_updatetime=t.d_createtime where t.d_updatetime is null and t.d_createtime is not null;
end if;
commit;
end;
/
