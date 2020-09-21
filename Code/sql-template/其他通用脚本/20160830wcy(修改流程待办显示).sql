delete from tsysinfo_msg_pro t where t.c_msgid = '2_new';
insert into tsysinfo_msg_pro
  (C_MSGID,
   C_MSGTYPE,
   C_ISPROJECTROLE,
   C_ISUSE,
   C_SQL,
   MEMO,
   C_MSGNAME,
   C_MSGURL,
   TRANS_CODE,
   SUB_TRANS_CODE,
   C_ISSENDEMAIL,
   C_SYSTEM)
values
  ('2_new',
   '0',
   '0',
   '1',
   'select ''admin'' || trunc((cast(t.create_ as date) - to_date(''1970-01-01'', ''yyyy-mm-dd'') - 8 / 24) * 86400000 + 100 + 900 * dbms_random.value) || t.assignee_ msgid, ''流程提醒'' msgtitle, ''task'' msgtype, ''流程审批'' msgtypename, ''admin'' senduser, ''系统管理员'' sendusername, tu.user_id userid, (cast(t.create_ as date) - to_date(''1970-01-01'', ''yyyy-mm-dd'') - 8 / 24) * 86400000 senddate, ''{"PROC_NAME": "'' || replace(replace(t.PROC_NAME_, ''\'', ''\\''), ''"'', ''\"'') || ''", "PROC_TITLE": "'' || replace(replace(t.NAME_, ''\'', ''\\''), ''"'', ''\"'') || ''", "ACTIVITY_NAME": "'' || replace(replace(t.ACTIVITY_NAME_, ''\'', ''\\''), ''"'', ''\"'') || decode(t.CLASS_, ''V'', ''-投票主持人'', '''') || ''","CLIENT_NAME":"'' || (select to_char(wm_concat(distinct nvl(su.user_name, ''''))) from tsys_user su, JBPM4_PARTICIPATION pc where su.user_id = pc.userid_ and pc.agent_userid_ = tu.user_id and pc.task_ = t.ID_ and (pc.type_ = ''owner'' or pc.type_ = ''candidate'')) || ''",'' || ''"coorStatus":"'' || decode(t.TASKSTATUS, ''coordinate-completed'', '''' || b.param_value || ''已反馈'', ''coordinate'', decode(a.coordinate_status, 0, '''' || b.param_value || ''未反馈'', '''' || b.param_value || ''部分反馈'')) || ''",'' || ''"starter":"'' ||replace(replace(t.STARTER_NAME_, ''\'', ''\\''), ''"'', ''\"'') || ''",'' || ''"startOrg":"''||replace(replace(t.ORG_NAME_, ''\'', ''\\''), ''"'', ''\"'') || ''"}'' msgcontent'||
   ', ''/bpm/client/mw/open?taskId='' || t.id_ tcmpurl, '''' msgstatus, t.priority_ priority, decode(mc.l_lasttime, null, ''1'', to_char(sign(nvl(mc.l_lasttime, 0) - (sysdate - cast(t.create_ as date)) * 24))) isoverdue from jbpm4_ext_todo_task t, tflow_expire_config mc, tsys_user tu, (select tf.process_instanceid, tp.c_projectname, tp.c_projectshortname, tl.c_subproname from tflowinfo tf, tproject_info tp, tproject_level tl where tf.c_projectcode = tp.c_projectcode(+) and tf.c_subprojectcode = tl.c_subprocode(+)) tv, (select t1.ID_, sum(decode(t2.taskstatus, ''completed'', 1,''agentcomplete'',1,0)) coordinate_status from jbpm4_ext_todo_task t1, jbpm4_ext_hist_task t2 where t1.ID_ = t2.parent_task_(+) and t1.TASKSTATUS = ''coordinate'' group by t1.ID_) a, tsys_parameter b where t.ID_ = a.id_(+) and b.param_code = ''coordinatorBtnName'' and (t.ASSIGNEE_ = tu.user_id or exists (select aa.DBID_ from JBPM4_PARTICIPATION aa where aa.TASK_ = t.ID_ and aa.TYPE_ = ''owner'' and aa.AGENT_USERID_ = tu.user_id) or (t.ASSIGNEE_ is null) and (exists (select bb.DBID_ from JBPM4_PARTICIPATION bb where bb.TASK_ = t.ID_ and bb.TYPE_ = ''candidate'' and (bb.USERID_ = tu.user_id or bb.AGENT_USERID_ = tu.user_id or bb.GROUPID_ in (select g.grouptype || '':'' || g.groupcode from vuser_group g where g.usercode = tu.user_id))))) and t.EXECUTION_ID_ = tv.process_instanceid(+) and exists (select 1 from tsys_parameter t where t.param_code = ''coordinatingTaskRemindType'' and t.param_value = ''0'' and nvl(t.TASKSTATUS, ''0'') <> ''coordinate'' or not exists (select 1 from tsys_parameter t where t.param_code = ''coordinatingTaskRemindType'' and t.param_value = ''0'')) and exists (select 1 from tsys_parameter t where t.param_code = ''votingTaskRemindType'' and t.param_value = ''0'' and nvl(t.TASKSTATUS, ''0'') <> ''voting'' or not exists (select 1 from tsys_parameter t where t.param_code = ''votingTaskRemindType'' and t.param_value = ''0'')) and tu.user_id = nvl(''@receive_user_id'', tu.user_id) and t.processid = mc.c_processkey(+) and t.activity_name_ = nvl(mc.c_processnodeid(+), t.activity_name_) and not exists (select 1 from tsys_role_user t where t.role_code = ''home_scree_notic'' and t.user_code = nvl(''@receive_user_id'', '''') and exists (select 1 from tsys_parameter tp where tp.param_code = ''companyCode'' and tp.param_value = ''zh''))',
   '流程待办',
   '流程待办',
   null,
   null,
   null,
   null,
   null);
