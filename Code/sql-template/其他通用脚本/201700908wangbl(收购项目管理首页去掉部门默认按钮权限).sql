delete from tsys_user_right t
 where t.trans_code = 'assetPacketManagePro'
   and t.sub_trans_code in ('lawinfoExport', 'lawinfoExport')
   and t.create_by = 'admin'
   and t.user_id = 'admin';
delete from tsys_role_right t
 where t.trans_code = 'assetPacketManagePro'
   and t.sub_trans_code in ('lawinfoExport', 'ddreportinfoExport')
   and t.create_by = 'admin'
   and t.role_code = 'admin';