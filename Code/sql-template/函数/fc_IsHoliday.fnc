create or replace function fc_IsHoliday(in_date       in date, --日期
                                        in_calendarid in varchar2, --币种/金融中心 默认CNY
                                        in_isExchange in varchar2) --是否金融中心
 return boolean as
  /*******************************************************************************
    20180412 addby hulei  判断日期是否为假日
  *******************************************************************************/
  iExists      pls_integer;
  holidaytypes varchar2(30);
begin
  if (in_isExchange is null or in_isExchange = '0') then
    holidaytypes := '1,2';
  else
    holidaytypes := '1,2,3';
  end if;
  select count(*)
    into iExists
    from tbase_holiday t
   where to_char(t.d_holidate, 'yyyy-mm-dd') =
         to_char(in_date, 'yyyy-mm-dd')
     and t.c_calendarid = nvl(in_calendarid, 'CNY')
     and instr2(',' || holidaytypes || ',', ',' || t.c_holidaytype || ',') > 0;
  return case when iExists > 0 then true else false end;
end fc_IsHoliday;
/
