declare
begin

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''83''') then 
insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP, L_ORDER)
values ('83', '不良收债转股合同', '不良收债转股合同',null, '1', 'admin', to_date('26-07-2018 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('26-07-2018 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '1', null);
end if;

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''82''') then 
insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP, L_ORDER)
values ('82', '正常投资基金合同', '正常投资基金合同',null, '1', 'admin', to_date('26-07-2018 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('26-07-2018 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '1', null);
end if;

end;
/
