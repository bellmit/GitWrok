CREATE OR REPLACE FUNCTION fn_check_projectright(in_projectcode IN VARCHAR2,--项目编码
in_userid IN VARCHAR2 --当前用户
) RETURN varchar2 IS
out_value varchar2(2) := '0'; -- 返回权限 0 无权限 1 有权限
vnum number; -- 临时数量
BEGIN
     --计算是否拥有权限
     select count(1) into vnum  from VUSER_PROJECTRIGHTLIST t where t.user_id=in_userid and t.c_projectcode=in_projectcode;
     
     if vnum > 0 then
       out_value := '1';
     end if;
  RETURN out_value;
EXCEPTION  
  WHEN OTHERS THEN  
  RETURN '0';
END fn_check_projectright;
/
