update  tsys_menu t set t.menu_name ='利率信息维护' where t.menu_code ='baseRateManage' and t.kind_code ='BIZFRAME';

update  tsys_trans t set t.trans_name ='利率信息维护'  where t.trans_code ='baseRateManage';

update  tsys_subtrans t set t.sub_trans_name ='利率信息维护'  where t.sub_trans_code ='baseRateManage';