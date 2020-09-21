CREATE OR REPLACE FUNCTION FN_GET_CCYPAIR(initCcy in VARCHAR2, --���
                                          changeCcy in VARCHAR2, --Ŀ�����
                                          quoteMonth in VARCHAR2)   --�������� ��ʽ: YYYY-MM-DD
RETURN Number AS

 VS_CCY_PRIORITY TBASE_CCYCODE.L_PRIORITY%TYPE;       --��ʼ���ȼ�
 VS_CNY_PRIORITY TBASE_CCYCODE.L_PRIORITY%TYPE;       --Ŀ��������ȼ�
 VS_CCYPAIR_Quoteunit TBASE_CCYPAIR.l_Quoteunit%TYPE; --���ҶԱ��۵�λ
 VS_QUOTE_MID TBASE_QUOTE_HIS.F_MID%TYPE;             --���ҶԻ����м��
 VS_CCY_PAIR TBASE_QUOTE_HIS.c_ccypair%TYPE;          --���Ҷ�
 VS_QUOTE_DATE DATE;                                  --��������
 VS_CCYPAIR NUMBER(18,8);                             --����
BEGIN
 IF initCcy = changeCcy THEN
   RETURN 1;
 END IF;
 IF quoteMonth='' OR quoteMonth = NULL THEN
    select TRUNC(SYSDATE) into VS_QUOTE_DATE from dual;
 else
   select to_date(quoteMonth, 'YYYY-MM-DD') into VS_QUOTE_DATE from dual;
 END IF;

  --1.��ȡ��Һ�Ŀ��������ȼ�
 SELECT L_PRIORITY INTO VS_CCY_PRIORITY FROM TBASE_CCYCODE t WHERE t.c_ccy=initCcy;
 SELECT L_PRIORITY INTO VS_CNY_PRIORITY FROM TBASE_CCYCODE t WHERE t.c_ccy=changeCcy;
  --2.�ж���Һ�Ŀ��������ȼ�
  IF VS_CCY_PRIORITY > VS_CNY_PRIORITY THEN
         VS_CCY_PAIR := initCcy||'/'||changeCcy;
  ELSE
        VS_CCY_PAIR :=changeCcy||'/'||initCcy;
  END IF;
  --3.��ȡ���ҶԻ�����Ϣ �ͻ��Ҷ�
  select MID INTO VS_QUOTE_MID from (
  SELECT F_MID MID  FROM TBASE_QUOTE_HIS q WHERE q.c_ccypair=VS_CCY_PAIR and q.c_status='1' 
  and to_date(q.c_quotedate,'YYYYMMDD') <= VS_QUOTE_DATE order by to_date(q.c_quotedate,'YYYYMMDD') desc
  ) where  rownum = 1 ;

  SELECT l_Quoteunit INTO VS_CCYPAIR_Quoteunit  FROM TBASE_CCYPAIR WHERE c_ccypair=VS_CCY_PAIR;

  --4.���� =  ���ҶԻ���  / ���۵�λ
  VS_CCYPAIR := VS_QUOTE_MID/VS_CCYPAIR_Quoteunit;

  RETURN VS_CCYPAIR;
END FN_GET_CCYPAIR;
/
