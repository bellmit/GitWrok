declare
begin
if fc_IsDataExists('select count(*) from tsys_parameter t where t.param_code = ''isShowCreditorContract'' and t.param_value =''1''') then
    if not fc_IsDataExists('select count(*) from trepay_confirm_config tcc where tcc.c_iscreditorcontract is not null') then
    	update trepay_confirm_config tcc set tcc.c_iscreditorcontract = '1' where nvl(tcc.c_isloan,'1') = '1';
    	update trepay_confirm_config tcc set tcc.c_iscreditorcontract = '0' where nvl(tcc.c_isloan,'1') <> '1';
    end if;
else
    update trepay_confirm_config tcc set tcc.c_iscreditorcontract = '0' where 1 = 1; 
end if;
--处置项目不需配置冲销债权合同和担保合同抵质押物
update trepay_confirm_config t set t.c_iscreditorcontract = '0', t.c_isitem = '0' where t.c_project_type = '90';
end;
/
