declare
begin
  update trepay_info t set t.c_isdebtsloan = '0' where t.c_isdebts = '1' and t.c_isdebtsloan is null;
  for rs in (select t.process_instanceid,
                    t.c_loanaccountcode,
                    t.f_preoccur_balance,
                    t.c_creater,
                    t.d_create
               from trepay_info t
              where t.c_isdebts = '1'
                and t.process_instanceid not in
                    (select tl.process_instanceid
                       from trepay_loan_allocate tl)) loop
    insert into trepay_loan_allocate
      (l_id,
       process_instanceid,
       c_loanaccountcode,
       f_debtsmoney,
       c_creater,
       c_createdate,
       c_updater,
       c_updatedate)
    values
      (seq_loan_allocate_id.nextval,
       rs.process_instanceid,
       rs.c_loanaccountcode,
       rs.f_preoccur_balance,
       rs.c_creater,
       rs.d_create,
       rs.c_creater,
       rs.d_create);
  end loop;
end;
/
