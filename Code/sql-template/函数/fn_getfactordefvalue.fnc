CREATE OR REPLACE FUNCTION fn_getfactordefvalue(userid         IN VARCHAR2,   --��ǰ�û���id
                                                factordefvalue in varchar2)   --Ҫ�ص�Ĭ��ֵ
  RETURN varchar2 IS
  out_factordefvalue varchar2(255);
BEGIN
  if (factordefvalue = '{user_userid}' or factordefvalue = '{stater}') then --��ǰ�û� ���߻�ȡ��ǰ���̷�����
    begin
      return userid;
    end;
  elsif (factordefvalue = '{user_dptid}' or factordefvalue = '{stater_dptid}') then --��ǰ�û����� ���߻�ȡ��ǰ���̷��������ڲ���
    begin
      select t.org_id
        into out_factordefvalue
        from tsys_user t
       where t.user_id = userid;
      return out_factordefvalue;
    end;
  elsif (factordefvalue is not null and
        SUBSTR(factordefvalue, 1, 13) = '{user_isrole_') then  --��ǰ�û��ڸý�ɫ��ʱ �����û�
    begin
      select nvl(t.user_code,'')
        into out_factordefvalue
        from tsys_role_user t
       where t.user_code = userid
         and t.right_flag = '1'
         and t.role_code=SUBSTR(factordefvalue, 14, LENGTH(factordefvalue)-14);
      return out_factordefvalue;
    end;
	elsif(factordefvalue = '{stater_name}') then --��ȡ��ǰ���̷���������
	 begin
      select t.user_name
        into out_factordefvalue
        from tsys_user t
       where t.user_id = userid;
      return out_factordefvalue;
    end;
	elsif(factordefvalue = '{stater_dptid_name}') then --��ȡ��ǰ���̷��������ڲ�������
	  begin
      select t2.org_name
        into out_factordefvalue
        from tsys_user t1,tsys_organization t2
       where t1.user_id = userid
			 and t1.org_id = t2.org_id;
      return out_factordefvalue;
    end;
  elsif(factordefvalue = '{current_date}') then --��ȡϵͳ��ǰ����
	  begin
      select to_char(sysdate,'yyyy-mm-dd')
        into out_factordefvalue
        from dual;
      return out_factordefvalue;
    end;  
  else
    begin
      return factordefvalue;
    end;
  end if;

END fn_getfactordefvalue;
/
