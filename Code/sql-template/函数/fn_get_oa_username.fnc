CREATE OR REPLACE FUNCTION fn_get_oa_username ( a_userid in varchar2 )
  return varchar2 is
  /************************************************************************
    名  称: 根据USER_ID获取OA用户名称
    功  能: 根据USER_ID获取OA用户名称
    入  参: a_userid           用户ID
    出  参：o_UserName         用户名称

    创建者: xusen
    描  述:
    版  本: 20170809 add  by xusen:

  *************************************************************************/
  v_company		varchar2(32);	--公司代码
  uuid		varchar2(64);

begin
  select t.param_value into v_company from tsys_parameter t where t.param_code = 'companyCode';
  if(v_company = 'AX' or v_company = 'ax') then
	select c_outsystemuserid into uuid from tsys_user where user_id = a_userid;
  else
	select ext_field_1 into uuid from tsys_user where user_id = a_userid;
  end if;
  return(uuid);

exception
  when others then
    return('');

end fn_get_oa_username ;

/
