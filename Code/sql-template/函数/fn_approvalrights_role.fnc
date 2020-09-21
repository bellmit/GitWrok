create or replace function fn_approvalrights_role(/*in_approveuser    in varchar2,*/ --流程参与审核人
                                             in_userid         in varchar2  --当前登录人
                                            ) return varchar2 as
  /**********************************************************
    名  称：查询是否进行工作量情况统计（角色）
  ***********************************************************/
v_count       number(19);/*用户所处组织机构*/
v_userid_company varchar2(640);/*用户所在分公司*/
v_approveuser_company varchar2(640);/*处理人所在分公司*/
v_bnum number(19);/*当前用户角色和允许查看的角色交集个数*/
v_role_num  number(20);/*用户具有超级管理员权限的个数*/
begin

  /*当前登录人所属总部或分公司*/
	select orgcode into v_count from (select n.org_code orgcode,n.org_name orgname, rownum rn
                        						from tsys_organization n
                      							 where n.org_id <> '0_000000'
                       							 start with n.org_id = (select tu.org_id from tsys_user tu where tu.user_id=in_userid)
                     								 connect by prior n.parent_id = n.org_id)
               							where rn = ((select count(1)
				                              from tsys_organization n
				                             where n.org_id <> '0_000000'
				                             start with n.org_id = (select tu.org_id from tsys_user tu where tu.user_id=in_userid)
				                            connect by prior n.parent_id = n.org_id));

  /*当前登录人所在分公司*/
	select t.org_name into v_userid_company  from tsys_organization t
			where t.org_id =(select tor.parent_id from tsys_organization tor where tor.org_id= (select tu.org_id from tsys_user tu where tu.user_id=in_userid));

	/*流程参与人所在分公司*/
	/*select t.org_name into v_approveuser_company  from tsys_organization t
			where t.org_id =(select tor.parent_id from tsys_organization tor where tor.org_id= (select tu.org_id from tsys_user tu where tu.user_id=in_approveuser));
*/
	/*根据用户查询出所在角色和客户配置的可查看角色的交集个数*/
  select count(*) bnum into v_bnum  from (select b.groupcode  from (select t.groupcode groupcode from VUSER_GROUP t where t.usercode=in_userid) b intersect
	(select REGEXP_SUBSTR(a.rolecode ,'[^,]+',1,l) rolecode from (select t.param_value rolecode  from tsys_parameter t where t.param_code='Scheme_Role') a,
					(SELECT LEVEL l FROM DUAL CONNECT BY LEVEL<=100) b WHERE l <=LENGTH(a.rolecode) - LENGTH(REPLACE(rolecode,','))+1));

	/*根据用户id和角色统计个数*/
	select count(*) role_num into v_role_num from tsys_role_user t where t.role_code ='admin' and t.user_code = in_userid;

	/*说明具有管理员权限*/
	if v_role_num>0 then
    return '1';
  elsif v_count='001001' then /*说明是总部人员*/
    begin

        if v_bnum>0  then /*说明当前用户的角色包含用户配置的角色，可以查看*/
            return '1';
        else
            return '0';
        end if;
   end;

  else /*说明是分公司人员*/
    begin
     /* if instr2(',' || v_approveuser_company || ',', ',' || '分公司' || ',')<0 then\*如果参与审批人所在公司名称不包含分公司说明是总部人员*\
        return '0';
      end if;*/

      if v_bnum>0 and v_userid_company = v_approveuser_company then /*说明当前用户的角色包含用户配置的角色并且处理人所在的公司和当前用户所在公司一致，可以查看*/
          return '1';
      else
          return '0';
      end if;

    end;
  end if;

end fn_approvalrights_role;
/