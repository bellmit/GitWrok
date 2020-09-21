delete from tmobile_config_form t where t.C_FORMURL='/financial/arrivaldata/claimflowform.htm';
delete from tmobile_config_field t where t.C_MODELCODE='/financial/arrivaldata/claimflowform.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/financial/arrivaldata/claimflowform.htm', '到账认领表单', null, 'arrivalDataManager.getArrivalDataForMobile()', '1', 'MOBILE', null,'1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/financial/arrivaldata/claimflowform.htm', '到账认领表单', 'gridArriavlData', null, '到账认领信息', '9', 1, '{"title":"到账认领信息","columns":[{"name":"银行流水日期","code":"bankDate","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"打款单位","code":"payerCompany","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"打款银行","code":"payerBank","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"入账银行账号","code":"payeeAccount","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"金额(元)","code":"payAmount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"未认领金额(元)","code":"unClaimAmount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"认领金额(元)","code":"claimAmount","fieldType":"2","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '到账认领信息', null);
