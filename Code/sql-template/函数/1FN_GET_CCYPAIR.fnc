CREATE OR REPLACE FUNCTION FN_GET_CCYPAIR(initCcy in VARCHAR2, --外币
                                          changeCcy in VARCHAR2, --目标币种
                                          quoteMonth in VARCHAR2)   --汇率日期 格式: YYYY-MM-DD
RETURN Number AS

 VS_CCY_PRIORITY TBASE_CCYCODE.L_PRIORITY%TYPE;       --初始优先级
 VS_CNY_PRIORITY TBASE_CCYCODE.L_PRIORITY%TYPE;       --目标币种优先级
 VS_CCYPAIR_Quoteunit TBASE_CCYPAIR.l_Quoteunit%TYPE; --货币对报价单位
 VS_QUOTE_MID TBASE_QUOTE_HIS.F_MID%TYPE;             --货币对汇率中间价
 VS_CCY_PAIR TBASE_QUOTE_HIS.c_ccypair%TYPE;          --货币对
 VS_QUOTE_DATE DATE;                                  --汇率日期
 VS_CCYPAIR NUMBER(18,8);                             --汇率
BEGIN
 IF initCcy = changeCcy THEN
   RETURN 1;
 END IF;
 IF quoteMonth='' OR quoteMonth = NULL THEN
    select TRUNC(SYSDATE) into VS_QUOTE_DATE from dual;
 else
   select to_date(quoteMonth, 'YYYY-MM-DD') into VS_QUOTE_DATE from dual;
 END IF;

  --1.获取外币和目标币种优先级
 SELECT L_PRIORITY INTO VS_CCY_PRIORITY FROM TBASE_CCYCODE t WHERE t.c_ccy=initCcy;
 SELECT L_PRIORITY INTO VS_CNY_PRIORITY FROM TBASE_CCYCODE t WHERE t.c_ccy=changeCcy;
  --2.判断外币和目标币种优先级
  IF VS_CCY_PRIORITY > VS_CNY_PRIORITY THEN
         VS_CCY_PAIR := initCcy||'/'||changeCcy;
  ELSE
        VS_CCY_PAIR :=changeCcy||'/'||initCcy;
  END IF;
  --3.获取货币对汇率信息 和货币对
  select MID INTO VS_QUOTE_MID from (
  SELECT F_MID MID  FROM TBASE_QUOTE_HIS q WHERE q.c_ccypair=VS_CCY_PAIR and q.c_status='1' 
  and to_date(q.c_quotedate,'YYYYMMDD') <= VS_QUOTE_DATE order by to_date(q.c_quotedate,'YYYYMMDD') desc
  ) where  rownum = 1 ;

  SELECT l_Quoteunit INTO VS_CCYPAIR_Quoteunit  FROM TBASE_CCYPAIR WHERE c_ccypair=VS_CCY_PAIR;

  --4.汇率 =  货币对汇率  / 报价单位
  VS_CCYPAIR := VS_QUOTE_MID/VS_CCYPAIR_Quoteunit;

  RETURN VS_CCYPAIR;
END FN_GET_CCYPAIR;
/
