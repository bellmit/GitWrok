CREATE OR REPLACE FUNCTION fn_check_projectright(in_projectcode IN VARCHAR2,--��Ŀ����
in_userid IN VARCHAR2 --��ǰ�û�
) RETURN varchar2 IS
out_value varchar2(2) := '0'; -- ����Ȩ�� 0 ��Ȩ�� 1 ��Ȩ��
vnum number; -- ��ʱ����
BEGIN
     --�����Ƿ�ӵ��Ȩ��
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
