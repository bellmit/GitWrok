declare
begin

--上市股权资产管理
if fc_isexistssystrans('ListingEquityAssetManage') and  not fc_IsExistsSysSubTrans('ListingEquityAssetManage','addEquityQuitRecord') then 
	insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
	values ('ListingEquityAssetManage', 'addEquityQuitRecord', '发起股权退出', null, null, null, null, null, null, null, null);
end if;
if fc_isexistssystrans('ListingEquityAssetManage') and  not fc_IsExistsSysSubTrans('ListingEquityAssetManage','equityAssetQuit') then 
	insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
	values ('ListingEquityAssetManage', 'equityAssetQuit', '股权退出', null, null, null, null, null, null, null, null);
end if;
if fc_isexistssystrans('ListingEquityAssetManage') and  not fc_IsExistsSysSubTrans('ListingEquityAssetManage','viewEquityQuitRecord') then 
	insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
	values ('ListingEquityAssetManage', 'viewEquityQuitRecord', '查看股权退出', null, null, null, null, null, null, null, null);
end if;

if fc_isexistssystrans('ListingEquityAssetManage') and  not fc_IsExistsSysUserRight('ListingEquityAssetManage','equityAssetQuit','admin',0,0,'2') then
	insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('ListingEquityAssetManage', 'equityAssetQuit', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if fc_isexistssystrans('ListingEquityAssetManage') and  not fc_IsExistsSysUserRight('ListingEquityAssetManage','equityAssetQuit','admin',0,0,'1') then
	insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('ListingEquityAssetManage', 'equityAssetQuit', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if fc_isexistssystrans('ListingEquityAssetManage') and  not fc_IsExistsSysUserRight('ListingEquityAssetManage','addEquityQuitRecord','admin',0,0,'1') then
	insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('ListingEquityAssetManage', 'addEquityQuitRecord', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if fc_isexistssystrans('ListingEquityAssetManage') and  not fc_IsExistsSysUserRight('ListingEquityAssetManage','addEquityQuitRecord','admin',0,0,'2') then
	insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('ListingEquityAssetManage', 'addEquityQuitRecord', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if fc_isexistssystrans('ListingEquityAssetManage') and  not fc_IsExistsSysUserRight('ListingEquityAssetManage','viewEquityQuitRecord','admin',0,0,'1') then
	insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('ListingEquityAssetManage', 'viewEquityQuitRecord', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if fc_isexistssystrans('ListingEquityAssetManage') and  not fc_IsExistsSysUserRight('ListingEquityAssetManage','viewEquityQuitRecord','admin',0,0,'2') then
	insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('ListingEquityAssetManage', 'viewEquityQuitRecord', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if fc_isexistssystrans('ListingEquityAssetManage') and  not fc_IsExistsSysRoleRight('ListingEquityAssetManage','equityAssetQuit','admin',0,0,'1') then
	insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('ListingEquityAssetManage', 'equityAssetQuit', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if fc_isexistssystrans('ListingEquityAssetManage') and  not fc_IsExistsSysRoleRight('ListingEquityAssetManage','equityAssetQuit','admin',0,0,'2') then
	insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('ListingEquityAssetManage', 'equityAssetQuit', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if fc_isexistssystrans('ListingEquityAssetManage') and  not fc_IsExistsSysRoleRight('ListingEquityAssetManage','addEquityQuitRecord','admin',0,0,'2') then
	insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('ListingEquityAssetManage', 'addEquityQuitRecord', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if fc_isexistssystrans('ListingEquityAssetManage') and  not fc_IsExistsSysRoleRight('ListingEquityAssetManage','addEquityQuitRecord','admin',0,0,'1') then
	insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('ListingEquityAssetManage', 'addEquityQuitRecord', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if fc_isexistssystrans('ListingEquityAssetManage') and  not fc_IsExistsSysRoleRight('ListingEquityAssetManage','viewEquityQuitRecord','admin',0,0,'1') then
	insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('ListingEquityAssetManage', 'viewEquityQuitRecord', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if fc_isexistssystrans('ListingEquityAssetManage') and  not fc_IsExistsSysRoleRight('ListingEquityAssetManage','viewEquityQuitRecord','admin',0,0,'2') then
	insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('ListingEquityAssetManage', 'viewEquityQuitRecord', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

--股权资产管理
if fc_isexistssystrans('equityAssetManage') and  not fc_IsExistsSysSubTrans('equityAssetManage','addEquityQuitRecord') then
	insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
	values ('equityAssetManage', 'addEquityQuitRecord', '发起股权退出', null, null, null, null, null, null, null, null);
end if;

if fc_isexistssystrans('equityAssetManage') and  not fc_IsExistsSysSubTrans('equityAssetManage','equityAssetQuit') then 
	insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
	values ('equityAssetManage', 'equityAssetQuit', '股权退出', null, null, null, null, null, null, null, null);
end if;

if fc_isexistssystrans('equityAssetManage') and  not fc_IsExistsSysSubTrans('equityAssetManage','viewEquityQuitRecord') then 
	insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
	values ('equityAssetManage', 'viewEquityQuitRecord', '查看股权退出', null, null, null, null, null, null, null, null);
end if;

if fc_isexistssystrans('equityAssetManage') and  not fc_IsExistsSysUserRight('equityAssetManage','equityAssetQuit','admin',0,0,'2') then
	insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('equityAssetManage', 'equityAssetQuit', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if fc_isexistssystrans('equityAssetManage') and  not fc_IsExistsSysUserRight('equityAssetManage','equityAssetQuit','admin',0,0,'1') then
	insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('equityAssetManage', 'equityAssetQuit', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if fc_isexistssystrans('equityAssetManage') and  not fc_IsExistsSysUserRight('equityAssetManage','addEquityQuitRecord','admin',0,0,'1') then
	insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('equityAssetManage', 'addEquityQuitRecord', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if fc_isexistssystrans('equityAssetManage') and  not fc_IsExistsSysUserRight('equityAssetManage','addEquityQuitRecord','admin',0,0,'2') then
	insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('equityAssetManage', 'addEquityQuitRecord', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if fc_isexistssystrans('equityAssetManage') and  not fc_IsExistsSysUserRight('equityAssetManage','viewEquityQuitRecord','admin',0,0,'1') then
	insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('equityAssetManage', 'viewEquityQuitRecord', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if fc_isexistssystrans('equityAssetManage') and  not fc_IsExistsSysUserRight('equityAssetManage','viewEquityQuitRecord','admin',0,0,'2') then
	insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('equityAssetManage', 'viewEquityQuitRecord', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if fc_isexistssystrans('equityAssetManage') and  not fc_IsExistsSysRoleRight('equityAssetManage','equityAssetQuit','admin',0,0,'1') then
	insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('equityAssetManage', 'equityAssetQuit', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if fc_isexistssystrans('equityAssetManage') and  not fc_IsExistsSysRoleRight('equityAssetManage','equityAssetQuit','admin',0,0,'2') then
	insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('equityAssetManage', 'equityAssetQuit', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if fc_isexistssystrans('equityAssetManage') and  not fc_IsExistsSysRoleRight('equityAssetManage','addEquityQuitRecord','admin',0,0,'2') then
	insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('equityAssetManage', 'addEquityQuitRecord', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if fc_isexistssystrans('equityAssetManage') and  not fc_IsExistsSysRoleRight('equityAssetManage','addEquityQuitRecord','admin',0,0,'1') then
	insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('equityAssetManage', 'addEquityQuitRecord', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if fc_isexistssystrans('equityAssetManage') and  not fc_IsExistsSysRoleRight('equityAssetManage','viewEquityQuitRecord','admin',0,0,'1') then
	insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('equityAssetManage', 'viewEquityQuitRecord', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;


if fc_isexistssystrans('equityAssetManage') and  not fc_IsExistsSysRoleRight('equityAssetManage','viewEquityQuitRecord','admin',0,0,'2') then
	insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('equityAssetManage', 'viewEquityQuitRecord', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;
end;
/
