declare
begin
--���̷���
if not fc_IsDataExists('select count(*) from TINVEST_type t where t.C_INVESTTYPE = ''80''') then
insert into TINVEST_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP, L_ORDER)
values ('80', '������ɻ�ծ��ͬ', '������ɻ�ծ��ͬ', 'debtbybuyin', '1', 'admin', to_date('26-07-2018 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('26-07-2018 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '1', null);
end if;

if not fc_IsDataExists('select count(*) from TINVEST_type t where t.C_INVESTTYPE = ''81''') then
insert into TINVEST_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP, L_ORDER)
values ('81', '�����̶������ͬ', '�����̶������ͬ', 'fixincome', '1', 'admin', to_date('26-07-2018 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('26-07-2018 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '1', null);
end if;


end;
/