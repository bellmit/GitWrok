declare
begin

if not fc_IsDataExists('select count(*) from jbpm4_ext_servicereg where UUID = ''223807843dff4210815783e05eb033d3''') then 
    insert into jbpm4_ext_servicereg (UUID, CLASSID, SERVICEID, SERVICENAME, DESCIPTION, EXT_EXECUTOR_, IS_POST_, RESPONSE_HANDLER_, CONNECT_TIMEOUT_, SO_TIMEOUT_)
  values ('223807843dff4210815783e05eb033d3', 'spring', 'arrivalManager.endProcess', '到账数据导入流程结束服务', null, null, 'Y', null, null, null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in where UUID = ''049d28b6d1eb414aafa6f7f2e572120b''') then 
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
  values ('049d28b6d1eb414aafa6f7f2e572120b', '223807843dff4210815783e05eb033d3', '流程发起人', '3', 'String', null, '#{starter}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in where UUID = ''695b500a20b5439db12914c6fd434c08''') then 
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
  values ('695b500a20b5439db12914c6fd434c08', '223807843dff4210815783e05eb033d3', '审批结果', '0', 'String', null, null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in where UUID = ''fab3c05aaba34b2bbcd2b5ba044010d7''') then 
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
  values ('fab3c05aaba34b2bbcd2b5ba044010d7', '223807843dff4210815783e05eb033d3', '流程实例号', '1', 'String', null, '#{processInstanceId}');
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_service_para_in where UUID = ''b8df0e9e02834b9eba065560e7b232b4''') then 
    insert into jbpm4_ext_service_para_in (UUID, SERVICE_DBID, PARAM_NAME, PARAM_CODE, PARAM_TYPE, DESCIPTION, DEFAULT_VALUE)
  values ('b8df0e9e02834b9eba065560e7b232b4', '223807843dff4210815783e05eb033d3', '当前流程处理人', '2', 'String', null, '#{currentUserId}');
end if;

end;
/
