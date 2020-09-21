declare
begin
--合同冻结
if not fc_IsExistsTempConfigButton('contractManager','freezeContract','contractManager')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
values ('contractManager', 'freezeContract', null, '合同冻结', '1', '1', 'freezeContract', 7, 'contractManager', 'freezeContract', null, 'contractManager', null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','freezeContract','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'freezeContract', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','freezeContract','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'freezeContract', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','freezeContract','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'freezeContract', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','freezeContract','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'freezeContract', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

--合同解冻
if not fc_IsExistsTempConfigButton('contractManager','thawContract','contractManager')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
values ('contractManager', 'thawContract', null, '合同解冻', '1', '1', 'thawContract', 7, 'contractManager', 'thawContract', null, 'contractManager', null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','thawContract','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'thawContract', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','thawContract','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'thawContract', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','thawContract','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'thawContract', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','thawContract','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'thawContract', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

--合同关联首页添加项目状态字段
if not fc_IsExistsTemplateField('contractManager','projectStatus') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('projectStatus', '项目状态code', 'contractManager', 14, '1', null, null, 1, null, null, null);
end if;

end;
/

