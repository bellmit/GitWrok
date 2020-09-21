create or replace function fc_IsHoliday(in_date       in date, --����
                                        in_calendarid in varchar2, --����/�������� Ĭ��CNY
                                        in_isExchange in varchar2) --�Ƿ��������
 return boolean as
  /*******************************************************************************
    20180412 addby hulei  �ж������Ƿ�Ϊ����
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
