
--[201802020081]20180320shiph22854(合同管理首页新增列-动态列合同模板调整“动态模板字段配置表”)--start--
declare
begin

--1、模板字段配置表

--合同余额
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''restBalance'' and t.C_MODELCODE = ''contractManager''') then 
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE)
values ('restBalance', '合同余额', 'contractManager', 11, '1', '16', null, 1, null, null, null, null);
end if;

--已收本金
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''receivePrincipal'' and t.C_MODELCODE = ''contractManager''') then 
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE)
values ('receivePrincipal', '已收本金', 'contractManager', 11, '1', '16', null, 1, null, null, null, null);
end if;

--已收利息
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''receiveInterests'' and t.C_MODELCODE = ''contractManager''') then 
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE)
values ('receiveInterests', '已收利息', 'contractManager', 11, '1', '16', null, 1, null, null, null, null);
end if;

end;
/
--[201802020081]20180320shiph22854(合同管理首页新增列-动态列合同模板调整“动态模板字段配置表”)--end--