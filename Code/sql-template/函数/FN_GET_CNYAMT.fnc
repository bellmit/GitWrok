CREATE OR REPLACE FUNCTION FN_GET_CNYAMT(ccy in VARCHAR2, --外币币种
                                                 amount In Number)  --外币金额
RETURN Number AS
/***********************************************************************
功能说明：外币金额转换成人民币金额
************************************************************************/
 CNYAMOUNT NUMBER(25,8);
 VS_CCY_PRIORITY TBASE_CCYCODE.L_PRIORITY%TYPE;--外币优先级
 VS_CNY_PRIORITY TBASE_CCYCODE.L_PRIORITY%TYPE;--人民币优先级
 VS_CCYPAIR_Quoteunit TBASE_CCYPAIR.l_Quoteunit%TYPE;--货币对报价单位
 VS_QUOTE_MID TBASE_QUOTE.F_MID%TYPE;     --货币对汇率中间价
 VS_CCY_PAIR TBASE_QUOTE.c_ccypair%TYPE;--货币对
BEGIN
 IF ccy='CNY' THEN
    RETURN amount;
 END IF;

  --1.获取外币和人民币优先级
 SELECT L_PRIORITY INTO VS_CCY_PRIORITY FROM TBASE_CCYCODE t WHERE t.c_ccy=ccy;
 SELECT L_PRIORITY INTO VS_CNY_PRIORITY FROM TBASE_CCYCODE t WHERE t.c_ccy='CNY';
  --2.判断外币和人民币的优先级
  IF VS_CCY_PRIORITY > VS_CNY_PRIORITY THEN
         VS_CCY_PAIR := ccy||'/'||'CNY';
  ELSE
        VS_CCY_PAIR :='CNY'||'/'||ccy;
  END IF;
  --3.获取货币对汇率信息 和货币对
  SELECT F_MID  INTO VS_QUOTE_MID FROM TBASE_QUOTE WHERE c_ccypair=VS_CCY_PAIR;
  SELECT l_Quoteunit INTO VS_CCYPAIR_Quoteunit  FROM TBASE_CCYPAIR WHERE c_ccypair=VS_CCY_PAIR;
  --4.外币优先级>人民币优先级 人民币金额 =  外币金额 * (货币对汇率  / 报价单位)
  --外币优先级<人民币优先级  人民币金额 =  外币金额 /( 货币对汇率  / 报价单位)
  IF VS_CCY_PRIORITY > VS_CNY_PRIORITY THEN
     CNYAMOUNT:= amount*(VS_QUOTE_MID/VS_CCYPAIR_Quoteunit);
  ELSE
     CNYAMOUNT:= amount/(VS_QUOTE_MID/VS_CCYPAIR_Quoteunit);
  END IF;


  RETURN CNYAMOUNT;
END FN_GET_CNYAMT;
/
