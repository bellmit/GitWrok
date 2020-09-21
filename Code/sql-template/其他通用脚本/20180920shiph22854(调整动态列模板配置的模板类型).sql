--[M201809200067]20180920shiph22854(针对AMCS调整模板配置的模板类型)--start--
declare
begin

--1.要素模板配置


--2.动态列配置

--2.1 删除非AMCS的动态列配置模板


--(CapitalTransManage)资金划付维护模板
if fc_IsExistsProjectModelConfig('CapitalTransManage') then
	delete from tproject_model_config where c_modelcode='CapitalTransManage';
end if;

--(CapitalTransManageVM)资金划付维护模板
if fc_IsExistsProjectModelConfig('CapitalTransManageVM') then
	delete from tproject_model_config where c_modelcode='CapitalTransManageVM';
end if;

--(FixedIncome_FIX)固定收益
if fc_IsExistsProjectModelConfig('FixedIncome_FIX') then
	delete from tproject_model_config where c_modelcode='FixedIncome_FIX';
end if;

--(MyOrgHistoryProcess)我部门的已办流程
if fc_IsExistsProjectModelConfig('MyOrgHistoryProcess') then
	delete from tproject_model_config where c_modelcode='MyOrgHistoryProcess';
end if;

--(PrivateEquity)私募股权
if fc_IsExistsProjectModelConfig('PrivateEquity') then
	delete from tproject_model_config where c_modelcode='PrivateEquity';
end if;

--(ProjectCompView)项目综合信息查询
if fc_IsExistsProjectModelConfig('ProjectCompView') then
	delete from tproject_model_config where c_modelcode='ProjectCompView';
end if;

--(ProjectConfigManager)管理人员设置
if fc_IsExistsProjectModelConfig('ProjectConfigManager') then
	delete from tproject_model_config where c_modelcode='ProjectConfigManager';
end if;

--(ProjectIndex)项目管理首页
if fc_IsExistsProjectModelConfig('ProjectIndex') then
	delete from tproject_model_config where c_modelcode='ProjectIndex';
end if;

--(ProjectManage)项目信息维护
if fc_IsExistsProjectModelConfig('ProjectManage') then
	delete from tproject_model_config where c_modelcode='ProjectManage';
end if;

--(SMSPushLogMonitor)短信推送日志监控
if fc_IsExistsProjectModelConfig('SMSPushLogMonitor') then
	delete from tproject_model_config where c_modelcode='SMSPushLogMonitor';
end if;

--(SubProjectManage)子项目信息维护
if fc_IsExistsProjectModelConfig('SubProjectManage') then
	delete from tproject_model_config where c_modelcode='SubProjectManage';
end if;

--(invstContract)投资模板
if fc_IsExistsProjectModelConfig('invstContract') then
	delete from tproject_model_config where c_modelcode='invstContract';
end if;

--(myProject)我的项目
if fc_IsExistsProjectModelConfig('myProject') then
	delete from tproject_model_config where c_modelcode='myProject';
end if;

--(subjectMatterManage)标的物管理
if fc_IsExistsProjectModelConfig('subjectMatterManage') then
	delete from tproject_model_config where c_modelcode='subjectMatterManage';
end if;


end;
/
--[M201809200067]20180920shiph22854(针对AMCS调整模板配置的模板类型)--end--