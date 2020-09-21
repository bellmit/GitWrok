declare
begin
if not fc_IsDataExists('select count(*) from tproject_factor_temp t where t.C_TEMPCODE = ''cbms_lawsuit_base''') then
insert into tproject_factor_temp (C_TEMPCODE, C_TEMPNAME, C_TEMPDESC, C_CREATEUSER, D_CREATETIME, D_UPDATETIME, C_FACTORFLAG, C_DIRECTION, C_UPDATEUSER, C_BUSITYPE, C_DICTITEMCODE, C_ISDEFAULT, C_ISPUBLIC, C_ISUSE, C_PROJTYPE, C_TEMPTYPE)
values ('cbms_lawsuit_base', '诉讼基本信息模板', null, 'admin', to_date('18-05-2018 10:39:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-05-2018 14:44:17', 'dd-mm-yyyy hh24:mi:ss'), '83', null, 'admin', null, null, '0', '1', '1', null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_factor_temp t where t.C_TEMPCODE = ''cbms_lawsuit_ext''') then
insert into tproject_factor_temp (C_TEMPCODE, C_TEMPNAME, C_TEMPDESC, C_CREATEUSER, D_CREATETIME, D_UPDATETIME, C_FACTORFLAG, C_DIRECTION, C_UPDATEUSER, C_BUSITYPE, C_DICTITEMCODE, C_ISDEFAULT, C_ISPUBLIC, C_ISUSE, C_PROJTYPE, C_TEMPTYPE)
values ('cbms_lawsuit_ext', '诉讼信息扩展模板', null, 'admin', to_date('18-05-2018 11:39:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-05-2018 15:08:55', 'dd-mm-yyyy hh24:mi:ss'), '83', null, 'admin', null, null, '0', '1', '1', null, null);
end if;
if not fc_isexistsprojectfactorconfig('83') then
insert into TPROJECT_FACTOR_CONFIG (C_FACTORFLAG, C_INFOCLASS, C_DETAILCLASS, C_TRACETABLE, C_SERIALNO, C_INFOID, C_TRACECLASS, C_STATUSFIELD, C_TRACESTATUS, C_INITFACTORFLAG, C_DETAILTABLE, C_CHECKEDSTATUS, C_PHASEFIELD, C_REVIEWMODE, C_QUERYFACTORFLAG, C_SAVEMODE, C_INFOTABLE, C_ISPHASE, C_ISREVIEW, C_ADDEDSTATUS, C_UPDATEEDSTATUS, C_ADDEDPHASE, C_REVIEWEDSTATUS, C_REVIEWEDPHASE, C_REJECTFIELD, C_ISSHOWOPLIST, C_FACTORFLAGNAME, C_EXTENDCONFIG, C_SHOWCOMPS, C_SHOWCOLUMNS)
values ('83', 'com.hundsun.fund.tcmp.bean.contract.LawSuitInfo', null, null, 'serialno', 'id', null, 'status', null, null, null, null, null, 'FACTOR', null, 'ENTITY', null, null, '1', null, null, null, null, null, null, null, '83', null, null, null);
end if;
end;
/