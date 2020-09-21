delete from jbpm4_ext_service_para_in p where p.service_dbid='119b172f375741849e078f7becafe7d4';

delete from jbpm4_ext_servicereg s where s.uuid='119b172f375741849e078f7becafe7d4';

insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('119b172f375741849e078f7becafe7d4', 'spring', 'cbmsTinvestCollateralManager.disposalRealAssetEnd', '处置流程实物资产结束服务', null, null, 'Y', null, null, null);
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('4e048d63d09e485aadf30132928d9880', '119b172f375741849e078f7becafe7d4', '流程实例号', '0', 'String', null, '#{processInstanceId}');

