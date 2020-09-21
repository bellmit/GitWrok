create or replace function fn_approvalrights_Schedule(in_processinstanceid    in varchar2, --方案流程实例号
                                             in_userid         in varchar2/*,  --当前登录人
                                             in_schemeid        in varchar2*/  --方案id
                                            ) return varchar2 as
  /**********************************************************
    名  称：查看项目督办报表权限控制函数
  ***********************************************************/
v_count       number(19);
v_userid_company varchar2(4000);
/*v_schemeids varchar2(4000);*/
v_scheme_company varchar2(4000);
v_bnum number(19);
v_role_num  number(20);
begin

  /*当前登录人所属总部或分公司*/
  if in_userid = 'admin' then
    return '1';
  end if;
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
	/*当前登录人有权限查看的方案*/
	/*select wm_concat(tvs.L_SCHEMEID) into v_schemeids from VUSER_SCHEMEINFORIGHTLIST tvs where tvs.user_id=in_userid;*/
	/*查询方案所在分公司*/
	select t.org_name into v_scheme_company  from tsys_organization t
			where t.org_id =(select tor.parent_id from tsys_organization tor where tor.org_id= (select tsi.c_depcode from tscheme_info tsi where tsi.process_instanceid=in_processinstanceid));
  /*根据用户查询出所在角色和客户配置的可查看角色的交集个数*/
  select count(*) bnum into v_bnum  from (select b.groupcode  from (select t.groupcode groupcode from VUSER_GROUP t where t.usercode=in_userid) b intersect
	(select REGEXP_SUBSTR(a.rolecode ,'[^,]+',1,l) rolecode from (select t.param_value rolecode  from tsys_parameter t where t.param_code='Scheme_Schedule') a,
					(SELECT LEVEL l FROM DUAL CONNECT BY LEVEL<=100) b WHERE l <=LENGTH(a.rolecode) - LENGTH(REPLACE(rolecode,','))+1));
	/*根据用户id和角色统计个数*/
	select count(*) role_num into v_role_num from tsys_role_user t where t.role_code ='admin' and t.user_code = in_userid;

	if v_role_num>0 then
    return '1';
  elsif v_count='001001' then /*说明是总部人员*/
    return '1';
  else /*说明是分公司人员*/
    begin
      if v_bnum>0 and v_userid_company = v_scheme_company then /*说明当前用户有查看的权利*/
          return '1';
      /*elsif instr2(','|| v_schemeids ||',',','|| in_schemeid ||',')>0 then/*当前登录人有权限查看的方案*/
          /*return '1';*/
      else
      		return '0';
      end if;

    end;
  end if;

end fn_approvalrights_Schedule;
/
