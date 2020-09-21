declare
  v_bizid           varchar2(1024) := '';
  v_bitable         varchar2(1024) := '';
  v_preoccurbalance number(19, 6);
begin
  for rs in (select tda.l_parentid, tda.l_id
               from trepay_data_relation tda, tdeposit_turn_income_info ti
              where tda.process_instanceid = ti.process_instanceid
                and tda.c_type = '5'
                and tda.c_relation_type = '2'
                and tda.c_relation_table = 'TINVEST_FUNDVARY') loop
    --根据parentid获取关联数据表的 bizid bitable
    select t.c_biz_id, t.c_biz_table
      into v_bizid, v_bitable
      from trepay_data_relation t
     where t.l_id = rs.l_parentid;
  
    --根据主键更新关联数据表的 bizid bitable
    update trepay_data_relation td
       set td.c_relation_id = v_bizid, td.c_relation_table = v_bitable
     where td.l_id = rs.l_id;
  end loop;

  for rs2 in (select td.l_id datarelationid, ti.l_id repayinfoid
                from trepay_info ti, trepay_data_relation td
               where ti.process_instanceid = td.process_instanceid
                 and ti.c_type = '22152'
                 and td.c_type = '3'
                 and td.f_amount is null) loop
    select t.f_preoccur_balance
      into v_preoccurbalance
      from trepay_info t
     where t.l_id = rs2.repayinfoid;
    update trepay_data_relation t
       set t.f_amount = v_preoccurbalance
     where t.l_id = rs2.datarelationid;
  end loop;
end;
/
