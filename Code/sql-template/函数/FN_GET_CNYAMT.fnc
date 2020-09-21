CREATE OR REPLACE FUNCTION FN_GET_CNYAMT(ccy in VARCHAR2, --��ұ���
                                                 amount In Number)  --��ҽ��
RETURN Number AS
/***********************************************************************
����˵������ҽ��ת��������ҽ��
************************************************************************/
 CNYAMOUNT NUMBER(25,8);
 VS_CCY_PRIORITY TBASE_CCYCODE.L_PRIORITY%TYPE;--������ȼ�
 VS_CNY_PRIORITY TBASE_CCYCODE.L_PRIORITY%TYPE;--��������ȼ�
 VS_CCYPAIR_Quoteunit TBASE_CCYPAIR.l_Quoteunit%TYPE;--���ҶԱ��۵�λ
 VS_QUOTE_MID TBASE_QUOTE.F_MID%TYPE;     --���ҶԻ����м��
 VS_CCY_PAIR TBASE_QUOTE.c_ccypair%TYPE;--���Ҷ�
BEGIN
 IF ccy='CNY' THEN
    RETURN amount;
 END IF;

  --1.��ȡ��Һ���������ȼ�
 SELECT L_PRIORITY INTO VS_CCY_PRIORITY FROM TBASE_CCYCODE t WHERE t.c_ccy=ccy;
 SELECT L_PRIORITY INTO VS_CNY_PRIORITY FROM TBASE_CCYCODE t WHERE t.c_ccy='CNY';
  --2.�ж���Һ�����ҵ����ȼ�
  IF VS_CCY_PRIORITY > VS_CNY_PRIORITY THEN
         VS_CCY_PAIR := ccy||'/'||'CNY';
  ELSE
        VS_CCY_PAIR :='CNY'||'/'||ccy;
  END IF;
  --3.��ȡ���ҶԻ�����Ϣ �ͻ��Ҷ�
  SELECT F_MID  INTO VS_QUOTE_MID FROM TBASE_QUOTE WHERE c_ccypair=VS_CCY_PAIR;
  SELECT l_Quoteunit INTO VS_CCYPAIR_Quoteunit  FROM TBASE_CCYPAIR WHERE c_ccypair=VS_CCY_PAIR;
  --4.������ȼ�>��������ȼ� ����ҽ�� =  ��ҽ�� * (���ҶԻ���  / ���۵�λ)
  --������ȼ�<��������ȼ�  ����ҽ�� =  ��ҽ�� /( ���ҶԻ���  / ���۵�λ)
  IF VS_CCY_PRIORITY > VS_CNY_PRIORITY THEN
     CNYAMOUNT:= amount*(VS_QUOTE_MID/VS_CCYPAIR_Quoteunit);
  ELSE
     CNYAMOUNT:= amount/(VS_QUOTE_MID/VS_CCYPAIR_Quoteunit);
  END IF;


  RETURN CNYAMOUNT;
END FN_GET_CNYAMT;
/
