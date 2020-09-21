declare
begin
  if not fc_isdataexists('select count(1) from trepay_confirm_config t where t.c_update_assets = ''1'' ') then
    update trepay_confirm_config t
       set t.c_update_assets = '1'
     where t.c_repay_type in
           ('22082', '22083', '22084', '22090', '22108', '22114');
  
    update trepay_confirm_config t
       set t.c_update_assets = '0'
     where t.c_repay_type not in
           ('22082', '22083', '22084', '22090', '22108', '22114');
  end if;
end;
/
