declare
begin
if not fc_IsDataExists('select count(*) from trepay_confirm_config t where t.c_associated_asset_id is not null') then
 commit;
 update trepay_confirm_config t
   set t.c_associated_asset_id       = t.c_contract_type,
       t.c_associated_asset_required = t.c_contract_required,
       t.c_contract_type = '0',
       t.c_contract_required = '0'
 where t.c_project_type <> 10;

 update trepay_confirm_config t
   set t.c_associated_asset_id = '1'
 where t.c_associated_asset_id = '2';
 
 update trepay_confirm_config t
   set t.c_associated_asset_required = '1'
 where t.c_repay_type = '20260';
 commit;
end if;
end;
/