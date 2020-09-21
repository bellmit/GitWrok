delete from tproject_factor_temp t where t.c_tempcode='cbms_realasset_001';

insert into tproject_factor_temp (C_TEMPCODE, C_TEMPNAME, C_TEMPDESC, C_CREATEUSER, D_CREATETIME, D_UPDATETIME, C_FACTORFLAG, C_DIRECTION, C_UPDATEUSER, C_BUSITYPE, C_DICTITEMCODE, C_ISDEFAULT, C_ISPUBLIC, C_ISUSE, C_PROJTYPE, C_TEMPTYPE)
values ('cbms_realasset_001', '实物资产模板', null, '17104680', to_date('20-12-2017 21:19:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2017 10:31:14', 'dd-mm-yyyy hh24:mi:ss'), '70', null, '17104680', null, null, null, null, '1', null, null);


insert into TPROJECT_FACTOR_CONFIG (C_FACTORFLAG, C_INFOCLASS, C_DETAILCLASS, C_TRACETABLE, C_SERIALNO, C_INFOID, C_TRACECLASS, C_STATUSFIELD, C_TRACESTATUS, C_INITFACTORFLAG, C_DETAILTABLE, C_CHECKEDSTATUS, C_PHASEFIELD, C_REVIEWMODE, C_QUERYFACTORFLAG)
values ('70', 'com.hundsun.fund.tcmp.bean.pm.TinvestCollateral', null, 'tinvest_coll_factor_trace', 'serialno', 'collateralno', 'com.hundsun.fund.tcmp.bean.pm.TinvestCollFactorTrace', null, null, null, null, null, null, 'FACTOR', null);


