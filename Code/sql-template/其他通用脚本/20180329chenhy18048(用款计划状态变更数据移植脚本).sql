declare
begin
  --�ƻ�״̬��0�ƻ��⣬1�ƻ��ڣ�2δ�ÿ3���ÿ�(����)��5���ÿ�(ȫ��)��6���ÿ�(����)��4��ʧЧ��9������
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
