declare
begin

if not fc_IsDataExists('select count(1) from TINVEST_TYPE t where t.C_INVESTTYPE=''85''') then
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP, L_ORDER)
	values ('85', '单户收购重组合同', '单户收购重组合同', null, '1', 'admin', to_date('20-12-2018', 'dd-mm-yyyy'), 'admin', to_date('20-12-2018', 'dd-mm-yyyy'), '1', null);
end if;
commit;
end;
/
