CREATE OR REPLACE FUNCTION fn_getnextday_jj(in_cycle     IN VARCHAR2, --��������
                                            in_begindate   in varchar2, --��ʼ����
                                            in_enddate     in varchar2,  --��ֹ����
																						in_fenddate    IN DATE --�״ν�Ϣ��
                                            ) RETURN varchar2 IS
  /*******************************************************************************
    20180727  add by taolj20522: ��aim������ֲfn_getnextday���������ڽ�ݼ������ɻ���ƻ�����δ�޸��߼���
  *******************************************************************************/
  out_firstday varchar2(8);
  v_date       date; --���ת�����ڸ�ʽ�����ڼ���
  v_o_date     date; --�������ڸ�ʽ�����ڼ���
BEGIN
  v_date := to_date(in_begindate, 'yyyymmdd');
  --Ĭ��ֵ
  v_o_date := v_date;
  --1.��Ȼ��
  if in_cycle = '01' then
    v_o_date := v_date;
  end if;
  --2.��Ȼ��
  if in_cycle = '02' OR in_cycle = '1' then
    v_o_date := last_day(v_date);
  end if;
  --3.��Ȼ��
  if in_cycle = '03' OR in_cycle = '3' THEN	
		v_date :=	add_months(v_date-1, 1);
    v_o_date := add_months(trunc(v_date, 'Q') - 1, 3);
		IF to_char(in_fenddate,'dd')<to_char(v_o_date,'dd') THEN
		   v_o_date := to_date(to_char(v_o_date,'yyyymm') ||to_char(in_fenddate,'dd'),'yyyymmdd');
		END IF;
  end if;
  --4.��Ȼ����
  if in_cycle = '04' OR in_cycle = '6' THEN	
		v_date :=	v_date-1;
    v_o_date :=case
      when v_date < add_months(trunc(v_date, 'year'), 5) then
       add_months(trunc(v_date, 'year'), 6) - 1
      WHEN v_date < add_months(trunc(v_date, 'year'), 11) THEN
       add_months(trunc(v_date, 'year'), 12) - 1
			ELSE 
			 add_months(trunc(v_date, 'year'), 18) - 1
    end;
		IF to_char(in_fenddate,'dd')<to_char(v_o_date,'dd') THEN
		   v_o_date := to_date(to_char(v_o_date,'yyyymm') ||to_char(in_fenddate,'dd'),'yyyymmdd');
		END IF;
  end if;
  --5.��Ȼ��
  if in_cycle = '05' OR in_cycle = '12' THEN
		v_date :=	v_date-1;
		v_o_date :=case
      when v_date < add_months(trunc(v_date, 'year'), 11) then
       add_months(trunc(v_date, 'year'), 12) - 1
			ELSE 
			 add_months(trunc(v_date, 'year'), 24) - 1
    end;
		IF to_char(in_fenddate,'dd')<to_char(v_o_date,'dd') THEN
		   v_o_date := to_date(to_char(v_o_date,'yyyymm') ||to_char(in_fenddate,'dd'),'yyyymmdd');
		END IF;
  end if;
  --6.������
  if in_cycle = '06' then
    v_o_date := add_months(v_date, 1)-1;
  end if;
  --7.���м�
  if in_cycle = '07' then
    v_o_date := add_months(v_date, 3)-1;
  end if;
  --8.���а���
  if in_cycle = '08' then
    v_o_date := add_months(v_date, 6)-1;
  end if;
  --9.������
  if in_cycle = '09' then
    v_o_date := add_months(v_date, 12)-1;
  end if;
  --10.��������
  if in_cycle = '10' OR in_cycle = '0' then
    v_o_date := to_date(in_enddate, 'yyyymmdd');
  end if;
  --11.����
  if in_cycle = '11' then
    --��ȷ��
    v_o_date := v_date;
  end if;
	  --12.ÿ����
  if in_cycle = '24'  then
    v_o_date := add_months(v_date, 24)-1;
  end if;
	  --13.ÿ����
  if in_cycle = '36'  then
    v_o_date := add_months(v_date, 36)-1;
  end if;

  out_firstday := to_char(v_o_date, 'yyyymmdd');
  RETURN out_firstday;
END fn_getnextday_jj;
 
/
