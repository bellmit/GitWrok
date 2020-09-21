declare
begin
	if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg t where t.UUID=''e09f3bf4406c48a2a58886810e2b3db2''') then
		insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
		values ('e09f3bf4406c48a2a58886810e2b3db2', 'spring', 'paymentDataManager.autoDeliverAssetWithOneLoaner', '单户债权收购支付自动完成资产交割服务', null, null, 'Y', null, null, null);
	end if;


	if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in t where t.UUID=''6457830e0bf8481da21d96adc766571f''') then
		insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
		values ('6457830e0bf8481da21d96adc766571f', 'e09f3bf4406c48a2a58886810e2b3db2', '流程实例编号', '0', 'String', null, '#{processInstanceId}');
	end if;
end;
/
