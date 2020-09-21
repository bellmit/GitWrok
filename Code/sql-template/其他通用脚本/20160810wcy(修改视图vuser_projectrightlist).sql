create or replace view vuser_projectrightlist as
select distinct t2.user_id,t1.c_projectcode from tsysinfo_roleproject t1,tsys_user_roles t2
where t1.c_rolecode=t2.role_code
 union
--2.2��ɫ��Ӧ���������ĿȨ�� ͨ�� ��ɫ��ĿȨ������>>������ĿȨ������ ����ʵ��  --���������Ŀ
select distinct t3.user_id,t2.c_projectcode from troledepright t1,tproject_info t2,tsys_user_roles t3
where ((t1.c_orgid=t2.c_dptid and not exists(select 1 from tsys_parameter t4 where t4.param_code='systembizflag' and t4.param_value='CBMS'))
      or (exists(select 1 from tsys_parameter t4 where t4.param_code='systembizflag' and t4.param_value='CBMS') and instr2(',' || t2.c_depcode || ',',t1.c_orgid)>0))
      and t1.c_rolecode=t3.role_code  and t1.c_designflag='1'
union
--3.1�û���Ӧ�ĵ�����ĿȨ�� ͨ�� �û���ĿȨ������>>������Ŀ
select distinct t.c_userid,t.c_projectcode from tsysinfo_projectright t
union
--3.2�û���Ӧ�Ĳ�����ĿȨ�� ͨ�� �û���ĿȨ������>>����Ȩ��--���������Ŀ
--   ��CBMS�У�Ȩ����ͨ���������ţ�tproject_info���е�c_depcode��������Ȩ��
select distinct t1.c_userid,t2.c_projectcode from tsysinfo_dptright t1,tproject_info t2
where ((t1.c_dptid=t2.c_dptid and not exists(select 1 from tsys_parameter t3 where t3.param_code='systembizflag' and t3.param_value='CBMS'))
	    or (exists(select 1 from tsys_parameter t3 where t3.param_code='systembizflag' and t3.param_value='CBMS') and instr2(',' || t2.c_depcode || ',',t1.c_dptid)>0)) and t1.c_flag in('1','3')
union
--4.1 ��Ŀ¼����ԱĬ��ӵ�и���Ŀ�ķ���Ȩ��
select distinct t1.c_enteruser,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_enteruser=t2.user_id)
union
--4.2 ���о���Ĭ��ӵ�и���Ŀ�ķ���Ȩ��
select distinct t1.c_trustmanager,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_trustmanager=t2.user_id)
union
--4.3 ���о���B��Ĭ��ӵ�и���Ŀ�ķ���Ȩ��
select distinct t1.c_trustmanager_b,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_trustmanager_b=t2.user_id)
union
--4.4 ���о���C��Ĭ��ӵ�и���Ŀ�ķ���Ȩ��
select distinct t1.c_trustmanager_c,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_trustmanager_c=t2.user_id)
union
--4.5 ��Ӫ����Ĭ��ӵ�и���Ŀ�ķ���Ȩ��
select distinct t1.c_dealmanage,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_dealmanage=t2.user_id)
union
--4.6 ��Ӫ����B��Ĭ��ӵ�и���Ŀ�ķ���Ȩ��
select distinct t1.c_dealmanage_b,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_dealmanage_b=t2.user_id)
 union
--4.7 ��Ӫ����C��Ĭ��ӵ�и���Ŀ�ķ���Ȩ��
select distinct t1.c_dealmanage_c,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_dealmanage_c=t2.user_id)
union
--4.8 ���л��Ĭ��ӵ�и���Ŀ�ķ���Ȩ��
select distinct t1.c_accountant,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_accountant=t2.user_id)
union
--4.9 ���л��B��Ĭ��ӵ�и���Ŀ�ķ���Ȩ��
select distinct t1.c_accountant_b,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_accountant_b=t2.user_id)
union
--4.10 ��ҵ�ල��Ĭ��ӵ�и���Ŀ�ķ���Ȩ��
select distinct t1.c_jobsupervisor,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_jobsupervisor=t2.user_id)
union
--4.11 ���ݵ�����Ĭ��ӵ�и���Ŀ�ķ���Ȩ��
select distinct t1.c_dataimport,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_dataimport=t2.user_id)
union
--4.12 ������ԱĬ��ӵ�и���Ŀ�ķ���Ȩ��
select distinct t1.c_chargepersonnel,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_chargepersonnel=t2.user_id)
union
--4.13 Э����ԱĬ��ӵ�и���Ŀ�ķ���Ȩ��
select distinct t1.c_assistpersonnel,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_assistpersonnel=t2.user_id)
union
--4.14 �йܸ�Ĭ��ӵ�и���Ŀ�ķ���Ȩ��
select distinct t1.c_trusteeship,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_trusteeship=t2.user_id)
union
--4.15 ����Ĭ��ӵ�и���Ŀ�ķ���Ȩ��
select distinct t1.c_cashier,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_cashier=t2.user_id)
union
--4.16 �ֳ����A��Ĭ��ӵ�и���Ŀ�ķ���Ȩ��
select distinct t1.c_scenesupervisepersonel,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_scenesupervisepersonel=t2.user_id)
union
--4.17 �ֳ����B��Ĭ��ӵ�и���Ŀ�ķ���Ȩ��
select distinct t1.c_scenesupervisepersonel_b,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_scenesupervisepersonel_b=t2.user_id)
union
--4.18 �ֳ����C��Ĭ��ӵ�и���Ŀ�ķ���Ȩ��
select distinct t1.c_scenesupervisepersonel_c,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_scenesupervisepersonel_c=t2.user_id)
union
--4.19 ���и�����Ĭ��ӵ�и���Ŀ�ķ���Ȩ��
select distinct t1.c_trustreviewer,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_trustreviewer=t2.user_id)
union
--4.20 ��Ŀ�鳤Ĭ��ӵ�и���Ŀ�ķ���Ȩ��
select distinct t1.c_projectleader,t1.c_projectcode from tproject_info t1 where exists(select 1 from tsys_user t2 where t1.c_projectleader=t2.user_id)
union
--5.admin��ɫ�û���������ĿȨ��
select distinct t1.user_id,t2.c_projectcode from tsys_user_roles t1,tproject_info t2 where role_code = 'admin' and right_flag = 1 
--6.������Ա
union
select t.c_managerusercode,t.c_projectcode from tproject_manager_set t
--7.�����ʲ���systembizflag=CBMS���н�����������Ϊ�����û�������ĿȨ�޵�����
union
select t1.user_id,t2.c_projectcode from  tsys_user t1, tproject_info t2 where
  instr2(',' || t2.c_depcode || ',',t1.org_id)>0 and exists (select 1 from tsys_parameter t where t.param_code = 'systembizflag' and t.param_value = 'CBMS' )
--8.�����ʲ����쵼������ĿȨ�޸���ϵͳ����leaderrole����  
union
select distinct t1.user_id,t2.c_projectcode from tsys_user_roles t1,tproject_info t2 where t2.c_projectnature = '07' and instr2(',' || (select tp.param_value from tsys_parameter tp 
  where tp.param_code = 'leaderrole') || ',',t1.ROLE_CODE)>0 and exists (select 1 from tsys_parameter t where t.param_code = 'systembizflag' and t.param_value = 'CBMS' )
;
