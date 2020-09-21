CREATE OR REPLACE FUNCTION FN_GET_CCYAMT(initCcy in VARCHAR2, --外币
                                          changeCcy in VARCHAR2, --目标币种
                                          quoteMonth in VARCHAR2, --汇率日期 格式: YYYY-MM-DD
                                          amount In Number) --外币金额
RETURN Number AS

 CCYAMT NUMBER(25,8);                                 --目标币种金额
 VS_CCY_PRIORITY TBASE_CCYCODE.L_PRIORITY%TYPE;       --初始优先级
 VS_CNY_PRIORITY TBASE_CCYCODE.L_PRIORITY%TYPE;       --目标币种优先级
 VS_CCYPAIR NUMBER(18,8);                             --汇率
BEGIN
  --1.获取外币和目标币种优先级
 SELECT L_PRIORITY INTO VS_CCY_PRIORITY FROM TBASE_CCYCODE t WHERE t.c_ccy=initCcy;
 SELECT L_PRIORITY INTO VS_CNY_PRIORITY FROM TBASE_CCYCODE t WHERE t.c_ccy=changeCcy;
  
  --2.获取货币对汇率信息
  VS_CCYPAIR := FN_GET_CCYPAIR(initCcy,changeCcy,quoteMonth);

  --3.外币>目标币种优先级 目标币种 =  外币 * 货币对汇率
  --外币<目标币种先级  目标币种 =  外币 / 货币对汇率
  
  IF VS_CCY_PRIORITY > VS_CNY_PRIORITY THEN
     CCYAMT:= amount * VS_CCYPAIR;
  ELSE
     CCYAMT:= amount / VS_CCYPAIR;
  END IF;

  RETURN CCYAMT;
END FN_GET_CCYAMT;
/
