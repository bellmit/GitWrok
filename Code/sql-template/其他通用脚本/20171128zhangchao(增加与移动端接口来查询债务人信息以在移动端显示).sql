delete from ttransfer_receive t where t.c_system = 'MOBILE' and t.c_interfaceid = 'R8408';
insert into ttransfer_receive (C_SYSTEM, C_INTERFACEID, C_INTERFACENAME, C_SERVICE, C_TRANSFERTYPE, C_TABLENAME, C_VERSION, PROCESS_ID, C_ISUSE, C_ISSAVE, C_DATASOURCE, C_OUTSERVICE)
values ('MOBILE', 'R8408', '债务人/担保人信息列表', 'packetreception.getloanaccount', '4', null, '20110831', null, '1', '1', null, null);

