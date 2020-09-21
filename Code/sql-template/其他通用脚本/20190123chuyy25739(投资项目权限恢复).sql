--投资项目权限恢复 勿再删除
begin
if fc_isdataexists('SELECT count(*) from tsys_menu t WHERE t.menu_code =''investProjectManage''') then
 if not fc_isdataexists('SELECT count(*) from tsys_user_right WHERE TRANS_CODE =''investProjectManage'' 
	 and SUB_TRANS_CODE=''investProjectManage'' and USER_ID=''admin'' and RIGHT_FLAG =''1''') then
	 insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
   values ('investProjectManage', 'investProjectManage', 'admin', 'admin', 0, 0, 0, '1', '1');

 end if;
 if not fc_isdataexists('SELECT count(*) from tsys_user_right WHERE TRANS_CODE =''investProjectManage'' 
	 and SUB_TRANS_CODE=''investProjectManage'' and USER_ID=''admin'' and RIGHT_FLAG =''2''') then
	 insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
   values ('investProjectManage', 'investProjectManage', 'admin', 'admin', 0, 0, 0, '2', '1');
 end if;
end if;
end;
/