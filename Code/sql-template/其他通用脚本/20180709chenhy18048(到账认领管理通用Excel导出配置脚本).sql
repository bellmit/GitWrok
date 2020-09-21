declare
begin
if not fc_IsDataExists('select count(*) from tgeneral_export_config t where t.c_modelcode=''arrivalclaim''') then
	insert into tgeneral_export_config (C_MODELCODE, C_FILENAME, C_FILETYPE, C_FIELDJSON, C_QUERY_SQL, C_QUERY_INSTANCE)
values ('arrivalclaim', '到账认领管理', '0', '[{"label":"银行流水日期","name":"bankDate"},{"label":"打款单位","name":"payerCompany"},{"label":"打款银行","name":"payerBank"},{"label":"打款账户","name":"payerAccount"},{"label":"入账单位","name":"payeeCompany"},{"label":"入账账户开户行","name":"payeeBank"},{"label":"入账银行账号","name":"payeeAccount"},{"label":"金额(元)","name":"payAmount","cell":"number","precision":"2","align":"right"},{"label":"状态","name":"status_show"},{"label":"款项摘要","name":"remark"},{"label":"数据来源","name":"flag_show"}]                                                                                                ', '', 'arrivalDataManager.getArrivalDataListMap');
end if;
end;
/
