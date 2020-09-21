create or replace function fn_convert_investdirec_toam(investdirection in varchar2)
return varchar2
as
m number;
s varchar2(10);
begin
      m:=TO_NUMBER(investdirection);
      if m>=1 and m<=9 then
        s:=TO_CHAR(m);
      end if;
      if m>=10 and m<=35 then
        s:=TO_CHAR(CHR(m+87));
      end if;
      if m>=36 and m<=61 then
        s:=TO_CHAR(CHR(m+29));
      end if;
      return s;
end fn_convert_investdirec_toam;
/