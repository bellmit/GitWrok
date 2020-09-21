declare
begin
--模板
if not fc_IsDataExists('select count(*) from tproject_model_config t where t.C_MODELCODE = ''ListingEquityAssetManage''') then
	insert into tproject_model_config (C_MODELCODE, C_MODELNAME, C_QUERYSERVER, C_ISINITQUERY, C_ISHIGHQUERY, C_SCRIPTURL, C_ISCOLBTN, C_ISMUTISELECT, C_TABLEKEY, C_ISCOMMONQUERY, C_QUERYSQL)
values ('ListingEquityAssetManage', '上市股权资产管理', '/pm/equityasset/equityAssetList.json?equitynature=1', '1', '0', null, '1', '1', 'equityassetno', null, null);
end if;
--动态列模板

if not fc_IsDataExists('select count(*) from tproject_temp_config t where t.C_TEMPLATECODE = ''ListingEquityAssetManage'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
	insert into tproject_temp_config (C_TEMPLATECODE, C_TEMPLATENAME, C_ISPUBLIC, C_ISDEFAULT, L_ORDER, C_CREATEUSER, D_CREATETIME, C_ISSHOW, C_TEMPLATEDESC, C_LASTUPDATEUSER, D_LASTUPDATETIME, C_MODELCODE)
values ('ListingEquityAssetManage', '上市股权资产管理模板', '0', '1', null, 'admin', sysdate, '1', null, 'admin',sysdate, 'ListingEquityAssetManage');
end if;
--要素
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''equityassetcode'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('equityassetcode', '资产编号', 'ListingEquityAssetManage', 1, '1', '1',null, 1, null, '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''assetholder_display'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('assetholder_display', '资产持有人', 'ListingEquityAssetManage', 2, '1', '1',null, 1, null, '150', null, null, null, null);
end if;
--非工银环境下为资产持有人
if fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''assetholder_display'' and t.C_MODELCODE=''ListingEquityAssetManage'' and t.C_FIELDNAME = ''投资主体''') then
	update tproject_template_field t set t.C_FIELDNAME = '资产持有人' where t.C_FIELDCODE = 'assetholder_display' and t.C_MODELCODE='ListingEquityAssetManage';
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''enterprise_display'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('enterprise_display', '股权资产企业名称', 'ListingEquityAssetManage', 3, '3', '1',null, 1, null, '150', null, null, null, null);
end if;
if fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''projectname'' and t.C_MODELCODE=''ListingEquityAssetManage'' and t.C_COLRENDERER is null') then
	update tproject_template_field t set t.C_COLRENDERER = 'projectFullViewRenderer' where t.C_FIELDCODE = 'projectname' and t.C_MODELCODE='ListingEquityAssetManage';
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''projectname'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('projectname', '项目名称', 'ListingEquityAssetManage', 4, '3', '1',null, 1, 'projectFullViewRenderer', '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''equityassetno'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('equityassetno', '股权资产主键', 'ListingEquityAssetManage', 5, '1', '1',null, 1, null, '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''equityassetname'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('equityassetname', '资产名称', 'ListingEquityAssetManage', 6, '1', '1',null, 1, null, '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''projectcode'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('projectcode', '项目编号', 'ListingEquityAssetManage', 7, '1', '1',null, 1, null, '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''projectstatus'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('projectstatus', '项目状态', 'ListingEquityAssetManage', 8, '0', '6','PROJECT_STATUS', 1, null, '150', null, null, null, null);
end if;
--在动态列可勾选配置中不显示的字段
if  fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''projectstatus'' and t.C_MODELCODE=''ListingEquityAssetManage'' and t.c_fieldtype = ''1''') then
   update tproject_template_field t set t.c_fieldtype ='0' where t.C_FIELDCODE = 'projectstatus' and t.C_MODELCODE='ListingEquityAssetManage' and t.c_fieldtype = '1' ;
end if;

if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''projectphase'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('projectphase', '项目阶段', 'ListingEquityAssetManage', 9, '0', '6','PROJECT_PHASE', 1, null, '150', null, null, null, null);
end if;
--在动态列可勾选配置中不显示的字段
if  fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''projectphase'' and t.C_MODELCODE=''ListingEquityAssetManage'' and t.c_fieldtype = ''1''') then
   update tproject_template_field t set t.c_fieldtype ='0' where t.C_FIELDCODE = 'projectphase' and t.C_MODELCODE='ListingEquityAssetManage' and t.c_fieldtype = '1' ;
end if;

if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''projectnature'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('projectnature', '项目性质', 'ListingEquityAssetManage', 10, '0', '6','PM_PROJECT_NATURE', 1, null, '150', null, null, null, null);
end if;
--在动态列可勾选配置中不显示的字段
if  fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''projectnature'' and t.C_MODELCODE=''ListingEquityAssetManage'' and t.c_fieldtype = ''1''') then
   update tproject_template_field t set t.c_fieldtype ='0' where t.C_FIELDCODE = 'projectnature' and t.C_MODELCODE='ListingEquityAssetManage' and t.c_fieldtype = '1' ;
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''assetholder'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('assetholder', '资产持有人（key）', 'ListingEquityAssetManage', 11, '1', '1',null, 1, null, '150', null, null, null, null);
end if;
--在动态列可勾选配置中不显示的字段
if  fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''assetholder'' and t.C_MODELCODE=''ListingEquityAssetManage'' and t.c_fieldtype = ''1''') then
   update tproject_template_field t set t.c_fieldtype ='0' , t.C_FIELDNAME = '资产持有人（key）' where t.C_FIELDCODE = 'assetholder' and t.C_MODELCODE='ListingEquityAssetManage' and t.c_fieldtype = '1' ;
end if;

if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''equitynature_display'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('equitynature_display', '股权性质', 'ListingEquityAssetManage', 12, '1', '1',null, 1, null, '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''equitybalance'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('equitybalance', '股权金额', 'ListingEquityAssetManage', 13, '1', '16',null, 1, 'formatNum', '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''stockamount'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('stockamount', '持仓数量', 'ListingEquityAssetManage', 14, '1', '16',null, 1, 'formatNum', '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''equityratio'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('equityratio', '股权占比', 'ListingEquityAssetManage', 15, '1', '16',null, 1, 'formatNum', '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''equitystatus'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('equitystatus', '资产状态', 'ListingEquityAssetManage', 16, '0', '6','ASSET_DEAL_STATUS', 1, null, '150', null, null, null, null);
end if;
--在动态列可勾选配置中不显示的字段
if  fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''equitystatus'' and t.C_MODELCODE=''ListingEquityAssetManage'' and t.c_fieldtype = ''1''') then
   update tproject_template_field t set t.c_fieldtype ='0' where t.C_FIELDCODE = 'equitystatus' and t.C_MODELCODE='ListingEquityAssetManage' and t.c_fieldtype = '1' ;
end if;

if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''checkflag'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('checkflag', '审核状态（key）', 'ListingEquityAssetManage', 17, '1', '6','COLLATERAL_REVIEW_STATUS', 1, null, '150', null, null, null, null);
end if;
--在动态列可勾选配置中不显示的字段
if  fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''checkflag'' and t.C_MODELCODE=''ListingEquityAssetManage'' and t.c_fieldtype = ''1''') then
   update tproject_template_field t set t.c_fieldtype ='0' , t.C_FIELDNAME = '审批状态（key）' where t.C_FIELDCODE = 'checkflag' and t.C_MODELCODE='ListingEquityAssetManage' and t.c_fieldtype = '1' ;
end if;

if  fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''rejecttype'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
   update tproject_template_field t set t.C_FIELDCODE ='rejecttype_display' where t.C_FIELDCODE = 'rejecttype' and t.C_MODELCODE='ListingEquityAssetManage';
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''rejecttype_display'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('rejecttype_display', '驳回状态', 'ListingEquityAssetManage', 18, '1', '6','BIZ_REJECT_TYPE', 1, null, '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''updateuser'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('updateuser', '操作用户', 'ListingEquityAssetManage', 19, '0', '1',null, 1, null, '150', null, null, null, null);
end if;
--在动态列可勾选配置中不显示的字段
if  fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''updateuser'' and t.C_MODELCODE=''ListingEquityAssetManage'' and t.c_fieldtype = ''1''') then
   update tproject_template_field t set t.c_fieldtype ='0' where t.C_FIELDCODE = 'updateuser' and t.C_MODELCODE='ListingEquityAssetManage' and t.c_fieldtype = '1' ;
end if;
if  fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''markettype'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
   update tproject_template_field t set t.C_FIELDCODE ='markettype_display' where t.C_FIELDCODE = 'markettype' and t.C_MODELCODE='ListingEquityAssetManage';
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''markettype_display'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('markettype_display', '市场类别', 'ListingEquityAssetManage', 20, '1', '6','INVEST_MARKET_TYPE', 1, null, '150', null, null, null, null);
end if;
if  fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''enterprise'' and t.C_MODELCODE=''ListingEquityAssetManage'' and t.c_fieldtype = ''1''') then
   update tproject_template_field t set t.c_fieldtype ='0' , t.C_FIELDNAME = '投资企业名称(key)' where t.C_FIELDCODE = 'enterprise' and t.C_MODELCODE='ListingEquityAssetManage' and t.c_fieldtype = '1' ;
end if;

if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''enterprise'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('enterprise', '投资企业名称(key)', 'ListingEquityAssetManage', 21, '0', '1',null, 1, null, '150', null, null, null, null);
end if;

if  fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''investindustry'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
   update tproject_template_field t set t.C_FIELDCODE ='investindustry_display' where t.C_FIELDCODE = 'investindustry' and t.C_MODELCODE='ListingEquityAssetManage';
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''investindustry_display'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('investindustry_display', '投资行业', 'ListingEquityAssetManage', 22, '1', '1',null, 1, null, '150', null, null, null, null);
end if;

if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''cykind'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('cykind', '币种', 'ListingEquityAssetManage', 23, '0', '6','MONEYTYPE', 1, null, '150', null, null, null, null);
end if;
if  fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''cykind'' and t.C_MODELCODE=''ListingEquityAssetManage'' and t.c_fieldtype = ''1''') then
   update tproject_template_field t set t.C_FIELDTYPE ='0' where t.C_FIELDCODE = 'cykind' and t.C_MODELCODE='ListingEquityAssetManage'  and t.c_fieldtype = '1' ;
end if;

if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''investbalance'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('investbalance', '持仓成本', 'ListingEquityAssetManage', 24, '1', '16',null, 1, 'formatNum', '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''remark'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('remark', '备注', 'ListingEquityAssetManage', 25, '1', '1',null, 1, null, '150', null, null, null, null);
end if;

if  fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''heldhandlestatus'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
   update tproject_template_field t set t.C_FIELDCODE ='heldhandlestatus_display' where t.C_FIELDCODE = 'heldhandlestatus' and t.C_MODELCODE='ListingEquityAssetManage';
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''heldhandlestatus_display'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('heldhandlestatus_display', '代管处置状态', 'ListingEquityAssetManage', 26, '1', '6','ASSET_DEAL_STATUS', 1, null, '150', null, null, null, null);
end if;

if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''predictyield'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('predictyield', '收益率上限', 'ListingEquityAssetManage', 27, '1', '1',null, 1, null, '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''predictyieldlimit'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('predictyieldlimit', '收益率下限', 'ListingEquityAssetManage', 28, '1', '1',null, 1, null, '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''realinvestdate'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('realinvestdate', '实际投资日期', 'ListingEquityAssetManage', 29, '1', '4',null, 1, null, '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''stockcode'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('stockcode', '股票代码', 'ListingEquityAssetManage', 30, '1', '1',null, 1, null, '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''stockname'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('stockname', '股票名称', 'ListingEquityAssetManage', 31, '1', '1',null, 1, null, '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''latestbalance'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('latestbalance', '最新价', 'ListingEquityAssetManage', 32, '1', '16',null, 1, 'formatNum', '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''carrybalance'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('carrybalance', '持仓金额', 'ListingEquityAssetManage', 33, '1', '16',null, 1, 'formatNum', '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''releasedate'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('releasedate', '解禁日期', 'ListingEquityAssetManage', 34, '1', '4',null, 1, null, '150', null, null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_template_field t where t.C_FIELDCODE = ''shareholding_display'' and t.C_MODELCODE=''ListingEquityAssetManage''') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC, C_FIELDCONFIG)
values ('shareholding_display', '是否代持', 'ListingEquityAssetManage', 35, '1', '1',null, 1, null, '150', null, null, null, null);
end if;

--按钮
if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''ListingEquityAssetManage'' and t.C_BUTTONCODE = ''add''') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
values ('ListingEquityAssetManage', 'add', null, '新增股权资产', '1', '1', 'add', 0, 'ListingEquityAssetManage', 'add', null, 'ListingEquityAssetManage', null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''ListingEquityAssetManage'' and t.C_BUTTONCODE = ''assetDiv''') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
values ('ListingEquityAssetManage', 'assetDiv', null, '股权交割', '1', '1', 'assetDiv', 1, 'ListingEquityAssetManage', 'assetDiv', null, 'ListingEquityAssetManage', null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''ListingEquityAssetManage'' and t.C_BUTTONCODE = ''del''') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
values ('ListingEquityAssetManage', 'del', null, '资产作废', '1', '1', 'del', 2, 'ListingEquityAssetManage', 'del', null, 'ListingEquityAssetManage', null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''ListingEquityAssetManage'' and t.C_BUTTONCODE = ''delReview''') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
values ('ListingEquityAssetManage', 'delReview', null, '资产作废流程', '1', '1', 'delReview', 3, 'ListingEquityAssetManage', 'delReview', null, 'ListingEquityAssetManage', null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''ListingEquityAssetManage'' and t.C_BUTTONCODE = ''dividendPlan''') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
values ('ListingEquityAssetManage', 'dividendPlan', null, '分红派息计划', '1', '1', 'dividendPlan', 4, 'ListingEquityAssetManage', 'dividendPlan', null, 'ListingEquityAssetManage', null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''ListingEquityAssetManage'' and t.C_BUTTONCODE = ''edit''') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
values ('ListingEquityAssetManage', 'edit', null, '修改', '2', '1', 'edit', 5, 'ListingEquityAssetManage', 'edit', 'edit', 'ListingEquityAssetManage', null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''ListingEquityAssetManage'' and t.C_BUTTONCODE = ''equityAssetDetail''') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
values ('ListingEquityAssetManage', 'equityAssetDetail', null, '变更明细', '1', '1', 'equityAssetDetail', 6, 'ListingEquityAssetManage', 'equityAssetDetail', null, 'ListingEquityAssetManage', null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''ListingEquityAssetManage'' and t.C_BUTTONCODE = ''equityAssetQuit''') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
values ('ListingEquityAssetManage', 'equityAssetQuit', null, '股权退出', '1', '1', 'equityAssetQuit', 7, 'ListingEquityAssetManage', 'equityAssetQuit', null, 'ListingEquityAssetManage', null, null, null);
end if;
--上市股权不需要挂牌上市按钮
if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''ListingEquityAssetManage'' and t.C_BUTTONCODE = ''equityListing''') then
	delete from tproject_temp_config_button t where t.C_MODELCODE='ListingEquityAssetManage' and t.C_BUTTONCODE = 'equityListing';
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''ListingEquityAssetManage'' and t.C_BUTTONCODE = ''review''') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
values ('ListingEquityAssetManage', 'review', null, '股权资产复核', '1', '1', 'review', 9, 'ListingEquityAssetManage', 'review', null, 'ListingEquityAssetManage', null, null, null);
end if;
if fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''ListingEquityAssetManage'' and t.C_BUTTONCODE = ''supervisor'' and t.C_BUTTONNAME=''董事监管理''') then 
	update tproject_temp_config_button t set t.C_BUTTONNAME ='董监事管理' where t.C_MODELCODE='ListingEquityAssetManage' and t.C_BUTTONCODE = 'supervisor';
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''ListingEquityAssetManage'' and t.C_BUTTONCODE = ''supervisor''') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
values ('ListingEquityAssetManage', 'supervisor', null, '董监事管理', '1', '1', 'supervisor', 10, 'ListingEquityAssetManage', 'supervisor', null, 'ListingEquityAssetManage', null, null, null);
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_button t where t.C_MODELCODE=''ListingEquityAssetManage'' and t.C_BUTTONCODE = ''addMeeting''') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT, C_CONFIGPARAM)
values ('ListingEquityAssetManage', 'addMeeting', null, '三会管理', '1', '1', 'addMeeting', 11, 'ListingEquityAssetManage', 'addMeeting', null, 'ListingEquityAssetManage', null, null, null);
end if;

--查询
if not fc_IsDataExists('select count(*) from tproject_temp_config_query t where t.C_MODELCODE=''ListingEquityAssetManage'' and t.C_FIELDCODE = ''projectname''') then
    insert into tproject_temp_config_query (C_TEMPLATECODE, C_FIELDCODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_DEFVALUE, C_MODELCODE, C_ISBASEQUERY)
values ('ListingEquityAssetManage', 'projectname', '项目名称', '1', 1, null, 'ListingEquityAssetManage', '1');
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_query t where t.C_MODELCODE=''ListingEquityAssetManage'' and t.C_FIELDCODE = ''enterprise_display''') then
    insert into tproject_temp_config_query (C_TEMPLATECODE, C_FIELDCODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_DEFVALUE, C_MODELCODE, C_ISBASEQUERY)
values ('ListingEquityAssetManage', 'enterprise_display', '股权资产企业名称', '1', 2, null, 'ListingEquityAssetManage', '1');
end if;
--默认显示列
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''equityassetcode'' and t.C_TEMPLATECODE=''ListingEquityAssetManage'' and  t.C_MODELCODE=''ListingEquityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('equityassetcode', 'ListingEquityAssetManage', '资产编号', '1', 0, 'ListingEquityAssetManage');
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''assetholder_display'' and t.C_TEMPLATECODE=''ListingEquityAssetManage'' and  t.C_MODELCODE=''ListingEquityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('assetholder_display', 'ListingEquityAssetManage', '资产持有人', '1', 1, 'ListingEquityAssetManage');
end if;
if  fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''assetholder_display'' and t.C_TEMPLATECODE=''ListingEquityAssetManage'' and  t.C_MODELCODE=''ListingEquityAssetManage'' and t.C_FIELDNAME = ''投资主体''') then
   update tproject_temp_config_field t set t.C_FIELDNAME = '资产持有人' where t.C_FIELDCODE = 'assetholder_display' and t.C_MODELCODE='ListingEquityAssetManage';
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''enterprise_display'' and t.C_TEMPLATECODE=''ListingEquityAssetManage'' and  t.C_MODELCODE=''ListingEquityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('enterprise_display', 'ListingEquityAssetManage', '股权资产企业名称', '1', 2, 'ListingEquityAssetManage');
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''projectname'' and t.C_TEMPLATECODE=''ListingEquityAssetManage'' and  t.C_MODELCODE=''ListingEquityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('projectname', 'ListingEquityAssetManage', '项目名称', '1', 3, 'ListingEquityAssetManage');
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''equitynature_display'' and t.C_TEMPLATECODE=''ListingEquityAssetManage'' and  t.C_MODELCODE=''ListingEquityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('equitynature_display', 'ListingEquityAssetManage', '股权性质', '1', 4, 'ListingEquityAssetManage');
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''stockcode'' and t.C_TEMPLATECODE=''ListingEquityAssetManage'' and  t.C_MODELCODE=''ListingEquityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('stockcode', 'ListingEquityAssetManage', '股票代码', '1', 5, 'ListingEquityAssetManage');
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''stockname'' and t.C_TEMPLATECODE=''ListingEquityAssetManage'' and  t.C_MODELCODE=''ListingEquityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('stockname', 'ListingEquityAssetManage', '股票名称', '1', 6, 'ListingEquityAssetManage');
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''stockamount'' and t.C_TEMPLATECODE=''ListingEquityAssetManage'' and  t.C_MODELCODE=''ListingEquityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('stockamount', 'ListingEquityAssetManage', '持仓数量', '1', 7, 'ListingEquityAssetManage');
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''latestbalance'' and t.C_TEMPLATECODE=''ListingEquityAssetManage'' and  t.C_MODELCODE=''ListingEquityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('latestbalance', 'ListingEquityAssetManage', '最新价', '1', 8, 'ListingEquityAssetManage');
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''carrybalance'' and t.C_TEMPLATECODE=''ListingEquityAssetManage'' and  t.C_MODELCODE=''ListingEquityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('carrybalance', 'ListingEquityAssetManage', '持仓金额', '1', 9, 'ListingEquityAssetManage');
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''investbalance'' and t.C_TEMPLATECODE=''ListingEquityAssetManage'' and  t.C_MODELCODE=''ListingEquityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('investbalance', 'ListingEquityAssetManage', '持仓成本', '1', 10, 'ListingEquityAssetManage');
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''releasedate'' and t.C_TEMPLATECODE=''ListingEquityAssetManage'' and  t.C_MODELCODE=''ListingEquityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('releasedate', 'ListingEquityAssetManage', '解禁日期', '1', 11, 'ListingEquityAssetManage');
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''shareholding_display'' and t.C_TEMPLATECODE=''ListingEquityAssetManage'' and  t.C_MODELCODE=''ListingEquityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('shareholding_display', 'ListingEquityAssetManage', '是否代持', '1', 12, 'ListingEquityAssetManage');
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''realinvestdate'' and t.C_TEMPLATECODE=''ListingEquityAssetManage'' and  t.C_MODELCODE=''ListingEquityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('realinvestdate', 'ListingEquityAssetManage', '实际投资日期', '1', 13, 'ListingEquityAssetManage');
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''predictyield'' and t.C_TEMPLATECODE=''ListingEquityAssetManage'' and  t.C_MODELCODE=''ListingEquityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('predictyield', 'ListingEquityAssetManage', '收益率上限', '1', 14, 'ListingEquityAssetManage');
end if;
if not fc_IsDataExists('select count(*) from tproject_temp_config_field t where t.C_FIELDCODE = ''predictyieldlimit'' and t.C_TEMPLATECODE=''ListingEquityAssetManage'' and  t.C_MODELCODE=''ListingEquityAssetManage'' ') then
    insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('predictyieldlimit', 'ListingEquityAssetManage', '收益率下限', '1', 15, 'ListingEquityAssetManage');
end if;
end;
/











