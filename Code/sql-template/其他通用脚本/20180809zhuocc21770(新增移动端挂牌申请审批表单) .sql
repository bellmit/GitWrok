delete from tmobile_config_form t where t.C_FORMURL='/pm/handleproject/hangout/hangoutform.htm';
delete from tmobile_config_field t where t.C_MODELCODE='/pm/handleproject/hangout/hangoutform.htm';
delete from tmobile_config_form t where t.C_FORMURL='pm/handleproject/hangout/hangoutform.htm';
delete from tmobile_config_field t where t.C_MODELCODE='pm/handleproject/hangout/hangoutform.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('pm/handleproject/hangout/hangoutform.htm', '挂牌申请表单', null, 'handlProjectManager.getListingInfoForMobile()', '1', 'MOBILE', null, '1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/handleproject/hangout/hangoutform.htm', '挂牌申请表单', 'noticenumber', null, '公告编号', '1', 1, null, null, null, null, '资产公告', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/handleproject/hangout/hangoutform.htm', '挂牌申请表单', 'noticetitle1', null, '公告标题', '1', 2, null, null, null, null, '资产公告', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/handleproject/hangout/hangoutform.htm', '挂牌申请表单', 'assettype', null, '资产类型', '6', 3, 'HANGHOUT_ASSET_TYPE', null, null, null, '资产公告', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/handleproject/hangout/hangoutform.htm', '挂牌申请表单', 'noticecontent', null, '公告内容', '3', 4, null, null, null, null, '资产公告', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/handleproject/hangout/hangoutform.htm', '挂牌申请表单', 'auctionnotice', null, '拍卖须知', '3', 5, null, null, null, null, '资产公告', null);
