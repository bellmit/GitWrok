create or replace function fn_approvalrights_Schedule(in_processinstanceid    in varchar2, --��������ʵ����
                                             in_userid         in varchar2/*,  --��ǰ��¼��
                                             in_schemeid        in varchar2*/  --����id
                                            ) return varchar2 as
  /**********************************************************
    ��  �ƣ��鿴��Ŀ���챨��Ȩ�޿��ƺ���
  ***********************************************************/
v_count       number(19);
v_userid_company varchar2(4000);
/*v_schemeids varchar2(4000);*/
v_scheme_company varchar2(4000);
v_bnum number(19);
v_role_num  number(20);
begin

  /*��ǰ��¼�������ܲ���ֹ�˾*/
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

  /*��ǰ��¼�����ڷֹ�˾*/
	select t.org_name into v_userid_company  from tsys_organization t
			where t.org_id =(select tor.parent_id from tsys_organization tor where tor.org_id= (select tu.org_id from tsys_user tu where tu.user_id=in_userid));
	/*��ǰ��¼����Ȩ�޲鿴�ķ���*/
	/*select wm_concat(tvs.L_SCHEMEID) into v_schemeids from VUSER_SCHEMEINFORIGHTLIST tvs where tvs.user_id=in_userid;*/
	/*��ѯ�������ڷֹ�˾*/
	select t.org_name into v_scheme_company  from tsys_organization t
			where t.org_id =(select tor.parent_id from tsys_organization tor where tor.org_id= (select tsi.c_depcode from tscheme_info tsi where tsi.process_instanceid=in_processinstanceid));
  /*�����û���ѯ�����ڽ�ɫ�Ϳͻ����õĿɲ鿴��ɫ�Ľ�������*/
  select count(*) bnum into v_bnum  from (select b.groupcode  from (select t.groupcode groupcode from VUSER_GROUP t where t.usercode=in_userid) b intersect
	(select REGEXP_SUBSTR(a.rolecode ,'[^,]+',1,l) rolecode from (select t.param_value rolecode  from tsys_parameter t where t.param_code='Scheme_Schedule') a,
					(SELECT LEVEL l FROM DUAL CONNECT BY LEVEL<=100) b WHERE l <=LENGTH(a.rolecode) - LENGTH(REPLACE(rolecode,','))+1));
	/*�����û�id�ͽ�ɫͳ�Ƹ���*/
	select count(*) role_num into v_role_num from tsys_role_user t where t.role_code ='admin' and t.user_code = in_userid;

	if v_role_num>0 then
    return '1';
  elsif v_count='001001' then /*˵�����ܲ���Ա*/
    return '1';
  else /*˵���Ƿֹ�˾��Ա*/
    begin
      if v_bnum>0 and v_userid_company = v_scheme_company then /*˵����ǰ�û��в鿴��Ȩ��*/
          return '1';
      /*elsif instr2(','|| v_schemeids ||',',','|| in_schemeid ||',')>0 then/*��ǰ��¼����Ȩ�޲鿴�ķ���*/
          /*return '1';*/
      else
      		return '0';
      end if;

    end;
  end if;

end fn_approvalrights_Schedule;
/
