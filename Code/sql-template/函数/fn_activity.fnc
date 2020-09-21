create or replace function fn_activity(v_projectcode varchar2, v_projectphase varchar2)
return varchar2--返回类型
as
projectSchedule varchar2(100);
resultnum number(10,2);
begin
  if v_projectphase = '02' or v_projectphase = '03' or v_projectphase = '04' or v_projectphase = '05' then
    select (select ja.activity_name_ 
            from JBPM4_TASK ja, tflowinfo t
            where t.c_projectcode = v_projectcode
            and ja.execution_id_ = t.process_instanceid
            and t.process_instanceid like 'ProjectCheck_%'
			and rownum=1) into projectSchedule from dual;
  elsif v_projectphase = '31' then
    select count(1) into resultnum
            from  tflowinfo t,trepay_info tr
            where t.c_projectcode = v_projectcode
            and t.process_instanceid like 'busexpenses%'
            and t.c_flowstatus = '1' and tr.process_instanceid = t.process_instanceid and tr.c_type in ('20001','22151');
    if resultnum > 0 then
      projectSchedule := '部分资金落地';
    else
      projectSchedule := '已批待投';
    end if;
  else
    projectSchedule := '';
  end if;
  return projectSchedule;
end fn_activity;
/