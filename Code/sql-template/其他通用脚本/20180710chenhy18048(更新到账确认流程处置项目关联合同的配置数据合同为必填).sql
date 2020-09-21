update trepay_confirm_config t
   set t.c_contract_required = '1'
 where t.c_project_type = '90'
   and nvl(t.c_contract_type, '0') <> '0';