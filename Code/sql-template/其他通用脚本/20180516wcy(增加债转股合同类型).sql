declare
begin
if not fc_IsDataExists('select count(*) from TINVEST_TYPE t where t.C_INVESTTYPE = ''68''') then
insert into TINVEST_TYPE (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP, L_ORDER)
values ('68', '债转股合同', '债转股合同', null, '1', 'admin', to_date('16-05-2018', 'dd-mm-yyyy'), 'admin', to_date('16-05-2018', 'dd-mm-yyyy'), '4', null);
end if;

end;
/