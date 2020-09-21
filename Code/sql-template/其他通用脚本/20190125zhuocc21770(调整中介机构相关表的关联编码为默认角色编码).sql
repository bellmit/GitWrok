declare
begin
   for rs in (
     select ta.c_libid,tb.c_relationcode from 
 					(select tal.c_libid,tal.c_rivalid,trr.c_customercode from tcustomer_role_relation trr, talternative_library tal where trr.c_relationcode=tal.c_rivalid) ta,tcustomer_role_relation tb
     where ta.c_customercode = tb.c_customercode and tb.c_customerrole='default'
   ) loop 
   update talternative_library t set t.c_rivalid = rs.c_relationcode where t.c_libid = rs.c_libid;
  end loop;
for rs in (
		select ta.l_dtlid,tb.c_relationcode from 
 					(select tad.l_dtlid,tad.c_rivalid,trr.c_customercode from tcustomer_role_relation trr, tagency_apply_detail tad where trr.c_relationcode=tad.c_rivalid) ta,tcustomer_role_relation tb
    where ta.c_customercode = tb.c_customercode and tb.c_customerrole='default'
   		) loop 
   update tagency_apply_detail t set t.c_rivalid = rs.c_relationcode where t.l_dtlid = rs.l_dtlid;
  end loop;
  
  for rs in (
		select ta.l_resultid,tb.c_relationcode from 
 				(select tar.l_resultid,tar.c_rivalid,trr.c_customercode from tcustomer_role_relation trr, tagency_apply_result tar where trr.c_relationcode=tar.c_rivalid) ta,tcustomer_role_relation tb
    where ta.c_customercode = tb.c_customercode and tb.c_customerrole='default'
   ) loop 
   update tagency_apply_result t set t.c_rivalid = rs.c_relationcode where t.l_resultid = rs.l_resultid;
  end loop;

--干系人改造，需要更新执业律师表的关联方角色为默认角色
  for rs in (
    select ta.c_libid1,tb.c_relationcode from 
         (select tl.c_libid1,tl.c_rivalid,trr.c_customercode from tcustomer_role_relation trr, talternative_lawyer tl where trr.c_relationcode=tl.c_rivalid) ta,tcustomer_role_relation tb
    where ta.c_customercode = tb.c_customercode and tb.c_customerrole='default'
   ) loop 
   update talternative_lawyer t set t.c_rivalid = rs.c_relationcode where t.c_libid1 = rs.c_libid1;
  end loop;
end;
/