--合同管理中资金发放和收款计划管理顺序调整
update tproject_temp_config_button t set t.l_order = '12'
 where t.c_parentcode='more' and  t.c_buttonname in ('资金发放', '投资发放');

update tproject_temp_config_button t set t.l_order = '17'
 where t.c_parentcode='more' and  t.c_buttonname='收款计划管理';
