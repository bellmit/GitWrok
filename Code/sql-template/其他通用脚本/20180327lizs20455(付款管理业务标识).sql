declare
begin

if not fc_IsDataExists('select count(*) from tinvest_busiflag t where t.C_BUSIFLAG = ''22150''') then 
insert into tinvest_busiflag (C_BUSIFLAG, C_BUSINAME, C_BUSIKIND, C_INVESTTYPE, C_INVESTWAY, L_FUNDDIR, L_STOCKDIR, PROCESS_ID, C_EXTCONFIG, C_TEXTTYPE, C_TEMPCODE, C_REPAYWAY, C_CREATEWAY, C_BUSITYPE, C_DEF_FUNDACID, C_DEF_RIVALID, C_DEF_ACCOID)
values ('22150', 'ծȨ�չ���', '2', null, null, -1, 0, null, null, null, null, null, null, null, null, null, null);
end if;

if not fc_IsDataExists('select count(*) from tinvest_busiflag t where t.C_BUSIFLAG = ''22151''') then
insert into tinvest_busiflag (C_BUSIFLAG, C_BUSINAME, C_BUSIKIND, C_INVESTTYPE, C_INVESTWAY, L_FUNDDIR, L_STOCKDIR, PROCESS_ID, C_EXTCONFIG, C_TEXTTYPE, C_TEMPCODE, C_REPAYWAY, C_CREATEWAY, C_BUSITYPE, C_DEF_FUNDACID, C_DEF_RIVALID, C_DEF_ACCOID)
values ('22151', 'Ͷ�ʿ�֧��', '2', null, null, -1, 0, null, null, null, null, null, null, null, null, null, null);
end if;

if not fc_IsDataExists('select count(*) from tinvest_busiflag t where t.C_BUSIFLAG = ''22152''') then
insert into tinvest_busiflag (C_BUSIFLAG, C_BUSINAME, C_BUSIKIND, C_INVESTTYPE, C_INVESTWAY, L_FUNDDIR, L_STOCKDIR, PROCESS_ID, C_EXTCONFIG, C_TEXTTYPE, C_TEMPCODE, C_REPAYWAY, C_CREATEWAY, C_BUSITYPE, C_DEF_FUNDACID, C_DEF_RIVALID, C_DEF_ACCOID)
values ('22152', '��֤��֧����', '2', null, null, -1, 0, null, null, null, null, null, null, null, null, null, null);
end if;

if not fc_IsDataExists('select count(*) from tinvest_busiflag t where t.C_BUSIFLAG = ''22153''') then
insert into tinvest_busiflag (C_BUSIFLAG, C_BUSINAME, C_BUSIKIND, C_INVESTTYPE, C_INVESTWAY, L_FUNDDIR, L_STOCKDIR, PROCESS_ID, C_EXTCONFIG, C_TEXTTYPE, C_TEMPCODE, C_REPAYWAY, C_CREATEWAY, C_BUSITYPE, C_DEF_FUNDACID, C_DEF_RIVALID, C_DEF_ACCOID)
values ('22153', '��֤���˻�֧��', '2', null, null, -1, 0, null, null, null, null, null, null, null, null, null, null);
end if;

if not fc_IsDataExists('select count(*) from tinvest_busiflag t where t.C_BUSIFLAG = ''22154''') then
insert into tinvest_busiflag (C_BUSIFLAG, C_BUSINAME, C_BUSIKIND, C_INVESTTYPE, C_INVESTWAY, L_FUNDDIR, L_STOCKDIR, PROCESS_ID, C_EXTCONFIG, C_TEXTTYPE, C_TEMPCODE, C_REPAYWAY, C_CREATEWAY, C_BUSITYPE, C_DEF_FUNDACID, C_DEF_RIVALID, C_DEF_ACCOID)
values ('22154', '�н��', '2', null, null, -1, 0, null, null, null, null, null, null, null, null, null, null);
end if;

if not fc_IsDataExists('select count(*) from tinvest_busiflag t where t.C_BUSIFLAG = ''22155''') then
insert into tinvest_busiflag (C_BUSIFLAG, C_BUSINAME, C_BUSIKIND, C_INVESTTYPE, C_INVESTWAY, L_FUNDDIR, L_STOCKDIR, PROCESS_ID, C_EXTCONFIG, C_TEXTTYPE, C_TEMPCODE, C_REPAYWAY, C_CREATEWAY, C_BUSITYPE, C_DEF_FUNDACID, C_DEF_RIVALID, C_DEF_ACCOID)
values ('22155', '���Ϸ�', '2', null, null, -1, 0, null, null, null, null, null, null, null, null, null, null);
end if;

if not fc_IsDataExists('select count(*) from tinvest_busiflag t where t.C_BUSIFLAG = ''22156''') then
insert into tinvest_busiflag (C_BUSIFLAG, C_BUSINAME, C_BUSIKIND, C_INVESTTYPE, C_INVESTWAY, L_FUNDDIR, L_STOCKDIR, PROCESS_ID, C_EXTCONFIG, C_TEXTTYPE, C_TEMPCODE, C_REPAYWAY, C_CREATEWAY, C_BUSITYPE, C_DEF_FUNDACID, C_DEF_RIVALID, C_DEF_ACCOID)
values ('22156', '���ձ�ȫ��', '2', null, null, -1, 0, null, null, null, null, null, null, null, null, null, null);
end if;

if not fc_IsDataExists('select count(*) from tinvest_busiflag t where t.C_BUSIFLAG = ''22157''') then
insert into tinvest_busiflag (C_BUSIFLAG, C_BUSINAME, C_BUSIKIND, C_INVESTTYPE, C_INVESTWAY, L_FUNDDIR, L_STOCKDIR, PROCESS_ID, C_EXTCONFIG, C_TEXTTYPE, C_TEMPCODE, C_REPAYWAY, C_CREATEWAY, C_BUSITYPE, C_DEF_FUNDACID, C_DEF_RIVALID, C_DEF_ACCOID)
values ('22157', '����', '2', null, null, -1, 0, null, null, null, null, null, null, null, null, null, null);
end if;

if not fc_IsDataExists('select count(*) from tinvest_busiflag t where t.C_BUSIFLAG = ''22180''') then
insert into tinvest_busiflag (C_BUSIFLAG, C_BUSINAME, C_BUSIKIND, C_INVESTTYPE, C_INVESTWAY, L_FUNDDIR, L_STOCKDIR, PROCESS_ID, C_EXTCONFIG, C_TEXTTYPE, C_TEMPCODE, C_REPAYWAY, C_CREATEWAY, C_BUSITYPE, C_DEF_FUNDACID, C_DEF_RIVALID, C_DEF_ACCOID)
values ('22180', '����ծȨ���տ�ת��', '2', null, null, -1, 0, null, null, null, null, null, null, null, null, null, null);
end if;

end;
/