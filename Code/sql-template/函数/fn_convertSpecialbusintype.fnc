create or replace function fn_convertSpecialbusintype(
                                v_typeCode    in varchar2)
 /**
  *���� ����ҵ��������ѡת���ɱ���ֵ
  */
  return varchar2 as
  v_idx              Number;--�ָ�����λ��
  v_str              varchar2(500);--��ȡ��ת��ǰ��ֵ
  v_convert_str      varchar2(500);--��ȡ��ת�����ֵ
  v_strs_last        varchar2(500):= v_typeCode;--ʣ����ַ���
  v_convert_typeCode varchar2(256) default '';--����ת������ַ���
begin
  if v_typeCode is null then
      return '';
  end if;
  loop
    v_idx := instr(v_strs_last, ',');
    if v_idx = 0 then
      v_str       := substr(v_strs_last, 1);
      v_strs_last := substr(v_strs_last, v_idx + 1);
    else
      v_str       := substr(v_strs_last, 1, v_idx - 1);
      v_strs_last := substr(v_strs_last, v_idx + 1);
    end if;
    
    v_convert_str :=
    (case when v_str ='1'
              then '28'--������ƺ���(����ʽ�)
         when v_str ='2'
              then '22'--��������
         when v_str ='3'
              then '23'--˽ļ���������˽ļ���⻯��
         when v_str ='4'
              then '1'--�ʲ�֤ȯ��
         when v_str ='5'
              then '2'--˽ļ��ȨͶ������(PE)
         when v_str ='6'
              then '3'--���𻯷��ز�����(REITS)
         when v_str ='7'
              then '4'--���о����������(QDII)
         when v_str ='8'
              then '5'--��ҵ���
         when v_str ='9'
              then '6'--��������
         when v_str ='A'
              then '98'--����Ͷ������
         when v_str ='B'
              then '9'--������ת����
         when v_str ='C'
              then '24'--���ز�����
         when v_str ='D'
              then '25'--�����Դ����
         when v_str ='E'
              then '8'--��������
         when v_str ='F'
              then '10'--��������
         when v_str ='G'
              then '26'--֤�ź���
         when v_str ='H'
              then '99'--����
         when v_str ='J'
              then '27'--׼�ʲ�֤ȯ��
         else v_str end);

    if v_convert_typeCode is null then
      v_convert_typeCode := v_convert_str;
    else
      v_convert_typeCode := v_convert_typeCode ||','|| v_convert_str;
    end if;
    
    exit when v_idx = 0;
  end loop;
      return v_convert_typeCode;
   EXCEPTION
    WHEN OTHERS THEN
    return '';
end fn_convertSpecialbusintype;
/
