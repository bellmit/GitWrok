create or replace procedure p_generate_bizcalendardata(c_userid       in varchar2, -- �������û�����
                                                       c_moduletype   in varchar2, --ģ�����ͣ�0�Ҹ�������1��Ŀ��������ʾһ��ҵ�������Ĵ��࣬�����ļ����������͵�
                                                       c_bizdatestart in varchar2, --��ʼ����
                                                       c_bizdateend   in varchar2, --��������
                                                       c_projctcode   in varchar2, --��Ŀ����
                                                       c_org          in varchar2, --����
                                                       c_isleader     in varchar2, --�Ƿ��쵼��ͼ��isleader:1�ǣ�0��
                                                       c_logtype      in varchar2, --��־����
                                                       c_orgname      in varchar2, --��������
                                                       c_projectname       in varchar2, --��Ŀ����
                                                       c_customername      in varchar2, --�ͻ�����
                                                       c_operatorusername  in varchar2, --������                                                                                                                                                                 
													   c_operatoruserid  in varchar2, --������id  
                                                       rCursor        out xpp.t_detail) as

  v_sql         varchar2(32000);
  v_temp_sql    varchar2(30000);
  v_moduletype  varchar2(64);
  v_functype    varchar2(64);
  v_bizurl      varchar2(255);
  v_c_biztitle  varchar2(64);
  v_onclicktype varchar2(1);
  v_tabtitle    varchar2(200);
  v_classname   varchar2(100);
  v_order       number;
  v_type        varchar2(64);
  cursor sqlcur(cmoduletype varchar2) is
    select t.c_bizsql,
           t.c_moduletype,
           t.c_functype,
           t.c_bizurl,
           t.c_biztitle,
           t.c_onclicktype,
           t.c_tabtitle,
           t.c_classname,
           t.l_order,
		   t.c_type
      from tsysinfo_bizcalendar_config t
     where t.c_moduletype = cmoduletype
       and t.c_isuse = '1'
     order by t.l_order;

begin
  begin
    v_sql      := '';
    v_temp_sql := '';
  end;
  begin
    open sqlcur('' || c_moduletype || '');
    loop
      fetch sqlcur
        into v_temp_sql,
             v_moduletype,
             v_functype,
             v_bizurl,
             v_c_biztitle,
             v_onclicktype,
             v_tabtitle,
             v_classname,
             v_order,
			 v_type;
      exit when sqlcur%notfound;
      if v_onclicktype = '1' then
        v_temp_sql := ' select t.bizdate bizdate,''' || v_functype ||
                        ''' functype,''' || v_moduletype ||
                        ''' moduletype,t.bizurl bizurl, t.biztitle biztitle,''' || v_onclicktype ||
                        ''' onclicktype,t.tabtitle tabtitle,t.classname classname,  t.biznum biznum from (' ||
                        v_temp_sql || ') t';
        else
          v_temp_sql := ' select t.bizdate bizdate,''' || v_functype ||
                        ''' functype,''' || v_moduletype ||
                        ''' moduletype,t.bizurl bizurl, ''' || v_c_biztitle ||
                        ''' biztitle,''' || v_onclicktype ||
                        ''' onclicktype,''' || v_tabtitle || ''' tabtitle,''' ||
                        v_classname || ''' classname,  t.biznum biznum from (' ||
                        v_temp_sql || ') t';
      end if;

      v_temp_sql := ' insert into tsysinfo_bizcalendar_tmpdata(' || v_temp_sql || ') ';
      --ʱЧԤ����                    
      if v_type='2' then 
	      execute immediate v_temp_sql
          using c_isleader, c_orgname, c_projectname, c_userid, c_userid, c_logtype, c_logtype, c_projectname, c_projectname, c_bizdatestart, c_bizdateend;
      --�տ�ƻ�������
	    elsif v_type='3' then 
	      execute immediate v_temp_sql
          using c_isleader, c_orgname, c_projectname, c_userid, c_userid, c_logtype, c_logtype, c_projectname, c_projectname, c_bizdatestart, c_bizdateend;
      --������־��          
      else
        execute immediate v_temp_sql
          using c_isleader, c_orgname, c_projectname, c_customername, c_operatoruserid, c_operatorusername, c_userid, c_isleader, c_userid, c_isleader, c_userid, c_logtype, c_logtype, c_orgname, c_orgname, c_projectname, c_projectname, c_customername, c_customername, c_operatoruserid, c_operatoruserid, c_operatorusername, c_operatorusername, c_bizdatestart, c_bizdateend;
      end if;
    end loop;
    close sqlcur;
    v_sql := 'select rownum bizid,to_char(tt.c_bizdate,''yyyy-MM-dd'') bizdate,tt.c_functype functype,tt.c_moduletype moduletype,tt.c_bizurl bizurl,tt.c_biztitle biztitle,tt.c_onclicktype onclicktype,tt.c_tabtitle tabtitle,tt.c_classname classname,tt.l_biznum biznum from tsysinfo_bizcalendar_tmpdata tt order by tt.c_bizdate';
    open rCursor for v_sql;
  end;

end p_generate_bizcalendardata;
/
