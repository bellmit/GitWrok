delete from tinvest_busiflag f where f.c_busiflag='22010';

insert into tinvest_busiflag (C_BUSIFLAG, C_BUSINAME, C_BUSIKIND, C_INVESTTYPE, C_INVESTWAY, L_FUNDDIR, L_STOCKDIR, PROCESS_ID, C_EXTCONFIG, C_TEXTTYPE, C_TEMPCODE, C_REPAYWAY, C_CREATEWAY, C_BUSITYPE, C_DEF_FUNDACID, C_DEF_RIVALID, C_DEF_ACCOID, C_SUBSYS_MODULE)
values ('22010', '实物资产交割', '2', null, '4', 1, 0, 'realAssetDevil', null, null, null, null, null, null, null, null, null, null);