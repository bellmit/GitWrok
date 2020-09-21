create or replace function fn_amc_getworkdate(currentdate in date)
  RETURN DATE as
  wordate      date;
  v_c_workflog varchar2(2);

begin
  -- �жϵ�ǰ�����Ƿ�Ϊ������
  -- 1�����Ϊ�����գ��򲻽��м��㣬ֱ�ӷ��� curentdate
  -- 2�����Ϊ�����գ��������ڽ����ĵ�һ��������
  select (select t.l_workflag from topenday t where t.d_date = currentdate)
    into v_c_workflog
    from dual;
  if v_c_workflog is null then
    wordate := null;
  elsif v_c_workflog = '1' then
    wordate := currentdate;
  elsif v_c_workflog = '0' then
    -- �����¸�������
    wordate := fn_amc_getworkdate(currentdate + 1);
  end if;
  return wordate;
end fn_amc_getworkdate;
/
