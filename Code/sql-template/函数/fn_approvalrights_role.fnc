create or replace function fn_approvalrights_role(/*in_approveuser    in varchar2,*/ --���̲��������
                                             in_userid         in varchar2  --��ǰ��¼��
                                            ) return varchar2 as
  /**********************************************************
    ��  �ƣ���ѯ�Ƿ���й��������ͳ�ƣ���ɫ��
  ***********************************************************/
v_count       number(19);/*�û�������֯����*/
v_userid_company varchar2(640);/*�û����ڷֹ�˾*/
v_approveuser_company varchar2(640);/*���������ڷֹ�˾*/
v_bnum number(19);/*��ǰ�û���ɫ������鿴�Ľ�ɫ��������*/
v_role_num  number(20);/*�û����г�������ԱȨ�޵ĸ���*/
begin

  /*��ǰ��¼�������ܲ���ֹ�˾*/
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

	/*���̲��������ڷֹ�˾*/
	/*select t.org_name into v_approveuser_company  from tsys_organization t
			where t.org_id =(select tor.parent_id from tsys_organization tor where tor.org_id= (select tu.org_id from tsys_user tu where tu.user_id=in_approveuser));
*/
	/*�����û���ѯ�����ڽ�ɫ�Ϳͻ����õĿɲ鿴��ɫ�Ľ�������*/
  select count(*) bnum into v_bnum  from (select b.groupcode  from (select t.groupcode groupcode from VUSER_GROUP t where t.usercode=in_userid) b intersect
	(select REGEXP_SUBSTR(a.rolecode ,'[^,]+',1,l) rolecode from (select t.param_value rolecode  from tsys_parameter t where t.param_code='Scheme_Role') a,
					(SELECT LEVEL l FROM DUAL CONNECT BY LEVEL<=100) b WHERE l <=LENGTH(a.rolecode) - LENGTH(REPLACE(rolecode,','))+1));

	/*�����û�id�ͽ�ɫͳ�Ƹ���*/
	select count(*) role_num into v_role_num from tsys_role_user t where t.role_code ='admin' and t.user_code = in_userid;

	/*˵�����й���ԱȨ��*/
	if v_role_num>0 then
    return '1';
  elsif v_count='001001' then /*˵�����ܲ���Ա*/
    begin

        if v_bnum>0  then /*˵����ǰ�û��Ľ�ɫ�����û����õĽ�ɫ�����Բ鿴*/
            return '1';
        else
            return '0';
        end if;
   end;

  else /*˵���Ƿֹ�˾��Ա*/
    begin
     /* if instr2(',' || v_approveuser_company || ',', ',' || '�ֹ�˾' || ',')<0 then\*����������������ڹ�˾���Ʋ������ֹ�˾˵�����ܲ���Ա*\
        return '0';
      end if;*/

      if v_bnum>0 and v_userid_company = v_approveuser_company then /*˵����ǰ�û��Ľ�ɫ�����û����õĽ�ɫ���Ҵ��������ڵĹ�˾�͵�ǰ�û����ڹ�˾һ�£����Բ鿴*/
          return '1';
      else
          return '0';
      end if;

    end;
  end if;

end fn_approvalrights_role;
/