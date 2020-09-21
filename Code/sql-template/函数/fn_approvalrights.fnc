create or replace function fn_approvalrights(in_taskid    in varchar2, --任务编号
                                             in_userid         in varchar2  --当前登录人
                                            ) return varchar2 as
  /**********************************************************
    名  称：查询是否可见历史审批记录处理意见
  ***********************************************************/
v_count       number(19);
v_processnodeid varchar2(1000);
v_bnum_zbwybj  number(5);
v_bnum_fgswybj  number(5);
v_bnum_fgs_fgswybj  number(5);
begin
  if in_userid='admin' then
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
				                            
	/*根据用户查询出所在角色和客户配置的总部人员可查看总部委员表决节点角色的交集个数*/
  select count(*) bnum_zbwybj into v_bnum_zbwybj  from (select b.groupcode  from (select t.groupcode groupcode from VUSER_GROUP t where t.usercode=in_userid) b intersect
	(select REGEXP_SUBSTR(a.rolecode ,'[^,]+',1,l) rolecode from (select t.param_value rolecode  from tsys_parameter t where t.param_code='SCHEME_ZB_WYBJ') a,
					(SELECT LEVEL l FROM DUAL CONNECT BY LEVEL<=100) b WHERE l <=LENGTH(a.rolecode) - LENGTH(REPLACE(rolecode,','))+1));
					
	/*根据用户查询出所在角色和客户配置的总部人员可查看分公司委员表决节点角色的交集个数*/
  select count(*) bnum_fgswybj into v_bnum_fgswybj  from (select b.groupcode  from (select t.groupcode groupcode from VUSER_GROUP t where t.usercode=in_userid) b intersect
	(select REGEXP_SUBSTR(a.rolecode ,'[^,]+',1,l) rolecode from (select t.param_value rolecode  from tsys_parameter t where t.param_code='SCHEME_ZB_FGSWYBJ') a,
					(SELECT LEVEL l FROM DUAL CONNECT BY LEVEL<=100) b WHERE l <=LENGTH(a.rolecode) - LENGTH(REPLACE(rolecode,','))+1));
					
	/*根据用户查询出所在角色和客户配置的分公司人员可查看分公司委员表决节点角色的交集个数*/
  select count(*) bnum_fgs_fgswybj into v_bnum_fgs_fgswybj  from (select b.groupcode  from (select t.groupcode groupcode from VUSER_GROUP t where t.usercode=in_userid) b intersect
	(select REGEXP_SUBSTR(a.rolecode ,'[^,]+',1,l) rolecode from (select t.param_value rolecode  from tsys_parameter t where t.param_code='SCHEME_FGS_FGSWYBJ') a,
					(SELECT LEVEL l FROM DUAL CONNECT BY LEVEL<=100) b WHERE l <=LENGTH(a.rolecode) - LENGTH(REPLACE(rolecode,','))+1));
                            
  
  select wm_concat(t.c_processnodeid) into v_processnodeid from tflowapproves t where t.c_taskid=in_taskid;

  if v_count='001001' then /*说明是总部人员*/
    begin
      if v_processnodeid='总部委员表决' then
        begin
            if v_bnum_zbwybj>0 then
                return '1';
            else
                return '0';
            end if;
        end;
      elsif v_processnodeid='分公司委员表决' then
        begin
            if v_bnum_fgswybj>0 then
        				 return '1';
        		else
                return '0';
            end if;
        end;
      else
        return '1';
      end if;
    end;
  else /*说明是分公司人员*/
    begin
      if instr2(v_processnodeid,'总部')>0 then
        return '0';
      end if;

      if v_processnodeid='分公司委员表决' then
        begin
            if v_bnum_fgs_fgswybj>0 then 
                return '1';
            else
                return '0';
            end if;
        end;
      else
        return '1';
      end if;
    end;
  end if;

end fn_approvalrights;
/
