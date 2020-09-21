declare
begin

if not fc_IsDataExists('select count(*) from tproject_factor_temp t where t.C_TEMPCODE = ''cbms_equityasset_001''') then
insert into tproject_factor_temp (C_TEMPCODE, C_TEMPNAME, C_TEMPDESC, C_CREATEUSER, D_CREATETIME, D_UPDATETIME, C_FACTORFLAG, C_DIRECTION, C_UPDATEUSER, C_BUSITYPE, C_DICTITEMCODE, C_ISDEFAULT, C_ISPUBLIC, C_ISUSE, C_PROJTYPE, C_TEMPTYPE)
values ('cbms_equityasset_001', '股权资产模板', null, 'admin', to_date('06-03-2018 15:30:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-03-2018 10:07:20', 'dd-mm-yyyy hh24:mi:ss'), '71', null, 'admin', null, null, '0', '1', '1', null, null);
end if;

if not fc_IsDataExists('select count(*) from tproject_factor_temp t where t.C_TEMPCODE = ''cbms_equityasset_002''') then
insert into tproject_factor_temp (C_TEMPCODE, C_TEMPNAME, C_TEMPDESC, C_CREATEUSER, D_CREATETIME, D_UPDATETIME, C_FACTORFLAG, C_DIRECTION, C_UPDATEUSER, C_BUSITYPE, C_DICTITEMCODE, C_ISDEFAULT, C_ISPUBLIC, C_ISUSE, C_PROJTYPE, C_TEMPTYPE)
values ('cbms_equityasset_002', '上市股权资产模板', null, 'admin', to_date('05-06-2018 16:11:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-06-2018 16:11:46', 'dd-mm-yyyy hh24:mi:ss'), '71', null, 'admin', '1', null, null, null, '1', null, null);
end if;

if not fc_isexistsprojectfactorconfig('71') then
insert into TPROJECT_FACTOR_CONFIG (C_FACTORFLAG, C_INFOCLASS, C_DETAILCLASS, C_TRACETABLE, C_SERIALNO, C_INFOID, C_TRACECLASS, C_STATUSFIELD, C_TRACESTATUS, C_INITFACTORFLAG, C_DETAILTABLE, C_CHECKEDSTATUS, C_PHASEFIELD, C_REVIEWMODE, C_QUERYFACTORFLAG, C_SAVEMODE, C_INFOTABLE, C_ISPHASE, C_ISREVIEW, C_ADDEDSTATUS, C_UPDATEEDSTATUS, C_ADDEDPHASE, C_REVIEWEDSTATUS, C_REVIEWEDPHASE, C_REJECTFIELD, C_ISSHOWOPLIST)
values ('71', 'com.hundsun.fund.tcmp.bean.pm.EquityAssetInfo', null, null, 'serialno', 'equityassetno', null, null, null, null, null, null, null, 'FACTOR', null, 'ENTITY', null, null, null, null, null, null, null, null, null, null);
end if;
end;
/