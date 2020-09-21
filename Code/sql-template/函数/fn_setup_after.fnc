create or replace function fn_setup_after(in_projectcode     in varchar2, --��Ŀ���
                                           in_subprojectcode in varchar2, --����Ŀ���
                                           in_fundcode       in varchar2, --��Ʒ���
                                           in_userid         in varchar2, --����Ա
                                           in_flag           in varchar2  --��������
                                           ) return varchar2 as
  /**********************************************************
    ��  �ƣ�������Ԥ�������������������������Ĳ���
    ��  �ܣ�
    ��  �Σ�
    ��  �Σ�return_code  ���ش���
    �����ߣ�xusen
    ��  ����
    ��  �ڣ�2018-01-11
    ��  �ģ�
    ��  ����
  ***********************************************************/
  v_collectcount      number := 0; --ļ����ǵ�0����Ŀ��Ϣ
  v_relatedcount      number := 0; --��������Ŀ��Ϣ
  v_companycode       varchar2(32) default 'hs'; --��˾����
  v_deployModel       varchar2(10) default 'S01'; --����ģʽ
  v_setupdate         varchar2(15); --ļ�����������
  v_prestopdate       varchar2(15); --��ĿԤ�Ƶ�������
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

    if (v_collectcount = 0 and v_relatedcount != 0) then  --ļ�����������ݣ���������������
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
    elsif (v_collectcount != 0 and v_relatedcount = 0) then --ļ����������ݣ�����������������
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
    elsif (v_collectcount != 0 and v_relatedcount != 0) then --ļ����������ݣ���������������
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
   dbms_output.put_line( '[fn_setup_after-���������]���쳣����:' || chr(13) ||
                       sqlerrm);
   return - 1;
   rollback;
end fn_setup_after;

/
