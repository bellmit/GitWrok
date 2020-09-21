declare
begin
--20180503shiph22854(修改项目要素配置表的扩展存储配置-扩展表tproject_info_amc)--start--
if fc_IsTableExists('tproject_factor_config') and fc_IsTableExists('tproject_info_amc') then
	update tproject_factor_config t set t.c_extendconfig = '[{"factortable":"tproject_info_amc", "className":"com.hundsun.fund.tcmp.bean.pm.ProjectInfoAMC", "relatedFiled":"projectCode"}]' where t.c_factorflag='1';
end if;
--20180503shiph22854(修改项目要素配置表的扩展存储配置-扩展表tproject_info_amc)--end--
end;
/