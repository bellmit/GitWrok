create or replace function fn_getNextWorkday(in_date       in date, --ָ��ʱ��
                                             in_calendarid in varchar2, --����/�������� Ĭ��CNY
                                             in_days       number, --ָ�����ں�ڼ���������
                                             in_isExchange in varchar2) --�Ƿ��������
 return varchar2 is
  /*******************************************************************************
    20180412 addby hulei  ��ȡ��һ���򼸸������յ����ڣ��ַ������ͣ�
  *******************************************************************************/
  nextWorkDay  varchar(10); --��һ��������
  v_date       date;
  holidaytypes varchar2(30); --�������� 1 ��Ȼ���� 2 �������� 3����������
  l_days       number(4); --������պ��¸�������֮��������
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
