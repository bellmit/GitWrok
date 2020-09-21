create or replace function fn_projectshortname_convert(projectshortname in varchar2,
                                                                                     accountnumber in varchar2,
                                                                                     projectaliasname in varchar2,
                                                                                     projectaliascode in varchar2 default null ) return varchar2 is
/**
项目别称的转换函数：
参数说明
1. projectshortname 项目简称
2. accountnumber 帐套号
3. projectaliasname 项目别称

计算规则
1. 如果accountnumber为空、projectaliasname为空，就返回projectshortname
2. 如果accountnumber非空、projectaliasname为空，就返回[accountnumber]projectshortname
3. 如果accountnumber为空、projectaliasname非空，就返回projectshortname(projectaliasname)
4. 如果accountnumber非空、projectaliasname非空，就返回[accountnumber]projectshortname(projectaliasname)
5. 其他情况，就返回projectshortname
6. 如果是中原信托，返回值前面加projectaliascode
**/
  companyCode varchar2(20);
  result varchar2(640) := '';
begin
  --项目简称为空，直接返回空字符串
  if fn_varchar_empty(projectshortname) then
    return '' ;
  end if;

  select a.param_value into companyCode from tsys_parameter a where a.param_code='companyCode';
  if not fn_varchar_empty(accountnumber) and companyCode='sz' then
    result := '[' || trim(accountnumber) || ']' ;
  end if;

  result := result || trim(projectshortname) ;

  if not fn_varchar_empty(projectaliasname) then
    result := result || '(' || trim(projectaliasname) || ')';
  end if;

  if not fn_varchar_empty(projectaliascode) and companyCode='zy' then
     result:=trim(projectaliascode) || '_' || result;
  end if;
  return result;
end fn_projectshortname_convert;
/
