declare
begin
  --计划状态：0计划外，1计划内，2未用款，3已用款(部分)，5已用款(全部)，6已用款(超出)，4已失效，9已作废
  for rs in (select t.l_id, t.f_occur_balance, t.f_preoccur_balance
               from tpay_plan t
              where t.f_occur_balance is not null) loop
    if rs.f_occur_balance > rs.f_preoccur_balance then
      update tpay_plan t set t.c_status = '6' where t.l_id = rs.l_id;
    elsif rs.f_occur_balance = rs.f_preoccur_balance then
      update tpay_plan t set t.c_status = '5' where t.l_id = rs.l_id;
    end if;
  end loop;
end;
/
