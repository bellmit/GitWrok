declare
begin

if not fc_IsExistsInvestBusiflag('22176') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22176', 'Ͷ�˷���', 2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22177') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22177', '�йܷ���', 2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22178') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22178', '�������֧��', 2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22179') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22179', '�黹�����', 2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22184') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22184', '�������������', 2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22185') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22185', '�����ʽ���Ӫ', 2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22186') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22186', 'ִ�б�ȫ��', 2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22187') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22187', '�̶��ʲ�����֧��', 2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22188') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22188', '�����ʲ��ɹ�', 2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22189') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22189', 'װ�޿���֧��', 2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22190') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22190', '�ڲ������˻����ʽ����', 2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22191') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22191', '��˰֧��', 2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22192') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22192', '��ҵ������֧��', 2, -1, 0);
end if;


if not fc_IsExistsInvestBusiflag('22300') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22300', '����֧��',  2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22301') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22301', '����֧��', 2, -1, 0);
end if;

if not fc_IsExistsInvestBusiflag('22302') then
	insert into tinvest_busiflag (c_busiflag, c_businame, c_busikind, l_funddir, L_STOCKDIR)
	values ('22302', '������������֧��', 2, -1, 0);
end if;
end;
/