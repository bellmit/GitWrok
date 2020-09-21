declare
begin
if not fc_IsDataExists('select count(*) from tproject_factor_temp t where t.C_TEMPCODE = ''aims_bzht''') then
insert into tproject_factor_temp (C_TEMPCODE, C_TEMPNAME, C_TEMPDESC, C_CREATEUSER, D_CREATETIME, D_UPDATETIME, C_FACTORFLAG, C_DIRECTION, C_UPDATEUSER, C_BUSITYPE, C_DICTITEMCODE, C_ISDEFAULT, C_ISPUBLIC, C_ISUSE, C_PROJTYPE, C_TEMPTYPE)
values ('aims_bzht', '担保合同', '担保合同', 'admin', to_date('23-04-2018 20:23:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-04-2018 19:07:39', 'dd-mm-yyyy hh24:mi:ss'), '10', null, 'admin', '4', null, '0', null, '1', null, null);
end if;
end;
/