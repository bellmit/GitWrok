--银行账户管理页面去掉账户流水、账户流水管理菜单按钮权限
delete  from tsys_user_right t where t.trans_code='amBankMenu' and t.sub_trans_code in ('flowingManage','accountFlow');
delete  from tsys_role_right t where t.trans_code='amBankMenu' and t.sub_trans_code in ('flowingManage','accountFlow');