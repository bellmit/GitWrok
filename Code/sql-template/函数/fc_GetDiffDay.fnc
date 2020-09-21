create or replace function fc_GetDiffDay(bdate   IN DATE, --参数 开始日期
                                         edate   IN DATE, --参数 截止日期
                                         pattern IN integer -- 参数 计算模式,1 按实际天数计算,2 按每月30天计算
                                         ) return NUMBER as
  days    NUMBER;
  years   NUMBER;
  monthss NUMBER;
begin
  days := 0;
  if pattern = '1' then
    days := to_date(to_char(edate, 'yyyy-MM-dd'), 'yyyy-MM-dd') -
            to_date(to_char(bdate, 'yyyy-MM-dd'), 'yyyy-MM-dd');
  end if;
  if pattern = '2' then
    years   := extract(year from edate) - extract(year from bdate);
    monthss := extract(month from edate) - extract(month from bdate);
    days    := (extract(day from edate) - 1) -
               (extract(day from bdate) - 1);
    days    := 360 * years + 30 * monthss + days;
  end if;
  return days;
end;
/