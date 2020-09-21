insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('e80b0b2f4c9a479ea883d7864c3a7a93', 'spring', 'assetPacketManager.setSealCode', '用印流程通过后设置用印编号', null, null, 'Y', null, null, null);

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('324a15fc0973465698d922e7a16ab25c', 'e80b0b2f4c9a479ea883d7864c3a7a93', '流程实例号', '0', 'String', null, '#{processInstanceId}');
