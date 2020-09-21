CREATE OR REPLACE FUNCTION FN_GET_CCYAMT(initCcy in VARCHAR2, --���
                                          changeCcy in VARCHAR2, --Ŀ�����
                                          quoteMonth in VARCHAR2, --�������� ��ʽ: YYYY-MM-DD
                                          amount In Number) --��ҽ��
RETURN Number AS

 CCYAMT NUMBER(25,8);                                 --Ŀ����ֽ��
 VS_CCY_PRIORITY TBASE_CCYCODE.L_PRIORITY%TYPE;       --��ʼ���ȼ�
 VS_CNY_PRIORITY TBASE_CCYCODE.L_PRIORITY%TYPE;       --Ŀ��������ȼ�
 VS_CCYPAIR NUMBER(18,8);                             --����
BEGIN
  --1.��ȡ��Һ�Ŀ��������ȼ�
 SELECT L_PRIORITY INTO VS_CCY_PRIORITY FROM TBASE_CCYCODE t WHERE t.c_ccy=initCcy;
 SELECT L_PRIORITY INTO VS_CNY_PRIORITY FROM TBASE_CCYCODE t WHERE t.c_ccy=changeCcy;
  
  --2.��ȡ���ҶԻ�����Ϣ
  VS_CCYPAIR := FN_GET_CCYPAIR(initCcy,changeCcy,quoteMonth);

  --3.���>Ŀ��������ȼ� Ŀ����� =  ��� * ���ҶԻ���
  --���<Ŀ������ȼ�  Ŀ����� =  ��� / ���ҶԻ���
  
  IF VS_CCY_PRIORITY > VS_CNY_PRIORITY THEN
     CCYAMT:= amount * VS_CCYPAIR;
  ELSE
     CCYAMT:= amount / VS_CCYPAIR;
  END IF;

  RETURN CCYAMT;
END FN_GET_CCYAMT;
/
