declare
begin

if not fc_IsExistsExtFormReg('7a8f646a45444ed1996f4316f3eeec89')then
insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3, C_FORMBEAN)
values ('7a8f646a45444ed1996f4316f3eeec89', 'c2eed1be602c4252870fbc0e256916f6', 'PAGE_MW', '������ί�ɱ��', '/pm/supervisor/appointUpdate.htm', null, null, null, null, null, null);
end if;
if not fc_IsExistsExtFormReg('c285370f0b6346bda47add9a10941e5e')then
insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3, C_FORMBEAN)
values ('c285370f0b6346bda47add9a10941e5e', 'c2eed1be602c4252870fbc0e256916f6', 'PAGE_MW', '������ί��ǩ��', '/pm/supervisor/appointAdd.htm', null, null, null, null, null, null);
end if;

--ί��ǩ������
if not fc_IsExistsExtServiceReg('732ae7a364db4c589cf4501e30ae239b') then 
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('732ae7a364db4c589cf4501e30ae239b', 'spring', 'supervisorInfoManager.updateSupervisorAppointInfoByEndUpdate', '������ί�ɱ�����̽�������', '��Ȩ�ʲ���������ί�ɱ�����̽���������ˮ�����', null, 'Y', null, null, null);
end if;
if not fc_IsExistsExtServiceParaIn('410836ccdd334d0badf0308607ba0adb') then 
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('410836ccdd334d0badf0308607ba0adb', '732ae7a364db4c589cf4501e30ae239b', '����ʵ����', '0', 'String', null, '#{processInstanceId}');
end if;
if not fc_IsExistsExtServiceParaIn('ad3649bcbc8d476489f03b7ec365017e') then 
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('ad3649bcbc8d476489f03b7ec365017e', '732ae7a364db4c589cf4501e30ae239b', '�Ƿ񲵻أ�1�ǣ�0��', '1', 'String', null, '0');
end if;

--��������
--��
if not fc_IsExistsExtFormReg('2247dff687414c848bfdf1ad0b014f45')then
insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3, C_FORMBEAN)
values ('2247dff687414c848bfdf1ad0b014f45', '-1', 'PAGE_MW', '��������', '/pm/equityasset/equityAssetListing.htm', null, null, null, null, null, null);
end if;
--����
if not fc_IsExistsExtServiceReg('e52bfbf296a844a7af1b3aa0d2ff03bd') then 
insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
values ('e52bfbf296a844a7af1b3aa0d2ff03bd', 'spring', 'equityAssetManager.endProcessListing', '�������н�������', null, null, 'Y', null, null, null);
end if;
--����
if not fc_IsExistsExtServiceParaIn('219e90cba2864e749b1ed8d84d2c5233') then 
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('219e90cba2864e749b1ed8d84d2c5233', 'e52bfbf296a844a7af1b3aa0d2ff03bd', '����ʵ����', '0', 'String', null, '#{processInstanceId}');
end if;
if not fc_IsExistsExtServiceParaIn('c2d16aba4c6e4ed29ae66de4780f5e2f') then 
insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
values ('c2d16aba4c6e4ed29ae66de4780f5e2f', 'e52bfbf296a844a7af1b3aa0d2ff03bd', '�Ƿ�ͨ����1ͨ����0�����', '1', 'String', null, '1');
end if;



--�������б��ͷ���




end;
/