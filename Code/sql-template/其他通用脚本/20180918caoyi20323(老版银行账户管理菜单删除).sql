delete from tsys_subtrans t where t.trans_code  = 'amBankMenu';
delete from tsys_trans t where t.trans_code = 'amBankMenu';
delete from tsys_menu t where t.menu_code = 'amBankMenu';
delete from tsys_user_right t where t.trans_code = 'amBankMenu';
delete from tsys_role_right t where t.trans_code = 'amBankMenu';