create or replace procedure p_cbms_save_import_arrival(
  in_batchNo    in  number,     --��Σ����κ�
  in_user       in  varchar2,   --��Σ��û�
  in_pattern    in  varchar2,   --��Σ�����ģʽ ������״ֵ̬����״̬�µ����ݵ���ҵ���
  out_code      out number,    --����ִ�н����0�ɹ�/-1�쳣/-2��������
  out_msg       out varchar2     --���ؽ��˵��
  ) is
/*
  Ӣ�����ƣ�p_cbms_save_import_arrival
  �������ƣ�cbms�м�����ݲ��뵽��ʵ��
  ���ܣ����ͨ�õ��빦�ܣ�ʵ��AMC���Ի���������
  �����ߣ�liuan
  ������
  ���ڣ�
  �汾��20180426 add by liuan:���excel�����е�ͨ�ù��ܵ���
 */


begin
  begin
    out_code := 0;
    out_msg  := '[p_cbms_save_import_arrival-amc���뱣��]ִ�гɹ�!';
  end;

  p_cbms_save_arrival(in_batchNo,in_user,in_pattern,out_code,out_msg);
  if  out_code = -1 then
    RAISE_APPLICATION_ERROR(-20001, out_msg);
  end if;
  commit;

   --5\ϵͳ�Զ��쳣��׽
   exception
      when others then
      rollback;
      out_code := -1;
      out_msg  := '[p_cbms_save_import_arrival]�쳣����:' || chr(13) || SQLERRM;
end p_cbms_save_import_arrival;
/