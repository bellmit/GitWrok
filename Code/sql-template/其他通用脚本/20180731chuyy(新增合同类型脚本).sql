declare
begin
--
if not fc_IsDataExists('select count(*) from TINVEST_type t where t.C_INVESTTYPE = ''82''') then
insert into TINVEST_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP, L_ORDER)
values ('82', '������ծת�ɺ�ͬ', '������ծת�ɺ�ͬ', 'baddebttostock', '1', 'admin', to_date('31-07-2018 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('31-07-2018 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '1', null);
end if;

if not fc_IsDataExists('select count(*) from TINVEST_type t where t.C_INVESTTYPE = ''83''') then
insert into TINVEST_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP, L_ORDER)
values ('83', '����Ͷ�ʻ����ͬ', '����Ͷ�ʻ����ͬ', 'normalfund', '1', 'admin', to_date('31-07-2018 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('31-07-2018 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '1', null);
end if;

if not fc_IsDataExists('select count(*) from TINVEST_type t where t.C_INVESTTYPE = ''88''') then
insert into TINVEST_TYPE (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP, L_ORDER)
values ('88', '����Э���ͬ', '����Э���ͬ', null, '1', 'admin', to_date('02-04-2019', 'dd-mm-yyyy'), 'admin', to_date('02-04-2019', 'dd-mm-yyyy'), '9', null);
end if;

if not fc_IsDataExists('select count(*) from TINVEST_type t where t.C_INVESTTYPE = ''89''') then
insert into TINVEST_TYPE (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP, L_ORDER)
values ('89', '���Э��/ս�Ժ���Э���ͬ', '���Э��/ս�Ժ���Э���ͬ', null, '1', 'admin', to_date('02-04-2019', 'dd-mm-yyyy'), 'admin', to_date('02-04-2019', 'dd-mm-yyyy'), '9', null);
end if;

end;
/