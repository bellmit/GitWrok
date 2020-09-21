create or replace function fc_getfactorvalue(
  in_projectcode in varchar2,
  in_factorcode  in varchar2,
  in_serialno    in number)
return varchar2
as
  v_modifyvalue varchar2(4000);
begin
  select to_char(a.c_modifyvalue)
  into v_modifyvalue
  from (select t.l_serialno, t.d_modifytime, t.c_factorcode, t.c_modifyvalue
          from tproject_factor_trace t
         where t.c_maintablekey = in_projectcode
           and t.c_factorcode = in_factorcode
           and t.l_serialno <= in_serialno
         order by t.l_serialno desc) a
 where rownum = 1;
  return v_modifyvalue;
end fc_getfactorvalue;
/