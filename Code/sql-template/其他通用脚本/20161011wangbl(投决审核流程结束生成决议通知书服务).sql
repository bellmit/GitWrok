--�������ɾ���֪ͨ�����
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('aa48e4fe80cb485f8efaec901587a65c', 'spring', 'meetingApplyManager.generateMeetingResolutionNotice', '�����᰸����֪ͨ��', '�����᰸����֪ͨ��', '', 'Y', '', null, null);

--���ɾ���֪ͨ�����
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('b1a2cb1402c14ba595708ad9f0794702', 'aa48e4fe80cb485f8efaec901587a65c', '����ʵ��id', '0', 'String', '', '#{processInstanceId}');

