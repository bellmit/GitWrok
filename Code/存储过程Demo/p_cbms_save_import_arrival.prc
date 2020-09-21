create or replace procedure p_cbms_save_import_arrival(
  in_batchNo    in  number,     --入参，批次号
  in_user       in  varchar2,   --入参，用户
  in_pattern    in  varchar2,   --入参，导入模式 传入多个状态值，将状态下的数据导入业务表
  out_code      out number,    --返回执行结果：0成功/-1异常/-2参数错误
  out_msg       out varchar2     --返回结果说明
  ) is
/*
  英文名称：p_cbms_save_import_arrival
  中文名称：cbms中间表数据插入到真实表
  功能：配合通用导入功能，实现AMC个性化插入数据
  创建者：liuan
  描述：
  日期：
  版本：20180426 add by liuan:完成excel导入中的通用功能导入
 */


begin
  begin
    out_code := 0;
    out_msg  := '[p_cbms_save_import_arrival-amc导入保存]执行成功!';
  end;

  p_cbms_save_arrival(in_batchNo,in_user,in_pattern,out_code,out_msg);
  if  out_code = -1 then
    RAISE_APPLICATION_ERROR(-20001, out_msg);
  end if;
  commit;

   --5\系统自动异常捕捉
   exception
      when others then
      rollback;
      out_code := -1;
      out_msg  := '[p_cbms_save_import_arrival]异常错误:' || chr(13) || SQLERRM;
end p_cbms_save_import_arrival;
/