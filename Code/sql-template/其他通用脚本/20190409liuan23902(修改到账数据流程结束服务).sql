declare
begin

if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg where UUID = ''f84ef2d87399400c95f8a48c97fcdc1a''') then 
    insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
  values ('f84ef2d87399400c95f8a48c97fcdc1a', 'spring', 'arrivalManager.endEditProcess', '修改到账数据流程结束服务', null, null, 'Y', null, null, null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in where UUID = ''60ad3f03d4cd4600a17eec8b906be307''') then 
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
  values ('60ad3f03d4cd4600a17eec8b906be307', 'f84ef2d87399400c95f8a48c97fcdc1a', '审批结果', '0', 'String', null, null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in where UUID = ''99e030c573dc43b3bbbe70f3eb403822''') then 
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
  values ('99e030c573dc43b3bbbe70f3eb403822', 'f84ef2d87399400c95f8a48c97fcdc1a', '流程实例号', '1', 'String', null, '#{processInstanceId}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in where UUID = ''92c29a516e8b46608cb74b78219ef98a''') then 
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
  values ('92c29a516e8b46608cb74b78219ef98a', 'f84ef2d87399400c95f8a48c97fcdc1a', '当前流程处理人', '2', 'String', null, '#{currentUserId}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in where UUID = ''e2545ce17deb47718b4bf2802072c830''') then 
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
  values ('e2545ce17deb47718b4bf2802072c830', 'f84ef2d87399400c95f8a48c97fcdc1a', '流程发起人', '3', 'String', null, '#{starter}');
end if;

end;
/