declare
begin
if not fc_IsDataExists('select count(*) from tgeneral_export_config t where t.c_modelcode=''arrivalclaim''') then
	insert into tgeneral_export_config (C_MODELCODE, C_FILENAME, C_FILETYPE, C_FIELDJSON, C_QUERY_SQL, C_QUERY_INSTANCE)
values ('arrivalclaim', '�����������', '0', '[{"label":"������ˮ����","name":"bankDate"},{"label":"��λ","name":"payerCompany"},{"label":"�������","name":"payerBank"},{"label":"����˻�","name":"payerAccount"},{"label":"���˵�λ","name":"payeeCompany"},{"label":"�����˻�������","name":"payeeBank"},{"label":"���������˺�","name":"payeeAccount"},{"label":"���(Ԫ)","name":"payAmount","cell":"number","precision":"2","align":"right"},{"label":"״̬","name":"status_show"},{"label":"����ժҪ","name":"remark"},{"label":"������Դ","name":"flag_show"}]                                                                                                ', '', 'arrivalDataManager.getArrivalDataListMap');
end if;
end;
/
