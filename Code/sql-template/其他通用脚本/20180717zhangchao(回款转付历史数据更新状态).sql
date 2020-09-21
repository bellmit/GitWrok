declare
v_cykind varchar2(5) ;
begin
  for tf in (select * from tinvest_fundvary t where t.c_busiflag in ('22180','22168') and t.c_checkflag='4') loop
	select max(ti.c_cykind) into v_cykind from trepay_info ti  where ti.process_instanceid = tf.process_instanceid;
	update tinvest_fundvary t set t.c_isinvalid='0',t.l_funddir='-1',t.c_cykind = v_cykind  where t.l_ijourid = tf.l_ijourid;
  end loop;
end;
/
