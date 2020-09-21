declare
begin

if not fc_IsDataExists('select count(*) from tinvest_busiflag t where t.C_BUSIFLAG = ''22183''') then 
insert into tinvest_busiflag (C_BUSIFLAG, C_BUSINAME, C_BUSIKIND, C_INVESTTYPE, C_INVESTWAY, L_FUNDDIR, L_STOCKDIR, PROCESS_ID, C_EXTCONFIG, C_TEXTTYPE, C_TEMPCODE, C_REPAYWAY, C_CREATEWAY, C_BUSITYPE, C_DEF_FUNDACID, C_DEF_RIVALID, C_DEF_ACCOID, C_SUBSYS_MODULE)
values ('22183', '股权交割（股权投资）', '2', null, '4', 0, 0, 'stockdeliv_gq', null, null, null, null, null, null, null, null, null, null);
end if;
end;
/