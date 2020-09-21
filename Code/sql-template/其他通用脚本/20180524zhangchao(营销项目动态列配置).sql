declare
begin
if not fc_isexistsprojecttempconfig('marketprojectManage') then
insert into tproject_temp_config (C_TEMPLATECODE, C_TEMPLATENAME, C_ISPUBLIC, C_ISDEFAULT, L_ORDER, C_CREATEUSER, D_CREATETIME, C_ISSHOW, C_TEMPLATEDESC, C_LASTUPDATEUSER, D_LASTUPDATETIME, C_MODELCODE)
values ('marketprojectManage', '营销项目管理', '0', '1', null, 'admin', to_date('14-04-2013 16:20:33', 'dd-mm-yyyy hh24:mi:ss'), '1', null, 'admin', to_date('22-09-2013 11:07:36', 'dd-mm-yyyy hh24:mi:ss'), 'marketprojectManage');
end if;

if not fc_IsExistsProjectModelConfig('marketprojectManage') then
insert into tproject_model_config (C_MODELCODE, C_MODELNAME, C_QUERYSERVER, C_ISINITQUERY, C_ISHIGHQUERY, C_SCRIPTURL, C_ISCOLBTN, C_ISMUTISELECT, C_TABLEKEY)
values ('marketprojectManage', '营销项目管理', 'pm/project/marketproject/marketprojectlist.json', '1', '0', '/js/marketproject/marketprojectlist.js', '1', '0', 'projectcode');
end if;
-----------------------------------------------------------------------------------------------
--查询条件
if not fc_IsExistsTempConfigQuery('marketprojectManage','mpccode','marketprojectManage') then 
insert into tproject_temp_config_query (C_TEMPLATECODE, C_FIELDCODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_DEFVALUE, C_MODELCODE, C_ISBASEQUERY)
values ('marketprojectManage', 'mpccode', '营销项目编号', '1', 0, null, 'marketprojectManage', '1');
end if;

if not fc_IsExistsTempConfigQuery('marketprojectManage','mpcname','marketprojectManage') then 
insert into tproject_temp_config_query (C_TEMPLATECODE, C_FIELDCODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_DEFVALUE, C_MODELCODE, C_ISBASEQUERY)
values ('marketprojectManage', 'mpcname', '营销项目名称', '1', 1, null, 'marketprojectManage', '1');
end if;

if not fc_IsExistsTempConfigQuery('marketprojectManage','mpcnature','marketprojectManage') then 
insert into tproject_temp_config_query (C_TEMPLATECODE, C_FIELDCODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_DEFVALUE, C_MODELCODE, C_ISBASEQUERY)
values ('marketprojectManage', 'mpcnature', '营销项目性质', '1', 2, null, 'marketprojectManage', '1');
end if;

if not fc_IsExistsTempConfigQuery('marketprojectManage','mpccooperationModel','marketprojectManage') then 
insert into tproject_temp_config_query (C_TEMPLATECODE, C_FIELDCODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_DEFVALUE, C_MODELCODE, C_ISBASEQUERY)
values ('marketprojectManage', 'mpccooperationModel', '合作模式', '1', 3, null, 'marketprojectManage', '1');
end if;

if not fc_IsExistsTempConfigQuery('marketprojectManage','startime','marketprojectManage') then 
insert into tproject_temp_config_query (C_TEMPLATECODE, C_FIELDCODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_DEFVALUE, C_MODELCODE, C_ISBASEQUERY)
values ('marketprojectManage', 'startime', '开始时间', '1', 4, null, 'marketprojectManage', '1');
end if;

if not fc_IsExistsTempConfigQuery('marketprojectManage','endtime','marketprojectManage') then 
insert into tproject_temp_config_query (C_TEMPLATECODE, C_FIELDCODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_DEFVALUE, C_MODELCODE, C_ISBASEQUERY)
values ('marketprojectManage', 'endtime', '结束时间', '1', 5, null, 'marketprojectManage', '1');
end if;

if not fc_IsExistsTempConfigQuery('marketprojectManage','clientname','marketprojectManage') then 
insert into tproject_temp_config_query (C_TEMPLATECODE, C_FIELDCODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_DEFVALUE, C_MODELCODE, C_ISBASEQUERY)
values ('marketprojectManage', 'clientname', '客户名称', '1', 1, null, 'marketprojectManage', '1');
end if;
-------------------------------------------------------------------------------------------------
--显示列
if not fc_IsExistsTempConfigField('marketprojectManage','mpccode','marketprojectManage') then 
insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('mpccode', 'marketprojectManage', '营销项目编号', '1', 2, 'marketprojectManage');
end if;

if not fc_IsExistsTempConfigField('marketprojectManage','mpcname','marketprojectManage') then 
insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('mpcname', 'marketprojectManage', '营销项目名称', '1', 3, 'marketprojectManage');
end if;

if not fc_IsExistsTempConfigField('marketprojectManage','mpcnature','marketprojectManage') then 
insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('mpcnature', 'marketprojectManage', '营销项目性质', '1', 4, 'marketprojectManage');
end if;

if not fc_IsExistsTempConfigField('marketprojectManage','mpcstatus','marketprojectManage') then 
insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('mpcstatus', 'marketprojectManage', '营销项目状态', '1', 5, 'marketprojectManage');
end if;

if not fc_IsExistsTempConfigField('marketprojectManage','starprocess','marketprojectManage') then 
insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('starprocess', 'marketprojectManage', '发起流程', '1', 6, 'marketprojectManage');
end if;


-------------------------------------------------------------------------------------------------------
--要素字段
if not fc_IsExistsTemplateField('marketprojectManage','mpccode') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('mpccode', '营销项目编号', 'marketprojectManage', 1, '3', '1', null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('marketprojectManage','mpcname') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('mpcname', '营销项目名称', 'marketprojectManage', 1, '3', '1', null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('marketprojectManage','mpcnature') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('mpcnature', '营销项目性质', 'marketprojectManage', 1, '3', '1', null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('marketprojectManage','mpcstatus') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('mpcstatus', '营销项目状态', 'marketprojectManage', 1, '3', '6', 'PROJECTNATURE_YXXM', 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('marketprojectManage','projectstatus') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('projectstatus', '营销项目状态（隐藏）', 'marketprojectManage', 1, '3', '1', null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('marketprojectManage','starprocess') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('starprocess', '发起流程', 'marketprojectManage', 1, '3', '1', null, 1, 'startprocessRenderer', null, null);
end if;

if not fc_IsExistsTemplateField('marketprojectManage','mpccooperationModel') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('mpccooperationModel', '合作模式', 'marketprojectManage', 1, '3', '6', 'COOPERATION_MODEL_YXXM', 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('marketprojectManage','startime') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('startime', '开始时间', 'marketprojectManage', 1, '3', '4', null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('marketprojectManage','endtime') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('endtime', '结束时间', 'marketprojectManage', 1, '3', '4', null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('marketprojectManage','clientname') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('clientname', '客户名称', 'marketprojectManage', 1, '3', '1', null, 1, null, null, null);
end if;
--------------------------------------------------------------------------------------------------
--按钮
--1、新增按钮
if not fc_IsExistsTempConfigButton('marketprojectManage','addprojectinfo','marketprojectManage')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('marketprojectManage', 'addprojectinfo', null, '新增', '1', '1', 'addprojectinfo', 0, null, null, null, 'marketprojectManage', null, null);
end if;

if not fc_IsExistsSysSubTrans('marketprojectManage','addprojectinfo') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('marketprojectManage', 'addprojectinfo', '新增', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('marketprojectManage','addprojectinfo','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketprojectManage', 'addprojectinfo', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('marketprojectManage','addprojectinfo','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketprojectManage', 'addprojectinfo', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('marketprojectManage','addprojectinfo','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketprojectManage', 'addprojectinfo', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('marketprojectManage','addprojectinfo','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketprojectManage', 'addprojectinfo', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

--3、更多按钮

if not fc_IsExistsTempConfigButton('marketprojectManage','more','marketprojectManage')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('marketprojectManage', 'more', null, '更多', '3', '1', null, null, null, null, null, 'marketprojectManage', '/marketproject/generateCols.json?templatecode=marketprojectManage', null);
end if;

if not fc_IsExistsSysSubTrans('marketproject','more') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('marketproject', 'more', '更多', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('marketproject','more','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketproject', 'more', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('marketproject','more','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketproject', 'more', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('marketproject','more','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketproject', 'more', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('marketprojectManage','more','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketprojectManage', 'more', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

--冻结按钮
if not fc_IsExistsTempConfigButton('marketprojectManage','freezingProduct','marketprojectManage')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('marketprojectManage', 'freezingProduct', 'more', '冻结', '3', '1', 'freezingProduct()', 1, 'marketproject', 'freezingProduct', null, 'marketprojectManage', null, null);
end if;

if not fc_IsExistsSysSubTrans('marketproject','freezingProduct') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('marketproject', 'freezingProduct', '冻结', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('marketproject','freezingProduct','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketproject', 'freezingProduct', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('marketproject','freezingProduct','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketproject', 'freezingProduct', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('marketproject','freezingProduct','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketproject', 'freezingProduct', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('marketproject','freezingProduct','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketproject', 'freezingProduct', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

--解冻按钮
if not fc_IsExistsTempConfigButton('marketprojectManage','thawProduct','marketprojectManage')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('marketprojectManage', 'thawProduct', 'more', '解冻', '3', '1', 'thawProduct()', 12, 'marketproject', 'thawProduct', null, 'marketprojectManage', null, null);
end if;

if not fc_IsExistsSysSubTrans('marketproject','thawProduct') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('marketproject', 'thawProduct', '解冻', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('marketproject','thawProduct','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketproject', 'thawProduct', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('marketproject','thawProduct','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketproject', 'thawProduct', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('marketproject','thawProduct','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketproject', 'thawProduct', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('marketproject','thawProduct','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketproject', 'thawProduct', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

--废弃按钮
if not fc_IsExistsTempConfigButton('marketprojectManage','trashSubjectMatter','marketprojectManage')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('marketprojectManage', 'trashSubjectMatter', 'more', '废弃', '3', '1', 'trashSubjectMatter()', 12, 'marketproject', 'trashSubjectMatter', null, 'marketprojectManage', null, null);
end if;

if not fc_IsExistsSysSubTrans('marketproject','trashSubjectMatter') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('marketproject', 'trashSubjectMatter', '废弃', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('marketproject','trashSubjectMatter','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketproject', 'trashSubjectMatter', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('marketproject','trashSubjectMatter','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketproject', 'trashSubjectMatter', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('marketproject','trashSubjectMatter','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketproject', 'trashSubjectMatter', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('marketproject','trashSubjectMatter','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketproject', 'trashSubjectMatter', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

--操作列修改按钮
if not fc_IsExistsTempConfigButton('marketprojectManage','editmarketproject','marketprojectManage')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('marketprojectManage', 'editmarketproject', null, '修改', '2', '1', 'editmarketproject()', 1, 'marketproject', 'editmarketproject', 'edit', 'marketprojectManage', null, null);
end if;

if not fc_IsExistsSysSubTrans('marketproject','editmarketproject') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('marketproject', 'editmarketproject', '修改', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('marketproject','editmarketproject','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketproject', 'editmarketproject', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('marketproject','editmarketproject','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketproject', 'editmarketproject', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('marketproject','editmarketproject','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketproject', 'editmarketproject', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('marketproject','editmarketproject','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketproject', 'editmarketproject', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

--操作列删除按钮
if not fc_IsExistsTempConfigButton('marketprojectManage','delmarketproject','marketprojectManage')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('marketprojectManage', 'delmarketproject', null, '删除', '2', '1', 'delmarketproject()', 1, 'marketproject', 'delmarketproject', 'del', 'marketprojectManage', null, null);
end if;

if not fc_IsExistsSysSubTrans('marketproject','delmarketproject') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('marketproject', 'delmarketproject', '删除', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('marketproject','delmarketproject','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketproject', 'delmarketproject', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('marketproject','delmarketproject','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketproject', 'delmarketproject', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('marketproject','delmarketproject','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketproject', 'delmarketproject', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('marketproject','delmarketproject','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketproject', 'delmarketproject', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

--操作列查看按钮
if not fc_IsExistsTempConfigButton('marketprojectManage','viewmarketproject','marketprojectManage')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('marketprojectManage', 'viewmarketproject', null, '查看', '2', '1', 'viewmarketproject()', 1, 'marketproject', 'viewmarketproject', 'view', 'marketprojectManage', null, null);
end if;

if not fc_IsExistsSysSubTrans('marketproject','viewmarketproject') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('marketproject', 'viewmarketproject', '查看', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('marketproject','viewmarketproject','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketproject', 'viewmarketproject', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('marketproject','viewmarketproject','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketproject', 'viewmarketproject', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('marketproject','viewmarketproject','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketproject', 'viewmarketproject', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('marketproject','viewmarketproject','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('marketproject', 'viewmarketproject', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

end;
/