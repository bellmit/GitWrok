create or replace function fn_getNextWorkday(in_date       in date, --指定时间
                                             in_calendarid in varchar2, --币种/金融中心 默认CNY
                                             in_days       number, --指定日期后第几个工作日
                                             in_isExchange in varchar2) --是否金融中心
 return varchar2 is
  /*******************************************************************************
    20180412 addby hulei  获取下一个或几个工作日的日期（字符串类型）
  *******************************************************************************/
  nextWorkDay  varchar(10); --下一个工作日
  v_date       date;
  holidaytypes varchar2(30); --假日类型 1 自然假日 2 法定假日 3交易所假日
  l_days       number(4); --计算假日和下个工作日之间差的天数
begin
  l_days := nvl(in_days, 1);
  v_date := in_date;
  if (in_isExchange is null or in_isExchange = '0') then
    holidaytypes := '1,2';
  else
    holidaytypes := '1,2,3';
  end if;
  for rs in (select t.d_holidate
               from tbase_holiday t
              where t.d_holidate > = in_date
                and t.c_calendarid = nvl(in_calendarid, 'CNY')
                and instr2(',' || holidaytypes || ',',
                           ',' || t.c_holidaytype || ',') > 0
              order by t.d_holidate) loop
    if rs.d_holidate = v_date then
      null;
    else
      if ((rs.d_holidate - v_date - 1) < l_days) then
        l_days := l_days - (rs.d_holidate - v_date - 1);
        v_date := rs.d_holidate;
      else
        exit;
      end if;
    end if;
  end loop;
  nextWorkDay := to_char(v_date + l_days, 'yyyy-mm-dd');
  return nextWorkDay;
end fn_getNextWorkday;
/
