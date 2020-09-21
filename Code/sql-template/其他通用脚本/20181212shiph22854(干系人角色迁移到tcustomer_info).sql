--�ű����ظ�ִ��
declare

  v_needprocess varchar2(2);
  v_c_customer_role varchar2(200);
  v_relactionCode varchar2(100);

begin

  --1������������������ĸ�ϵ�˽�ɫ������Ϣ��
  --(1)��ϵ����Ϣ���н�ɫ�ֶ�Ϊ���������ʷ�ĸ�ϵ��������Ϣ
  --(2)��ϵ�˽�ɫ���н�ɫ��Ϣû���ڸ�ϵ����Ϣ��Ľ�ɫ�ֶ����
  for rs in (select crr.c_relationcode,
                    crr.c_customercode,
                    crr.c_customerrole,
                    ci.c_customer_role
               from tcustomer_role_relation crr, tcustomer_info ci
              where crr.c_customercode = ci.c_customercode
				and crr.c_customerrole <> 'default'
                and (ci.c_customer_role is null or
                    not instr(',' || ci.c_customer_role || ',',
                               ',' || crr.c_customerrole || ',') > 0)) loop
    --�ж��Ƿ���Ҫ����                               
    select count(1)
      into v_needprocess
      from tcustomer_role_relation crr, tcustomer_info ci
     where crr.c_customercode = ci.c_customercode
       and (ci.c_customer_role is null or
           not instr(',' || ci.c_customer_role || ',',
                      ',' || crr.c_customerrole || ',') > 0)
       and crr.c_relationcode = rs.c_relationcode;

    --��ǰ��ɫ�Ƿ�Ϊ��
    select t.c_customer_role into v_c_customer_role from tcustomer_info t where t.c_customercode=rs.c_customercode;
  
    if v_needprocess > '0' then
      if v_c_customer_role is null then
        update tcustomer_info
           set c_customer_role = rs.c_customerrole
         where c_customercode = rs.c_customercode;
        commit;
      else
        update tcustomer_info
           set c_customer_role = c_customer_role || ',' || rs.c_customerrole
         where c_customercode = rs.c_customercode;
        commit;
      end if;
    end if;
  end loop;
  
  --2.��ϵ�˽�ɫ���������Ĭ�ϼ�¼����ɫΪ default
  for rs2 in (select ci.c_customercode
			  from tcustomer_info ci
			 where not exists (select 1
					  from tcustomer_role_relation crr
					 where crr.c_customercode = ci.c_customercode
					   and crr.c_customerrole = 'default')) loop
	  
	  select sys_guid() into v_relactionCode from dual;
	  
	  insert into tcustomer_role_relation
	  (c_relationcode,
	   c_customercode,
	   c_customerrole,
	   c_isvalid,
	   c_tempcode,
	   c_createuser,
	   d_createtime,
	   c_updateuser,
	   d_updatetime,
	   c_status,
	   l_serialno,
	   c_rejecttype,
	   olddataid)
	values
	  (v_relactionCode,
	   rs2.c_customercode,
	   'default',
	   '1',
	   null,
	   'admin',
	   sysdate,
	   'admin',
	   sysdate,
	   '2',
	   0,
	   null,
	   null);

  end loop;
  
end;
/
