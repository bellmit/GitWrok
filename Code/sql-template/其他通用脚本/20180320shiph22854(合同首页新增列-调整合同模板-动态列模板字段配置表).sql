
--[201802020081]20180320shiph22854(��ͬ������ҳ������-��̬�к�ͬģ���������̬ģ���ֶ����ñ�)--start--
declare
begin

--1��ģ���ֶ����ñ�

--��ͬ���
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''restBalance'' and t.C_MODELCODE = ''contractManager''') then 
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE)
values ('restBalance', '��ͬ���', 'contractManager', 11, '1', '16', null, 1, null, null, null, null);
end if;

--���ձ���
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''receivePrincipal'' and t.C_MODELCODE = ''contractManager''') then 
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE)
values ('receivePrincipal', '���ձ���', 'contractManager', 11, '1', '16', null, 1, null, null, null, null);
end if;

--������Ϣ
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''receiveInterests'' and t.C_MODELCODE = ''contractManager''') then 
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE)
values ('receiveInterests', '������Ϣ', 'contractManager', 11, '1', '16', null, 1, null, null, null, null);
end if;

end;
/
--[201802020081]20180320shiph22854(��ͬ������ҳ������-��̬�к�ͬģ���������̬ģ���ֶ����ñ�)--end--