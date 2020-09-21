create or replace function fn_amc_getworkdate(currentdate in date)
  RETURN DATE as
  wordate      date;
  v_c_workflog varchar2(2);

begin
  -- 判断当前日期是否为工作日
  -- 1、如果为工作日，则不进行计算，直接返回 curentdate
  -- 2、如果为假期日，则计算假期结束的第一个工作日
  select (select t.l_workflag from topenday t where t.d_date = currentdate)
    into v_c_workflog
    from dual;
  if v_c_workflog is null then
    wordate := null;
  elsif v_c_workflog = '1' then
    wordate := currentdate;
  elsif v_c_workflog = '0' then
    -- 计算下个工作日
    wordate := fn_amc_getworkdate(currentdate + 1);
  end if;
  return wordate;
end fn_amc_getworkdate;
/
