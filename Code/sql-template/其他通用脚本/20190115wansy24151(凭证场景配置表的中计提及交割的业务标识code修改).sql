declare
begin
--保证金转收购成本
update tvoucher_scene_config t set t.c_code = '22163' where t.c_code = 'nocash';
--收益计提
update tvoucher_scene_config t set t.c_code = '22400' where t.c_code = 'profit_accured';
--融资成本计提
update tvoucher_scene_config t set t.c_code = '22401' where t.c_code = 'financing_accured';
--公允价值调整
update tvoucher_scene_config t set t.c_code = '22402' where t.c_code = 'value_adjust';
--户资产交割
update tvoucher_scene_config t set t.c_code = '22403' where t.c_code = 'asset_transfer';
commit;
end;
/
