
--[201802020081]20180320shiph22854(合同管理首页新增列-动态列合同模板调整“列显示字段配置表”)--start--
declare
begin

--1、列显示字段配置表

--合同余额
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''restBalance'' and t.C_TEMPLATECODE = ''contractManager'' and t.C_MODELCODE = ''contractManager''') then 
	insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('restBalance', 'contractManager', '合同余额', '1', 9, 'contractManager');
end if;

--已收本金
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''receivePrincipal'' and t.C_TEMPLATECODE = ''contractManager'' and t.C_MODELCODE = ''contractManager''') then 
	insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('receivePrincipal', 'contractManager', '已收本金', '1', 9, 'contractManager');
end if;

--已收利息
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''receiveInterests'' and t.C_TEMPLATECODE = ''contractManager'' and t.C_MODELCODE = ''contractManager''') then 
	insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('receiveInterests', 'contractManager', '已收利息', '1', 9, 'contractManager');
end if;

end;
/
--[201802020081]20180320shiph22854(合同管理首页新增列-动态列合同模板调整“列显示字段配置表”)--end--