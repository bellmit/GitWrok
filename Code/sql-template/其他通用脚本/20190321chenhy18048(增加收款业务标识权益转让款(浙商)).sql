declare
begin
if not fc_IsDataExists('select count(*) from tinvest_busiflag t where t.C_BUSIFLAG = ''22126''') then
  insert into tinvest_busiflag (C_BUSIFLAG, C_BUSINAME, C_BUSIKIND, C_INVESTTYPE, C_INVESTWAY, L_FUNDDIR, L_STOCKDIR, PROCESS_ID, C_EXTCONFIG, C_TEXTTYPE, C_TEMPCODE, C_REPAYWAY, C_CREATEWAY, C_BUSITYPE, C_DEF_FUNDACID, C_DEF_RIVALID, C_DEF_ACCOID, C_SUBSYS_MODULE)
values ('22126', 'Ȩ��ת��һ�����տ�', '2', '01', '4', 1, 0, '', '', '', '', '', '', '', '', '', '', '2');
end if;

if not fc_IsDataExists('select count(*) from tinvest_busiflag t where t.C_BUSIFLAG = ''22127''') then
  insert into tinvest_busiflag (C_BUSIFLAG, C_BUSINAME, C_BUSIKIND, C_INVESTTYPE, C_INVESTWAY, L_FUNDDIR, L_STOCKDIR, PROCESS_ID, C_EXTCONFIG, C_TEXTTYPE, C_TEMPCODE, C_REPAYWAY, C_CREATEWAY, C_BUSITYPE, C_DEF_FUNDACID, C_DEF_RIVALID, C_DEF_ACCOID, C_SUBSYS_MODULE)
values ('22127', 'Ȩ��ת�����ڿ�', '2', '01', '4', 1, 0, '', '', '', '', '', '', '', '', '', '', '2');
end if;

if not fc_IsDataExists('select count(*) from tinvest_busiflag t where t.C_BUSIFLAG = ''22128''') then
  insert into tinvest_busiflag (C_BUSIFLAG, C_BUSINAME, C_BUSIKIND, C_INVESTTYPE, C_INVESTWAY, L_FUNDDIR, L_STOCKDIR, PROCESS_ID, C_EXTCONFIG, C_TEXTTYPE, C_TEMPCODE, C_REPAYWAY, C_CREATEWAY, C_BUSITYPE, C_DEF_FUNDACID, C_DEF_RIVALID, C_DEF_ACCOID, C_SUBSYS_MODULE)
values ('22128', 'Ȩ��ת�ú����Ӻ���', '2', '01', '4', 1, 0, '', '', '', '', '', '', '', '', '', '', '2');
end if;
end;
/
