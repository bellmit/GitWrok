
--[201802020081]20180320shiph22854(��ͬ������ҳ������-��̬�к�ͬģ�����������ʾ�ֶ����ñ�)--start--
declare
begin

--1������ʾ�ֶ����ñ�

--��ͬ���
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''restBalance'' and t.C_TEMPLATECODE = ''contractManager'' and t.C_MODELCODE = ''contractManager''') then 
	insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('restBalance', 'contractManager', '��ͬ���', '1', 9, 'contractManager');
end if;

--���ձ���
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''receivePrincipal'' and t.C_TEMPLATECODE = ''contractManager'' and t.C_MODELCODE = ''contractManager''') then 
	insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('receivePrincipal', 'contractManager', '���ձ���', '1', 9, 'contractManager');
end if;

--������Ϣ
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''receiveInterests'' and t.C_TEMPLATECODE = ''contractManager'' and t.C_MODELCODE = ''contractManager''') then 
	insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('receiveInterests', 'contractManager', '������Ϣ', '1', 9, 'contractManager');
end if;

end;
/
--[201802020081]20180320shiph22854(��ͬ������ҳ������-��̬�к�ͬģ�����������ʾ�ֶ����ñ�)--end--