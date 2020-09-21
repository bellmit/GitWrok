CREATE OR REPLACE FUNCTION fn_getnextday_jj(in_cycle     IN VARCHAR2, --结算周期
                                            in_begindate   in varchar2, --开始日期
                                            in_enddate     in varchar2,  --截止日期
																						in_fenddate    IN DATE --首次结息日
                                            ) RETURN varchar2 IS
  /*******************************************************************************
    20180727  add by taolj20522: 从aim工程移植fn_getnextday函数，用于借据计算生成还款计划（暂未修改逻辑）
  *******************************************************************************/
  out_firstday varchar2(8);
  v_date       date; --入参转换日期格式、便于计算
  v_o_date     date; --出参日期格式、便于计算
BEGIN
  v_date := to_date(in_begindate, 'yyyymmdd');
  --默认值
  v_o_date := v_date;
  --1.自然日
  if in_cycle = '01' then
    v_o_date := v_date;
  end if;
  --2.自然月
  if in_cycle = '02' OR in_cycle = '1' then
    v_o_date := last_day(v_date);
  end if;
  --3.自然季
  if in_cycle = '03' OR in_cycle = '3' THEN	
		v_date :=	add_months(v_date-1, 1);
    v_o_date := add_months(trunc(v_date, 'Q') - 1, 3);
		IF to_char(in_fenddate,'dd')<to_char(v_o_date,'dd') THEN
		   v_o_date := to_date(to_char(v_o_date,'yyyymm') ||to_char(in_fenddate,'dd'),'yyyymmdd');
		END IF;
  end if;
  --4.自然半年
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
  --5.自然年
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
  --6.信托月
  if in_cycle = '06' then
    v_o_date := add_months(v_date, 1)-1;
  end if;
  --7.信托季
  if in_cycle = '07' then
    v_o_date := add_months(v_date, 3)-1;
  end if;
  --8.信托半年
  if in_cycle = '08' then
    v_o_date := add_months(v_date, 6)-1;
  end if;
  --9.信托年
  if in_cycle = '09' then
    v_o_date := add_months(v_date, 12)-1;
  end if;
  --10.信托期满
  if in_cycle = '10' OR in_cycle = '0' then
    v_o_date := to_date(in_enddate, 'yyyymmdd');
  end if;
  --11.按次
  if in_cycle = '11' then
    --待确认
    v_o_date := v_date;
  end if;
	  --12.每两年
  if in_cycle = '24'  then
    v_o_date := add_months(v_date, 24)-1;
  end if;
	  --13.每三年
  if in_cycle = '36'  then
    v_o_date := add_months(v_date, 36)-1;
  end if;

  out_firstday := to_char(v_o_date, 'yyyymmdd');
  RETURN out_firstday;
END fn_getnextday_jj;
 
/
