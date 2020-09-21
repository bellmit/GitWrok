declare
begin
if not fc_IsDataExists('select count(*) from tproject_factor_temp t where t.C_TEMPCODE = ''cbms_bankrupt_001''') then
insert into tproject_factor_temp (C_TEMPCODE, C_TEMPNAME, C_TEMPDESC, C_CREATEUSER, D_CREATETIME, D_UPDATETIME, C_FACTORFLAG, C_DIRECTION, C_UPDATEUSER, C_BUSITYPE, C_DICTITEMCODE, C_ISDEFAULT, C_ISPUBLIC, C_ISUSE)
values ('cbms_bankrupt_001', '破产信息模板', null, 'admin', to_date('08-05-2018 10:39:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-05-2018 10:30:06', 'dd-mm-yyyy hh24:mi:ss'), '81', null, 'admin', null, null, '0', '1', '1');
end if;
update tproject_factor_temp t set t.c_factorflag = '91' where t.c_tempcode='cbms_bankrupt_001';

update tproject_factor_config t set t.c_factorflag='91' where t.c_factorflag='81' and t.c_factorflagname = '破产信息要素';
if not fc_isexistsprojectfactorconfig('91') then
insert into TPROJECT_FACTOR_CONFIG (C_FACTORFLAG, C_INFOCLASS, C_DETAILCLASS, C_TRACETABLE, C_SERIALNO, C_INFOID, C_TRACECLASS, C_STATUSFIELD, C_TRACESTATUS, C_INITFACTORFLAG, C_DETAILTABLE, C_CHECKEDSTATUS, C_PHASEFIELD, C_REVIEWMODE, C_QUERYFACTORFLAG, C_SAVEMODE, C_INFOTABLE, C_ISPHASE, C_ISREVIEW, C_ADDEDSTATUS, C_UPDATEEDSTATUS, C_ADDEDPHASE, C_REVIEWEDSTATUS, C_REVIEWEDPHASE, C_REJECTFIELD, C_ISSHOWOPLIST, C_FACTORFLAGNAME, C_EXTENDCONFIG, C_SHOWCOMPS, C_SHOWCOLUMNS)
values ('91', 'com.hundsun.fund.tcmp.bean.contract.BankruptcyInfo', null, null, 'serialno', 'id', null, 'status', null, null, null, null, null, 'FACTOR', null, 'ENTITY', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
end if;
end;
/