CREATE OR REPLACE FUNCTION fn_check_flowautoconfig(in_configid IN VARCHAR2,--主键编码
in_basedate IN VARCHAR2,-- 基准日期
in_iscycle IN VARCHAR2,--是否循环
in_cyclefreq IN VARCHAR2,-- 循环频率 正整数
in_cycleunit IN VARCHAR2 --循环单位 0日1月
) RETURN varchar2 IS
out_value varchar2(2) :=0; -- 返回权限 0 无权限 1 有权限
vnum number; -- 临时数量
BEGIN
     -- 待阅任务 通知岗位 权限校验
     if in_configid is not null and out_value <> '1' then
       if in_iscycle <> '1' then
         if to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd') = to_date(in_basedate,'yyyy-mm-dd') then
           out_value:='1';
         end if;
       end if;
       if in_iscycle = '1' and in_cyclefreq is not null and in_cycleunit is not null and to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd') >= to_date(in_basedate,'yyyy-mm-dd') then
         --循环按照天数
         if in_cycleunit='0' then
           vnum:= to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd') - to_date(in_basedate,'yyyy-mm-dd');
           if mod(vnum,in_cyclefreq) = 0 then
             out_value:='1';
           end if;
         end if;
         --循环按照月份
         if in_cycleunit='1' then
           --如果今天和基准日期是同一天
           if to_char(last_day(sysdate), 'dd') < to_char(to_date(in_basedate,'yyyy-mm-dd'),'dd') then
             --如果基准天数超过本月最后一天，取本月最后一天
             if to_char(sysdate,'dd') = to_char(last_day(sysdate), 'dd') then
               vnum:=ceil(months_between(to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd'),to_date(in_basedate,'yyyy-mm-dd')));
               if mod(vnum,in_cyclefreq) = 0 then
                 out_value:='1';
               end if;
             end if;
           end if;
           --如果基准天数未超过本月最后一天，取本月基准天数
           if to_char(last_day(sysdate), 'dd') >= to_char(to_date(in_basedate,'yyyy-mm-dd'),'dd') then
             if to_char(sysdate,'dd') = to_char(to_date(in_basedate,'yyyy-mm-dd'),'dd') then
               vnum:=months_between(to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd'),to_date(in_basedate,'yyyy-mm-dd'));
               if mod(vnum,in_cyclefreq) = 0 then
                 out_value:='1';
               end if;
             end if;
           end if;
         end if;
       end if;
     end if;
  RETURN out_value;
EXCEPTION
  WHEN OTHERS THEN
  RETURN '0';
END fn_check_flowautoconfig;
/
