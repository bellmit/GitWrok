update tsys_parameter t
   set t.PARAM_DESC = '0Ĭ��ԭ����Ȩ�޿��ƣ����̣�,01������Ȩ�޿��ƣ���Ŀ�������ڲ��ſ��Կ�����Ŀ��,02����Ŀ���Ա����,03��01��02����ģʽ���,04����ֻ��Ͷ�ʾ���A��Ͷ�ʾ���B�����������̷��������ڲ��ŵ��쵼�ڵ����ܲ鿴'
   where t.param_code = 'ProjectAuthorityControlMode';