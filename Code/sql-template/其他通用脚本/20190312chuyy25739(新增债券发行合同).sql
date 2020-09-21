declare
begin
if not fc_IsDataExists('select count(1) from TINVEST_TYPE t where t.C_INVESTTYPE=''86''') then
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP, L_ORDER)
	values ('86', '债券发行合同', '债券发行合同', null, '1', 'admin', to_date('12-03-2019', 'dd-mm-yyyy'), 'admin', to_date('12-03-2018', 'dd-mm-yyyy'), '2', null);
end if;
if not fc_IsDataExists('SELECT count(1) from tproject_factor_temp t WHERE t.c_tempcode=''ZQFX_001''') then
insert into tproject_factor_temp (C_TEMPCODE, C_TEMPNAME, C_TEMPDESC, C_CREATEUSER, D_CREATETIME, D_UPDATETIME, C_FACTORFLAG, C_DIRECTION, C_UPDATEUSER, C_BUSITYPE, C_DICTITEMCODE, C_ISDEFAULT, C_ISPUBLIC, C_ISUSE, C_PROJTYPE, C_TEMPTYPE)
values ('ZQFX_001', '债券发行合同要素模板', null, 'admin', to_date('04-01-2019', 'dd-mm-yyyy'), to_date('12-03-2019 20:50:03', 'dd-mm-yyyy hh24:mi:ss'), '6', null, 'admin', '86', null, null, null, '1', null, null);
end if;
if  fc_IsDataExists('SELECT count(1) from tproject_factor_temp t WHERE t.c_tempcode=''ZQFX_001''') then
update tproject_factor_temp t set C_BUSITYPE ='86' WHERE t.c_tempcode='ZQFX_001';
end if;
if  fc_IsDataExists('select count(1) from TINVEST_TYPE t where t.C_INVESTTYPE=''13'' ') then
update TINVEST_TYPE t set t.c_isuse ='1',t.c_investprop ='2' WHERE t.C_INVESTTYPE='13';
end if;
if  fc_IsDataExists('select count(1) from TINVEST_TYPE t where t.C_INVESTTYPE=''86'' ') then
update TINVEST_TYPE t set t.c_isuse ='1',t.c_investprop ='2' WHERE t.C_INVESTTYPE='86';
end if;
end;
/
