declare
begin

if not fc_IsExistsTempConfigButton('62','payAgencyFee','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('62', 'payAgencyFee', 'more', '支付中介费', '3', '1', 'payAgencyFee()', 1, 'contractManager', 'payAgencyFee', null, 'contractManagerCols', null, null);
end if;


--支付中介费
if not fc_IsExistsSysSubTrans('contractManager','payAgencyFee') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'payAgencyFee', '支付中介费', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','payAgencyFee','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'payAgencyFee', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','payAgencyFee','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'payAgencyFee', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','payAgencyFee','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'payAgencyFee', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','payAgencyFee','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'payAgencyFee', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;



end;
/