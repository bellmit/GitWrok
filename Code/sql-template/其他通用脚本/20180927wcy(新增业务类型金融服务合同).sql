begin

--增加合同业务类型"金融服务合同"
if not fc_IsDataExists('select count(*) from tinvest_type t where t.c_investtype = ''84''') then
insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP, L_ORDER)
values ('84', '金融服务合同', '金融服务合同', null, '1', 'admin', to_date('27-09-2018', 'dd-mm-yyyy'), 'admin', to_date('27-09-2018', 'dd-mm-yyyy'), '7', null);
end if;

update tproject_factor_temp t set t.c_busitype='08' where t.c_tempcode='JRCPTZC_001';
update  tinvest_contract t set t.c_investtype='08' where t.c_tempcode='JRCPTZC_001' and t.c_investtype='84';
end;
/