--[201806210096]20180703shiph22854(针对AMCS调整要素模板配置和动态列模板配置)--start--
declare
begin

--1.要素模板配置

--1.1 删除非AMCS的要素模板
--(0)业务要素
if fc_IsExistsProjectFactorConfig('0') then                            
  delete from tproject_factor_config where c_factorflag='0';
end if;
--(2)投资项目
if fc_IsExistsProjectFactorConfig('2') then                            
  delete from tproject_factor_config where c_factorflag='2';
end if;
--(4)储备项目
if fc_IsExistsProjectFactorConfig('4') then                            
  delete from tproject_factor_config where c_factorflag='4';
end if;
--(7)产品
if fc_IsExistsProjectFactorConfig('7') then                            
  delete from tproject_factor_config where c_factorflag='7';
end if;
--(8)票据
if fc_IsExistsProjectFactorConfig('8') then                            
  delete from tproject_factor_config where c_factorflag='8';
end if;
--(9)委托合同
if fc_IsExistsProjectFactorConfig('9') then                            
  delete from tproject_factor_config where c_factorflag='9';
end if;
--(21)投资业务操作要素
if fc_IsExistsProjectFactorConfig('21') then                            
  delete from tproject_factor_config where c_factorflag='21';
end if;
--(30)子项目要素
if fc_IsExistsProjectFactorConfig('30') then                            
  delete from tproject_factor_config where c_factorflag='30';
end if;
--(40)标的物要素
if fc_IsExistsProjectFactorConfig('40') then                            
  delete from tproject_factor_config where c_factorflag='40';
end if;

--------------------------------------------------------------------------------
-- 金融市场业务 相关的要素模板 -工银投资客户需要，其他客户不需求，非工银投资环境删除
if not fc_IsDataExists('select count(*) from tsys_parameter t where t.param_code=''companyCode'' and t.param_value=''GYTZ''') then
	--(50)证券信息要素
	if fc_IsExistsProjectFactorConfig('50') then                            
	  delete from tproject_factor_config where c_factorflag='50';
	end if;
	--(51)交易信息要素
	if fc_IsExistsProjectFactorConfig('51') then
	  delete from tproject_factor_config where c_factorflag='51';
	end if;
	--(52)收益信息要素
	if fc_IsExistsProjectFactorConfig('52') then
	  delete from tproject_factor_config where c_factorflag='52';
	end if;
	--(53)投资指令要素
	if fc_IsExistsProjectFactorConfig('53') then
	  delete from tproject_factor_config where c_factorflag='53';
	end if;
	--(54)证券转换要素
	if fc_IsExistsProjectFactorConfig('54') then
	  delete from tproject_factor_config where c_factorflag='54';
	end if;
	--(55)债券发行要素
	if fc_IsExistsProjectFactorConfig('55') then
	  delete from tproject_factor_config where c_factorflag='55';
	end if;
	--(58)回购交易要素
	if fc_IsExistsProjectFactorConfig('58') then
	  delete from tproject_factor_config where c_factorflag='58';
	end if;
end if;

--------------------------------------------------------------------------------
--(61)协议信息要素
if fc_IsExistsProjectFactorConfig('61') then
  delete from tproject_factor_config where c_factorflag='61';
end if;

--1.2 修改AMCS要素模板显示名称
--(1)项目
if fc_IsExistsProjectFactorConfig('1') then                        
	update tproject_factor_config t set t.c_factorflagname='项目要素'
where t.c_factorflag='1';	
end if;
--(3)储备计划
if fc_IsExistsProjectFactorConfig('3') then                        
	update tproject_factor_config t set t.c_factorflagname='储备项目要素'
where t.c_factorflag='3';	
end if;
--(5)关联方
if fc_IsExistsProjectFactorConfig('5') then                        
	update tproject_factor_config t set t.c_factorflagname='干系人要素'
where t.c_factorflag='5';
end if;
--(6)投融资合同
if fc_IsExistsProjectFactorConfig('6') then                        
	update tproject_factor_config t set t.c_factorflagname='合同要素'
where t.c_factorflag='6';
end if;
--(10)抵质押物
if fc_IsExistsProjectFactorConfig('10') then                        
	update tproject_factor_config t set t.c_factorflagname='抵质押物要素'
where t.c_factorflag='10';	
end if;
--(13)债权合同要素模板
if fc_IsExistsProjectFactorConfig('13') then                        
	update tproject_factor_config t set t.c_factorflagname='债权合同要素'
where t.c_factorflag='13';	
end if;

--(18)债券账户要素
if fc_IsExistsProjectFactorConfig('18') then                        
	update tproject_factor_config t set t.c_factorflagname='债券账户要素'
where t.c_factorflag='18';	
end if;

--(19)银行账户要素
if fc_IsExistsProjectFactorConfig('19') then                        
	update tproject_factor_config t set t.c_factorflagname='银行账户要素'
where t.c_factorflag='19';	
end if;

--(60)基金要素模板
if fc_IsExistsProjectFactorConfig('60') then                        
	update tproject_factor_config t set t.c_factorflagname='基金要素'
where t.c_factorflag='60';	
end if;
--(70)实物资产模板
if fc_IsExistsProjectFactorConfig('70') then                        
	update tproject_factor_config t set t.c_factorflagname='实物资产要素'
where t.c_factorflag='70';	
end if;
--(71)股权资产模板
if fc_IsExistsProjectFactorConfig('71') then                        
	update tproject_factor_config t set t.c_factorflagname='股权资产要素'
where t.c_factorflag='71';	
end if;
--(81)破产信息模板
if fc_IsExistsProjectFactorConfig('81') then                        
	update tproject_factor_config t set t.c_factorflagname='破产信息要素'
where t.c_factorflag='81';	
end if;
--(82)执行信息模板
if fc_IsExistsProjectFactorConfig('82') then                        
	update tproject_factor_config t set t.c_factorflagname='执行信息要素'
where t.c_factorflag='82';	
end if;
--(83)诉讼信息要素模板
if fc_IsExistsProjectFactorConfig('83') then                        
	update tproject_factor_config t set t.c_factorflagname='诉讼信息要素'
where t.c_factorflag='83';	
end if;

--2.动态列配置

--2.1 删除非AMCS的动态列配置模板

--(AimsProjectManage)AIMS项目管理
if fc_IsExistsProjectModelConfig('AimsProjectManage') then                            
  delete from tproject_model_config where c_modelcode='AimsProjectManage';
end if;

--(invstContractUI_001)国信UI
if fc_IsExistsProjectModelConfig('invstContractUI_001') then                            
  delete from tproject_model_config where c_modelcode='invstContractUI_001';
end if;


--2.2 修改AMCS动态列模板显示名称
--(assetPacketManagePro)资产包项目管理
if fc_IsExistsProjectModelConfig('assetPacketManagePro') then                        
	update tproject_model_config t set t.c_modelname='收购项目管理'
where t.c_modelcode='assetPacketManagePro';	
end if;

--(investotherManage)投资项目管理
if fc_IsExistsProjectModelConfig('investotherManage') then                        
	update tproject_model_config t set t.c_modelname='投资项目管理'
where t.c_modelcode='investotherManage';	
end if;

end;
/
--[201806210096]20180703shiph22854(针对AMCS调整要素模板配置和动态列模板配置)--end--