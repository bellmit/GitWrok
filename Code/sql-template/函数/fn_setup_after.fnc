create or replace function fn_setup_after(in_projectcode     in varchar2, --项目编号
                                           in_subprojectcode in varchar2, --子项目编号
                                           in_fundcode       in varchar2, --产品编号
                                           in_userid         in varchar2, --操作员
                                           in_flag           in varchar2  --操作动作
                                           ) return varchar2 as
  /**********************************************************
    名  称：成立、预成立、成立变更、成立撤销后的操作
    功  能：
    入  参：
    出  参：return_code  返回代码
    创建者：xusen
    描  述：
    日  期：2018-01-11
    修  改：
    版  本：
  ***********************************************************/
  v_collectcount      number := 0; --募集表非第0期项目信息
  v_relatedcount      number := 0; --关联方项目信息
  v_companycode       varchar2(32) default 'hs'; --公司代码
  v_deployModel       varchar2(10) default 'S01'; --部署模式
  v_setupdate         varchar2(15); --募集表成立日期
  v_prestopdate       varchar2(15); --项目预计到期日期
begin
  select nvl(t.param_value,'S01') into v_deployModel from tsys_parameter t where t.param_code='deployModel';
  select nvl(t.param_value,'hs') into v_companycode from tsys_parameter t where t.param_code='companyCode';
  if v_companycode = 'aj' then
    select count(1) into v_collectcount from tproject_collect t
      where t.c_projectcode = in_projectcode
        and t.c_subprojectcode not in (select tl.c_subprocode from tproject_level tl where tl.c_subprocode = t.c_subprojectcode and tl.c_level = '0');
    select count(1) into v_relatedcount from trelated_party_info t, tproject_info ti
      where t.c_certificateno = ti.c_fundcode and ti.c_projectcode = in_projectcode;
    select t.c_prestopdate into v_prestopdate from tproject_info t where t.c_projectcode = in_projectcode;

    if (v_collectcount = 0 and v_relatedcount != 0) then  --募集表不存在数据，关联方存在数据
      delete from trelated_party_info_dtl td
       where td.l_id in
             (select t.l_id
                from trelated_party_info t, tproject_info ti
               where t.c_certificateno = ti.c_fundcode
                 and ti.c_projectcode = in_projectcode);
      delete from trelated_party_info t
       where t.c_certificateno in
             (select ti.c_fundcode
                from tproject_info ti
               where ti.c_projectcode = in_projectcode);
    elsif (v_collectcount != 0 and v_relatedcount = 0) then --募集表存在数据，关联方不存在数据
      select to_char(min(t.d_setupdate),'yyyy-mm-dd') into v_setupdate from tproject_collect t
        where t.c_projectcode = in_projectcode
          and t.c_subprojectcode not in (select tl.c_subprocode from tproject_level tl where tl.c_subprocode = t.c_subprojectcode and tl.c_level = '0');
      insert into trelated_party_info t
        (t.l_id,
         t.c_relatedname,
         t.c_relatedtype,
         t.c_relatedstatus,
         t.c_certificatetype,
         t.c_certificateno,
         t.c_relatedrelation,
         t.c_enterman,
         t.d_entertime)
        select seq_trelated_party_info.nextval,
               ti.c_projectname,
               '0',
               '03',
               'D',
               ti.c_fundcode,
               '9',
               in_userid,
               sysdate from tproject_info ti where ti.c_projectcode = in_projectcode;
      insert into trelated_party_info_dtl td
        (td.l_dtlid,
         td.l_id,
         td.c_effectivestartdate,
         td.c_effectiveenddate)
        select seq_trelated_party_info_dtl.nextval,
               t.l_id,
               v_setupdate,
               v_prestopdate
          from trelated_party_info t, tproject_info ti
         where t.c_certificateno = ti.c_fundcode
           and ti.c_projectcode = in_projectcode;
    elsif (v_collectcount != 0 and v_relatedcount != 0) then --募集表存在数据，关联方存在数据
      select to_char(min(t.d_setupdate),'yyyy-mm-dd') into v_setupdate from tproject_collect t
        where t.c_projectcode = in_projectcode
          and t.c_subprojectcode not in (select tl.c_subprocode from tproject_level tl where tl.c_subprocode = t.c_subprojectcode and tl.c_level = '0');
      update trelated_party_info_dtl td
         set td.c_effectivestartdate = v_setupdate,
             td.c_effectiveenddate   = v_prestopdate
       where td.l_id in
             (select t.l_id
                from trelated_party_info t, tproject_info ti
               where t.c_certificateno = ti.c_fundcode
                 and ti.c_projectcode = in_projectcode);
    end if;
  end if;
  return 0;
exception
  when others then
   dbms_output.put_line( '[fn_setup_after-成立后操作]报异常错误:' || chr(13) ||
                       sqlerrm);
   return - 1;
   rollback;
end fn_setup_after;

/
