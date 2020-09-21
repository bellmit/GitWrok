CREATE OR REPLACE FUNCTION fn_getfactordefvalue(userid         IN VARCHAR2,   --当前用户的id
                                                factordefvalue in varchar2)   --要素的默认值
  RETURN varchar2 IS
  out_factordefvalue varchar2(255);
BEGIN
  if (factordefvalue = '{user_userid}' or factordefvalue = '{stater}') then --当前用户 或者获取当前流程发起人
    begin
      return userid;
    end;
  elsif (factordefvalue = '{user_dptid}' or factordefvalue = '{stater_dptid}') then --当前用户部门 或者获取当前流程发起人所在部门
    begin
      select t.org_id
        into out_factordefvalue
        from tsys_user t
       where t.user_id = userid;
      return out_factordefvalue;
    end;
  elsif (factordefvalue is not null and
        SUBSTR(factordefvalue, 1, 13) = '{user_isrole_') then  --当前用户在该角色内时 返回用户
    begin
      select nvl(t.user_code,'')
        into out_factordefvalue
        from tsys_role_user t
       where t.user_code = userid
         and t.right_flag = '1'
         and t.role_code=SUBSTR(factordefvalue, 14, LENGTH(factordefvalue)-14);
      return out_factordefvalue;
    end;
	elsif(factordefvalue = '{stater_name}') then --获取当前流程发起人名称
	 begin
      select t.user_name
        into out_factordefvalue
        from tsys_user t
       where t.user_id = userid;
      return out_factordefvalue;
    end;
	elsif(factordefvalue = '{stater_dptid_name}') then --获取当前流程发起人所在部门名称
	  begin
      select t2.org_name
        into out_factordefvalue
        from tsys_user t1,tsys_organization t2
       where t1.user_id = userid
			 and t1.org_id = t2.org_id;
      return out_factordefvalue;
    end;
  elsif(factordefvalue = '{current_date}') then --获取系统当前日期
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
