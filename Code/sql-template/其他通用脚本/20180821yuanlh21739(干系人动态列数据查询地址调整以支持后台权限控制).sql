--[M201808211256]20180821yuanlh21739(干系人动态列数据查询地址调整以支持后台权限控制)--start--
declare
begin

-- 干系人数据查询采用新的地址（支持后台权限控制）
if fc_IsDataExists('select count(*) from tproject_model_config t where t.c_modelcode=''customerManager'' and t.c_queryserver=''/customer/customerManager.json''') then
	update tproject_model_config t set t.c_queryserver='/customer/customerListManager.json' 
  where t.c_modelcode='customerManager' and t.c_queryserver='/customer/customerManager.json';
end if;

end;
/
--------------------------------------------------------------------------------------------------------------------------
--[M201808211256]20180821yuanlh21739(干系人动态列数据查询地址调整以支持后台权限控制)--end--
