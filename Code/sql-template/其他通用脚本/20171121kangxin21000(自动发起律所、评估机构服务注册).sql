insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('9f82d480bc2a4a26a7f9794312385121', 'spring', 'meetingApplyManager.startOfficeSelectorProcessNew', '自动发起律所选聘流程开始', null, null, 'Y', null, null, null);

insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('2482d1add3ed44a7b7fb717c9122ce95', 'spring', 'meetingApplyManager.startAgencySelectorProcessNew', '自动发起评估机构选聘服务', null, null, 'Y', null, null, null);


insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('315b907b68d64cd8bc2d4f32885de6a4', '9f82d480bc2a4a26a7f9794312385121', '是否保存', '2', 'string', null, '"1"');

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('ec380844775e4a498539d66a5ea7710b', '9f82d480bc2a4a26a7f9794312385121', '是否需要选聘律所', '0', 'string', null, '#{isNeedLawfirm}');

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('9dc0c8658db24ae5b689fa21e7d21407', '9f82d480bc2a4a26a7f9794312385121', '流程实例id', '1', 'string', null, '#{processInstanceId}');

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('d2247fb4bc554d1ab221b8a88aa8138b', '9f82d480bc2a4a26a7f9794312385121', '用户ID', '3', 'string', null, '"#{starter}"');

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('9bc6cf92f50a415fbc7c109429031acf', '9f82d480bc2a4a26a7f9794312385121', '审批结果', '4', 'string', null, '"1"');

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('9eb1562bd7014af2832e5166b2f6f83e', '9f82d480bc2a4a26a7f9794312385121', '待发起流程key', '5', 'string', null, '"officeSelector"');


insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('ccd99808685d4e5e8695f75fe53f7117', '2482d1add3ed44a7b7fb717c9122ce95', '用户ID', '0', 'String', null, '"#{starter}"');

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('8a54b6ef8dc44e36b3dbb66d9b61d7c1', '2482d1add3ed44a7b7fb717c9122ce95', '审批结果', '1', 'string', null, '"1"');

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('1d60dc0596cd411aba3d79fd8fa23afa', '2482d1add3ed44a7b7fb717c9122ce95', '是否保存', '2', 'string', null, '"1"');

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('52afc08807bf438898f6e70904d05bf2', '2482d1add3ed44a7b7fb717c9122ce95', '流程实例id', '3', 'string', null, '#{processInstanceId}');

insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('2b09dee1e5e6483b95b5493d3bd12923', '2482d1add3ed44a7b7fb717c9122ce95', '待发起流程key', '4', 'string', null, '"agencySelector"');
