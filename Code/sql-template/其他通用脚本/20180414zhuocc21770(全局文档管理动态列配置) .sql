declare
begin
if not fc_isexistsprojecttempconfig('totalDocManager') then
insert into tproject_temp_config (C_TEMPLATECODE, C_TEMPLATENAME, C_ISPUBLIC, C_ISDEFAULT, L_ORDER, C_CREATEUSER, D_CREATETIME, C_ISSHOW, C_TEMPLATEDESC, C_LASTUPDATEUSER, D_LASTUPDATETIME, C_MODELCODE)
values ('totalDocManager', '全局文档管理', '0', '1', null, 'admin', to_date('14-04-2013 16:20:33', 'dd-mm-yyyy hh24:mi:ss'), '1', null, 'admin', to_date('22-09-2013 11:07:36', 'dd-mm-yyyy hh24:mi:ss'), 'totalDocManager');
end if;

if not fc_IsExistsProjectModelConfig('totalDocManager') then
insert into tproject_model_config (C_MODELCODE, C_MODELNAME, C_QUERYSERVER, C_ISINITQUERY, C_ISHIGHQUERY, C_SCRIPTURL, C_ISCOLBTN, C_ISMUTISELECT, C_TABLEKEY)
values ('totalDocManager', '全局文档管理', '/pm/project/doc/totaldocmanager.json', '1', '0', '/js/document/documentManage.js', '1', '0', 'textid');
end if;

--字段
if not fc_IsExistsTemplateField('totalDocManager','pccode') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('pccode', '项目/合同编号', 'totalDocManager', 5, '1', '1', null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('totalDocManager','pcname') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('pcname', '项目/合同名称', 'totalDocManager', 6, '3', '1', null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('totalDocManager','pcnature') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('pcnature', '项目性质/合同类别编码', 'totalDocManager', 7, '1', '1', null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('totalDocManager','pcnature_display') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('pcnature_display', '项目性质/合同类别', 'totalDocManager', 8, '1', '1', null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('totalDocManager','textid') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('textid', '文档id', 'totalDocManager', 2, '1', '1', null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('totalDocManager','textname') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('textname', '文档名称', 'totalDocManager', 1, '3', '1', null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('totalDocManager','texttype') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('texttype', '文档类型', 'totalDocManager', 3, '2', '14', 'projectTextTypeManager.getAllTextTypeList()', 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('totalDocManager','texttype_display') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('texttype_display', '文档类型', 'totalDocManager', 4, '1', '1', null, 1, null, null, null);
end if;



if not fc_IsExistsTempConfigQuery('totalDocManager','pcname','totalDocManager') then 
insert into tproject_temp_config_query (C_TEMPLATECODE, C_FIELDCODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_DEFVALUE, C_MODELCODE, C_ISBASEQUERY)
values ('totalDocManager', 'pcname', '项目/合同名称', '1', 3, null, 'totalDocManager', '1');
end if;

if not fc_IsExistsTempConfigQuery('totalDocManager','textname','totalDocManager') then 
insert into tproject_temp_config_query (C_TEMPLATECODE, C_FIELDCODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_DEFVALUE, C_MODELCODE, C_ISBASEQUERY)
values ('totalDocManager', 'textname', '文档名称', '1', 1, null, 'totalDocManager', '1');
end if;

if not fc_IsExistsTempConfigQuery('totalDocManager','texttype','totalDocManager') then 
insert into tproject_temp_config_query (C_TEMPLATECODE, C_FIELDCODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_DEFVALUE, C_MODELCODE, C_ISBASEQUERY)
values ('totalDocManager', 'texttype', '文档类别', '1', 2, null, 'totalDocManager', '1');
end if;

if not fc_IsExistsTempConfigField('totalDocManager','pcnature_display','totalDocManager') then 
insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('pcnature_display', 'totalDocManager', '项目性质/合同类别', '1', 4, 'totalDocManager');
end if;

if not fc_IsExistsTempConfigField('totalDocManager','pcname','totalDocManager') then 
insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('pcname', 'totalDocManager', '项目/合同名称', '1', 3, 'totalDocManager');
end if;

if not fc_IsExistsTempConfigField('totalDocManager','texttype_display','totalDocManager') then 
insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('texttype_display', 'totalDocManager', '文件类别', '1', 2, 'totalDocManager');
end if;

if not fc_IsExistsTempConfigField('totalDocManager','textname','totalDocManager') then 
insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('textname', 'totalDocManager', '文件名称', '1', 1, 'totalDocManager');
end if;

--权限
if not fc_IsExistsSysUserRight('totaldoc','totaldoc','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('totaldoc', 'totaldoc', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('totaldoc','totaldoc','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('totaldoc', 'totaldoc', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('totaldoc','totaldoc','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('totaldoc', 'totaldoc', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('totaldoc','totaldoc','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('totaldoc', 'totaldoc', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;
end;
/