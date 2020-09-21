create or replace view vuser_projectrightlist as
select distinct t2.user_id,t1.c_projectcode from tsysinfo_roleproject t1,tsys_user_roles t2
where t1.c_rolecode=t2.role_code
 union
--2.2角色对应部门设计项目权限 通过 角色项目权限配置>>部门项目权限配置 功能实现  --部门设计项目
select distinct t3.user_id,t2.c_projectcode from troledepright t1,tproject_info t2,tsys_user_roles t3
where ((t1.c_orgid=t2.c_dptid and not exists(select 1 from tsys_parameter t4 where t4.param_code='systembizflag' and t4.param_value='CBMS'))
      or (exists(select 1 from tsys_parameter t4 where t4.param_code='systembizflag' and t4.param_value='CBMS') and instr2(',' || t2.c_depcode || ',',t1.c_orgid)>0))
      and t1.c_rolecode=t3.role_code  and t1.c_designflag='1'
union
--3.1用户对应的单个项目权限 通过 用户项目权限配置>>单个项目
select distinct t.c_userid,t.c_projectcode from tsysinfo_projectright t
union
--3.2用户对应的部门项目权限 通过 用户项目权限配置>>部门权限--部门设计项目
--   在CBMS中，权限是通过承做部门（tproject_info表中的c_depcode）来控制权限
select distinct t1.c_userid,t2.c_projectcode from tsysinfo_dptright t1,tproject_info t2
where ((t1.c_dptid=t2.c_dptid and not exists(select 1 from tsys_parameter t3 where t3.param_code='systembizflag' and t3.param_value='CBMS'))
	    or (exists(select 1 from tsys_parameter t3 where t3.param_code='systembizflag' and t3.param_value='CBMS') and instr2(',' || t2.c_depcode || ',',t1.c_dptid)>0)) and t1.c_flag in('1','3')
union
--4.1 项目录入人员默认拥有该项目的访问权限
select distinct t1.c_enteruser,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_enteruser=t2.user_id)
union
--4.2 信托经理默认拥有该项目的访问权限
select distinct t1.c_trustmanager,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_trustmanager=t2.user_id)
union
--4.3 信托经理B角默认拥有该项目的访问权限
select distinct t1.c_trustmanager_b,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_trustmanager_b=t2.user_id)
union
--4.4 信托经理C角默认拥有该项目的访问权限
select distinct t1.c_trustmanager_c,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_trustmanager_c=t2.user_id)
union
--4.5 运营经理默认拥有该项目的访问权限
select distinct t1.c_dealmanage,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_dealmanage=t2.user_id)
union
--4.6 运营经理B角默认拥有该项目的访问权限
select distinct t1.c_dealmanage_b,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_dealmanage_b=t2.user_id)
 union
--4.7 运营经理C角默认拥有该项目的访问权限
select distinct t1.c_dealmanage_c,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_dealmanage_c=t2.user_id)
union
--4.8 信托会计默认拥有该项目的访问权限
select distinct t1.c_accountant,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_accountant=t2.user_id)
union
--4.9 信托会计B角默认拥有该项目的访问权限
select distinct t1.c_accountant_b,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_accountant_b=t2.user_id)
union
--4.10 作业监督岗默认拥有该项目的访问权限
select distinct t1.c_jobsupervisor,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_jobsupervisor=t2.user_id)
union
--4.11 数据导入人默认拥有该项目的访问权限
select distinct t1.c_dataimport,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_dataimport=t2.user_id)
union
--4.12 主管人员默认拥有该项目的访问权限
select distinct t1.c_chargepersonnel,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_chargepersonnel=t2.user_id)
union
--4.13 协管人员默认拥有该项目的访问权限
select distinct t1.c_assistpersonnel,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_assistpersonnel=t2.user_id)
union
--4.14 托管岗默认拥有该项目的访问权限
select distinct t1.c_trusteeship,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_trusteeship=t2.user_id)
union
--4.15 出纳默认拥有该项目的访问权限
select distinct t1.c_cashier,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_cashier=t2.user_id)
union
--4.16 现场监管A角默认拥有该项目的访问权限
select distinct t1.c_scenesupervisepersonel,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_scenesupervisepersonel=t2.user_id)
union
--4.17 现场监管B角默认拥有该项目的访问权限
select distinct t1.c_scenesupervisepersonel_b,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_scenesupervisepersonel_b=t2.user_id)
union
--4.18 现场监管C角默认拥有该项目的访问权限
select distinct t1.c_scenesupervisepersonel_c,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_scenesupervisepersonel_c=t2.user_id)
union
--4.19 信托复核人默认拥有该项目的访问权限
select distinct t1.c_trustreviewer,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_trustreviewer=t2.user_id)
union
--4.20 项目组长默认拥有该项目的访问权限
select distinct t1.c_projectleader,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_projectleader=t2.user_id)
union
--5.admin角色用户有所有项目权限
select distinct t1.user_id,t2.c_projectcode from tsys_user_roles t1,tproject_info t2 where role_code = 'admin' and right_flag = 1 
--6.管理人员
union
select t.c_managerusercode,t.c_projectcode from tproject_manager_set t
--7.浙商资产（systembizflag=CBMS）中将承做部门作为控制用户访问项目权限的依据
union
select t1.user_id,t2.c_projectcode from  tsys_user t1, tproject_info t2 where
  instr2(',' || t2.c_depcode || ',',t1.org_id)>0 and exists (select 1 from tsys_parameter t where t.param_code = 'systembizflag' and t.param_value = 'CBMS' )
--8.浙商资产中领导班子项目权限根据系统参数leaderrole控制  
union
select distinct t1.user_id,t2.c_projectcode from tsys_user_roles t1,tproject_info t2 where t2.c_projectnature = '07' and instr2(',' || (select tp.param_value from tsys_parameter tp 
  where tp.param_code = 'leaderrole') || ',',t1.ROLE_CODE)>0 and exists (select 1 from tsys_parameter t where t.param_code = 'systembizflag' and t.param_value = 'CBMS' )
;
