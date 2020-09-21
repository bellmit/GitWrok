--历史数据调整
update jbpm4_ext_formreg t set t.c_formbean = t.extfield3 where nvl(t.extfield3,'1') != '1';
update jbpm4_ext_formreg t set t.extfield3 = '' where nvl(t.extfield3,'1') != '1';