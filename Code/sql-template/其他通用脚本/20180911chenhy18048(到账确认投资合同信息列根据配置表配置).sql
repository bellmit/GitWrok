
update trepay_confirm_config t set t.c_fund_source = '1',t.c_associated_asset_required = '1' where t.c_repay_plan = '1';
update trepay_confirm_config t set t.c_fund_source = '1',t.c_associated_asset_required = '1',t.c_repay_plan = '1' where t.c_repay_type = '22084';