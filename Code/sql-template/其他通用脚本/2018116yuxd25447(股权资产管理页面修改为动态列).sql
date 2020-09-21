declare
begin
--非上市
--模板
if not fc_IsDataExists('select count(*) from tproject_model_config t where t.C_MODELCODE = ''equityAssetManage''') then
  insert into tproject_model_config (C_MODELCODE, C_MODELNAME, C_QUERYSERVER, C_ISINITQUERY, C_ISHIGHQUERY, C_SCRIPTURL, C_ISCOLBTN, C_ISMUTISELECT, C_TABLEKEY, C_ISCOMMONQUERY, C_QUERYSQL)
values ('equityAssetManage', '股权资产管理', '/pm/equityasset/equityAssetList.json?equitynature=2', '1', '0', null, '1', '1', 'equityassetno', null, null);
end if;
--动态列模板
if not fc_IsDataExists('select count(*) from tproject_temp_config t where t.C_TEMPLATECODE = ''equityAssetManage'' and t.C_MODELCODE=''equityAssetManage''') then
  insert into tproject_temp_config (C_TEMPLATECODE, C_TEMPLATENAME, C_ISPUBLIC, C_ISDEFAULT, L_ORDER, C_CREATEUSER, D_CREATETIME, C_ISSHOW, C_TEMPLATEDESC, C_LASTUPDATEUSER, D_LASTUPDATETIME, C_MODELCODE)
values ('equityAssetManage', '股权资产管理模板', '0', '1', null, 'admin', sysdate, '1', null, 'admin',sysdate, 'equityAssetManage');
end if;
--要素
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''equityassetcode'' and t.C_MODELCODE=''equityAssetManage''') then
  insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('equityassetcode', '资产编号', 'equityAssetManage', 1, '1', '1',null, 1, null, '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''assetholder_display'' and t.C_MODELCODE=''equityAssetManage''') then
  insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('assetholder_display', '资产持有人', 'equityAssetManage', 2, '1', '1',null, 1, null, '150', null, null, null, null);
end if;
--非工银环境下为资产持有人
if fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''assetholder_display'' and t.C_MODELCODE=''equityAssetManage'' and t.C_FIELDNAME = ''投资主体''') then
  update tproject_template_field t set t.C_FIELDNAME = '资产持有人' where t.C_FIELDCODE = 'assetholder_display' and t.C_MODELCODE='equityAssetManage';
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''enterprise_display'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('enterprise_display', '股权资产企业名称', 'equityAssetManage', 3, '3', '1',null, 1, null, '150', null, null, null, null);
end if;
if fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''projectname'' and t.C_MODELCODE=''equityAssetManage'' and t.C_COLRENDERER is null') then
  update tproject_template_field t set t.C_COLRENDERER = 'projectFullViewRenderer' where t.C_FIELDCODE = 'projectname' and t.C_MODELCODE='equityAssetManage';
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''projectname'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('projectname', '项目名称', 'equityAssetManage', 4, '3', '1',null, 1, 'projectFullViewRenderer', '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''equityassetno'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('equityassetno', '股权资产主键', 'equityAssetManage', 5, '1', '1',null, 1, null, '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''equityassetname'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('equityassetname', '资产名称', 'equityAssetManage', 6, '1', '1',null, 1, null, '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''projectcode'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('projectcode', '项目编号', 'equityAssetManage', 7, '1', '1',null, 1, null, '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''projectstatus'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('projectstatus', '项目状态', 'equityAssetManage', 8, '0', '6','PROJECT_STATUS', 1, null, '150', null, null, null, null);
end if;
--在动态列可勾选配置中不显示的字段
if  fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''projectstatus'' and t.C_MODELCODE=''equityAssetManage'' and t.c_fieldtype = ''1''') then
   update tproject_template_field t set t.c_fieldtype ='0' where t.C_FIELDCODE = 'projectstatus' and t.C_MODELCODE='equityAssetManage' and t.c_fieldtype = '1' ;
end if;

if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''projectphase'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('projectphase', '项目阶段', 'equityAssetManage', 9, '0', '6','PROJECT_PHASE', 1, null, '150', null, null, null, null);
end if;
--在动态列可勾选配置中不显示的字段
if  fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''projectphase'' and t.C_MODELCODE=''equityAssetManage'' and t.c_fieldtype = ''1''') then
   update tproject_template_field t set t.c_fieldtype ='0' where t.C_FIELDCODE = 'projectphase' and t.C_MODELCODE='equityAssetManage' and t.c_fieldtype = '1' ;
end if;

if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''projectnature'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('projectnature', '项目性质', 'equityAssetManage', 10, '0', '6','PM_PROJECT_NATURE', 1, null, '150', null, null, null, null);
end if;
--在动态列可勾选配置中不显示的字段
if  fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''projectnature'' and t.C_MODELCODE=''equityAssetManage'' and t.c_fieldtype = ''1''') then
   update tproject_template_field t set t.c_fieldtype ='0' where t.C_FIELDCODE = 'projectnature' and t.C_MODELCODE='equityAssetManage' and t.c_fieldtype = '1' ;
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''assetholder'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('assetholder', '资产持有人（key）', 'equityAssetManage', 11, '0', '1',null, 1, null, '150', null, null, null, null);
end if;
--在动态列可勾选配置中不显示的字段
if  fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''assetholder'' and t.C_MODELCODE=''equityAssetManage'' and t.c_fieldtype = ''1''') then
   update tproject_template_field t set t.c_fieldtype ='0' , t.C_FIELDNAME = '资产持有人（key）' where t.C_FIELDCODE = 'assetholder' and t.C_MODELCODE='equityAssetManage' and t.c_fieldtype = '1' ;
end if;

if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''equitynature_display'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('equitynature_display', '股权性质', 'equityAssetManage', 12, '1', '1',null, 1, null, '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''equitybalance'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('equitybalance', '股权金额', 'equityAssetManage', 13, '1', '16',null, 1, 'formatNum', '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''stockamount'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('stockamount', '股权份额', 'equityAssetManage', 14, '1', '16',null, 1, 'formatNum', '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''equityratio'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('equityratio', '股权占比', 'equityAssetManage', 15, '1', '16',null, 1, 'formatNum', '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''equitystatus'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('equitystatus', '资产状态', 'equityAssetManage', 16, '0', '6','ASSET_DEAL_STATUS', 1, null, '150', null, null, null, null);
end if;
--在动态列可勾选配置中不显示的字段
if  fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''equitystatus'' and t.C_MODELCODE=''equityAssetManage'' and t.c_fieldtype = ''1''') then
   update tproject_template_field t set t.c_fieldtype ='0' where t.C_FIELDCODE = 'equitystatus' and t.C_MODELCODE='equityAssetManage' and t.c_fieldtype = '1' ;
end if;

if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''checkflag'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('checkflag', '审批状态（key）', 'equityAssetManage', 17, '0', '6','COLLATERAL_REVIEW_STATUS', 1, null, '150', null, null, null, null);
end if;
--在动态列可勾选配置中不显示的字段
if  fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''checkflag'' and t.C_MODELCODE=''equityAssetManage'' and t.c_fieldtype = ''1''') then
   update tproject_template_field t set t.c_fieldtype ='0' , t.C_FIELDNAME = '审批状态（key）' where t.C_FIELDCODE = 'checkflag' and t.C_MODELCODE='equityAssetManage' and t.c_fieldtype = '1' ;
end if;


if  fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''rejecttype'' and t.C_MODELCODE=''equityAssetManage''') then
   update tproject_template_field t set t.C_FIELDCODE ='rejecttype_display' where t.C_FIELDCODE = 'rejecttype' and t.C_MODELCODE='equityAssetManage';
end if;

if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''rejecttype_display'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('rejecttype_display', '驳回状态', 'equityAssetManage', 18, '1', '6','BIZ_REJECT_TYPE', 1, null, '150', null, null, null, null);
end if;

if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''updateuser'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('updateuser', '操作用户', 'equityAssetManage', 19, '0', '1',null, 1, null, '150', null, null, null, null);
end if;
--在动态列可勾选配置中不显示的字段
if  fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''updateuser'' and t.C_MODELCODE=''equityAssetManage'' and t.c_fieldtype = ''1''') then
   update tproject_template_field t set t.c_fieldtype ='0' where t.C_FIELDCODE = 'updateuser' and t.C_MODELCODE='equityAssetManage' and t.c_fieldtype = '1' ;
end if;

if  fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''markettype'' and t.C_MODELCODE=''equityAssetManage''') then
   update tproject_template_field t set t.C_FIELDCODE ='markettype_display' where t.C_FIELDCODE = 'markettype' and t.C_MODELCODE='equityAssetManage';
end if;

if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''markettype_display'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('markettype_display', '市场类别', 'equityAssetManage', 20, '1', '6','INVEST_MARKET_TYPE', 1, null, '150', null, null, null, null);
end if;

if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''enterprise'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('enterprise', '投资企业名称(key)', 'equityAssetManage', 21, '0', '1',null, 1, null, '150', null, null, null, null);
end if;
if  fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''enterprise'' and t.C_MODELCODE=''equityAssetManage'' and t.c_fieldtype = ''1''') then
   update tproject_template_field t set t.c_fieldtype ='0' , t.C_FIELDNAME = '投资企业名称(key)' where t.C_FIELDCODE = 'enterprise' and t.C_MODELCODE='equityAssetManage' and t.c_fieldtype = '1' ;
end if;
if  fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''investindustry'' and t.C_MODELCODE=''equityAssetManage''') then
   update tproject_template_field t set t.C_FIELDCODE ='investindustry_display' where t.C_FIELDCODE = 'investindustry' and t.C_MODELCODE='equityAssetManage';
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''investindustry_display'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('investindustry_display', '投资行业', 'equityAssetManage', 22, '1', '1',null, 1, null, '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''cykind'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('cykind', '币种', 'equityAssetManage', 23, '0', '6','MONEYTYPE', 1, null, '150', null, null, null, null);
end if;
if  fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''cykind'' and t.C_MODELCODE=''equityAssetManage'' and t.c_fieldtype = ''1''') then
   update tproject_template_field t set t.C_FIELDTYPE ='0' where t.C_FIELDCODE = 'cykind' and t.C_MODELCODE='equityAssetManage'  and t.c_fieldtype = '1' ;
end if;

if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''investbalance'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('investbalance', '持股成本', 'equityAssetManage', 24, '1', '16',null, 1, 'formatNum', '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''remark'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('remark', '备注', 'equityAssetManage', 25, '1', '1',null, 1, null, '150', null, null, null, null);
end if;

if  fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''heldhandlestatus'' and t.C_MODELCODE=''equityAssetManage''') then
   update tproject_template_field t set t.C_FIELDCODE ='heldhandlestatus_display' where t.C_FIELDCODE = 'heldhandlestatus' and t.C_MODELCODE='equityAssetManage';
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''heldhandlestatus_display'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('heldhandlestatus_display', '代管处置状态', 'equityAssetManage', 26, '1', '6','ASSET_DEAL_STATUS', 1, null, '150', null, null, null, null);
end if;

if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''predictyield'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('predictyield', '收益率上限', 'equityAssetManage', 27, '1', '1',null, 1, null, '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''predictyieldlimit'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('predictyieldlimit', '收益率下限', 'equityAssetManage', 28, '1', '1',null, 1, null, '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''realinvestdate'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('realinvestdate', '实际投资日期', 'equityAssetManage', 29, '1', '4',null, 1, null, '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''shareholding_display'' and t.C_MODELCODE=''equityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('shareholding_display', '是否代持', 'equityAssetManage', 30, '1', '1',null, 1, null, '150', null, null, null, null);
end if;

--按钮
if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''equityAssetManage'' and t.C_BUTTONCODE = ''add''') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
values ('equityAssetManage', 'add', null, '新增股权资产', '1', '1', 'add', 0, 'equityAssetManage', 'add', null, 'equityAssetManage', null, null, null);
end if;

if fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''equityAssetManage'' and t.C_BUTTONCODE = ''review'' and t.C_BUTTONNAME = ''股权资产''') then
  update tproject_temp_config_button t set t.C_BUTTONNAME='股权资产复核' where t.C_MODELCODE='equityAssetManage' and t.C_BUTTONCODE = 'review';
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''equityAssetManage'' and t.C_BUTTONCODE = ''review''') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
values ('equityAssetManage', 'review', null, '股权资产复核', '1', '1', 'review', 1, 'equityAssetManage', 'review', null, 'equityAssetManage', null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''equityAssetManage'' and t.C_BUTTONCODE = ''del''') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
values ('equityAssetManage', 'del', null, '资产作废', '1', '1', 'del', 2, 'equityAssetManage', 'del', null, 'equityAssetManage', null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''equityAssetManage'' and t.C_BUTTONCODE = ''assetDiv''') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
values ('equityAssetManage', 'assetDiv', null, '股权交割', '1', '1', 'assetDiv', 3, 'equityAssetManage', 'assetDiv', null, 'equityAssetManage', null, null, null);
end if;
if fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''equityAssetManage'' and t.C_BUTTONCODE = ''supervisor'' and t.C_BUTTONNAME=''董事监管理''') then 
  update tproject_temp_config_button t set t.C_BUTTONNAME ='董监事管理' where t.C_MODELCODE='equityAssetManage' and t.C_BUTTONCODE = 'supervisor';
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''equityAssetManage'' and t.C_BUTTONCODE = ''supervisor''') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
values ('equityAssetManage', 'supervisor', null, '董监事管理', '1', '1', 'supervisor', 4, 'equityAssetManage', 'supervisor', null, 'equityAssetManage', null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''equityAssetManage'' and t.C_BUTTONCODE = ''delReview''') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
values ('equityAssetManage', 'delReview', null, '资产作废流程', '1', '1', 'delReview', 5, 'equityAssetManage', 'delReview', null, 'equityAssetManage', null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''equityAssetManage'' and t.C_BUTTONCODE = ''equityAssetDetail''') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
values ('equityAssetManage', 'equityAssetDetail', null, '变更明细', '1', '1', 'equityAssetDetail', 6, 'equityAssetManage', 'equityAssetDetail', null, 'equityAssetManage', null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''equityAssetManage'' and t.C_BUTTONCODE = ''equityAssetQuit''') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
values ('equityAssetManage', 'equityAssetQuit', null, '股权退出', '1', '1', 'equityAssetQuit', 7, 'equityAssetManage', 'equityAssetQuit', null, 'equityAssetManage', null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''equityAssetManage'' and t.C_BUTTONCODE = ''addMeeting''') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
values ('equityAssetManage', 'addMeeting', null, '三会管理', '1', '1', 'addMeeting', 8, 'equityAssetManage', 'addMeeting', null, 'equityAssetManage', null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''equityAssetManage'' and t.C_BUTTONCODE = ''dividendPlan''') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
values ('equityAssetManage', 'dividendPlan', null, '分红派息计划', '1', '1', 'dividendPlan', 9, 'equityAssetManage', 'dividendPlan', null, 'equityAssetManage', null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''equityAssetManage'' and t.C_BUTTONCODE = ''edit''') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
values ('equityAssetManage', 'edit', null, '修改', '2', '1', 'edit', 10, 'equityAssetManage', 'edit', 'edit', 'equityAssetManage', null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''equityAssetManage'' and t.C_BUTTONCODE = ''equityListing''') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
values ('equityAssetManage', 'equityListing', null, '挂牌上市', '1', '1', 'equityListing', 6, 'equityAssetManage', 'equityListing', null, 'equityAssetManage', null, null, null);
end if;
--查询
if not fc_IsDataExists('select count(*) from tproject_temp_config_query t where t.C_MODELCODE=''equityAssetManage'' and t.C_FIELDCODE = ''projectname''') then
    insert into tproject_temp_config_query (C_TEMPLATECODE, C_FIELDCODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_DEFVALUE, C_MODELCODE, C_ISBASEQUERY)
values ('equityAssetManage', 'projectname', '项目名称', '1', 1, null, 'equityAssetManage', '1');
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_query t where t.C_MODELCODE=''equityAssetManage'' and t.C_FIELDCODE = ''projectname''') then
    insert into tproject_temp_config_query (C_TEMPLATECODE, C_FIELDCODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_DEFVALUE, C_MODELCODE, C_ISBASEQUERY)
values ('equityAssetManage', 'enterprise_display', '股权资产企业名称', '1', 2, null, 'equityAssetManage', '1');
end if;
--默认显示列
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''equityassetcode'' and t.C_TEMPLATECODE=''equityAssetManage'' and  t.C_MODELCODE=''equityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('equityassetcode', 'equityAssetManage', '资产编号', '1', 0, 'equityAssetManage');
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''assetholder_display'' and t.C_TEMPLATECODE=''equityAssetManage'' and  t.C_MODELCODE=''equityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('assetholder_display', 'equityAssetManage', '资产持有人', '1', 1, 'equityAssetManage');
end if;
if  fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''assetholder_display'' and t.C_TEMPLATECODE=''equityAssetManage'' and  t.C_MODELCODE=''equityAssetManage'' and t.C_FIELDNAME = ''投资主体''') then
   update tproject_temp_config_field t set t.C_FIELDNAME = '资产持有人' where t.C_FIELDCODE = 'assetholder_display' and t.C_MODELCODE='equityAssetManage';
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''enterprise_display'' and t.C_TEMPLATECODE=''equityAssetManage'' and  t.C_MODELCODE=''equityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('enterprise_display', 'equityAssetManage', '股权资产企业名称', '1', 2, 'equityAssetManage');
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''projectname'' and t.C_TEMPLATECODE=''equityAssetManage'' and  t.C_MODELCODE=''equityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('projectname', 'equityAssetManage', '项目名称', '1', 3, 'equityAssetManage');
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''equitynature_display'' and t.C_TEMPLATECODE=''equityAssetManage'' and  t.C_MODELCODE=''equityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('equitynature_display', 'equityAssetManage', '股权性质', '1', 4, 'equityAssetManage');
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''investbalance'' and t.C_TEMPLATECODE=''equityAssetManage'' and  t.C_MODELCODE=''equityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('investbalance', 'equityAssetManage', '持股成本', '1', 5, 'equityAssetManage');
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''stockamount'' and t.C_TEMPLATECODE=''equityAssetManage'' and  t.C_MODELCODE=''equityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('stockamount', 'equityAssetManage', '股权份额', '1', 6, 'equityAssetManage');
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''equityratio'' and t.C_TEMPLATECODE=''equityAssetManage'' and  t.C_MODELCODE=''equityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('equityratio', 'equityAssetManage', '股权占比', '1', 7, 'equityAssetManage');
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''shareholding_display'' and t.C_TEMPLATECODE=''equityAssetManage'' and  t.C_MODELCODE=''equityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('shareholding_display', 'equityAssetManage', '是否代持', '1', 8, 'equityAssetManage');
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''realinvestdate'' and t.C_TEMPLATECODE=''equityAssetManage'' and  t.C_MODELCODE=''equityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('realinvestdate', 'equityAssetManage', '实际投资日期', '1', 9, 'equityAssetManage');
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''predictyield'' and t.C_TEMPLATECODE=''equityAssetManage'' and  t.C_MODELCODE=''equityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('predictyield', 'equityAssetManage', '收益率上限', '1', 10, 'equityAssetManage');
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''predictyieldlimit'' and t.C_TEMPLATECODE=''equityAssetManage'' and  t.C_MODELCODE=''equityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('predictyieldlimit', 'equityAssetManage', '收益率下限', '1', 11, 'equityAssetManage');
end if;
end;
/