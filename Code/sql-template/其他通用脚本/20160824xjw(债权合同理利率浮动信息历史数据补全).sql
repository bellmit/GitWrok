--¸¡¶¯ÀûÂÊ
declare    
a       number;b varchar2(1000);
begin  
  for rs in (select t.c_creditorcontractcode  from tasset_creditorcontract t ) loop
        sp_cal_creditorateinterval(rs.c_creditorcontractcode,a,b,'',''); 
  end loop; 
  commit; 
end;  
/