declare
begin
if not fc_IsDataExists('select count(*) from tinvest_busiflag where C_BUSIFLAG = ''20067''') then 
	insert into tinvest_busiflag (C_BUSIFLAG, C_BUSINAME, C_BUSIKIND, C_INVESTTYPE, C_INVESTWAY, L_FUNDDIR, L_STOCKDIR, PROCESS_ID, C_EXTCONFIG, C_TEXTTYPE, C_TEMPCODE, C_REPAYWAY, C_CREATEWAY, C_BUSITYPE, C_DEF_FUNDACID, C_DEF_RIVALID, C_DEF_ACCOID, C_SUBSYS_MODULE, PROCESS_NODEID)
values ('20067', '保证金转收入', '4', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '2', '');
end if;
end;
/
