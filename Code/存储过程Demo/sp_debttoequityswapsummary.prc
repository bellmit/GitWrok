create or replace procedure sp_debttoequityswapsummary (out_cursor   out xpp.t_detail)   is
       str_sql             clob;
       str_sql2     clob;
       str_sql3     clob;
       v_sql            clob;
       v_addmonth       date; --�·�
       v_date          date; --��ǰ�·�
       v_charaddmonth   varchar(100);
       --��ȡ�α�

       begin
       str_sql := 'delete from tnyzzg_temporary';
       execute immediate str_sql;
       select to_char(add_months(to_date('2017-01-01', 'yyyy-MM-dd'),3),'yyyy-MM-dd') into v_charaddmonth  from dual;

          while  add_months(to_date(v_charaddmonth,'yyyy-MM-dd'),-3) < sysdate  --��ѭ����������ʼֵ
          loop

        str_sql2 := 'insert into tnyzzg_temporary
          select
              '''||to_char(to_date(v_charaddmonth,'yyyy-MM-dd')-1,'yyyy-MM-dd')||''' addmonth,
              ''�й�ũҵ����'' bankname,
              (select to_char(nvl(sum(t.f_framework_Money)/10000,0),''FM999,999,999,999,990.00'')  from tcustomer_info t where  t.d_framework_date < to_date('''||v_charaddmonth||''',''yyyy-MM-dd'') )frameworkmoney,
            --�ۼ�ǩԼ��ҵ���ż���
              (select count(*) �ۼ�ǩԼ��ҵ���ż��� from tcustomer_info t where  t.d_framework_date < to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')) companycount,
            --�ۼ�ǩԼ���
              (select to_char(nvl(sum(t.f_contractbalance),0)/10000,''FM999,999,999,999,990.00'')
                from tinvest_contract  t,
                     tproject_info     tp,
                     tproject_info_amc tpa,

                     tcustomer_info ci,
                     tcustomer_role_relation crr
               where tp.c_projectcode = tpa.c_projectcode(+)
                 and t.c_projectcode = tp.c_projectcode
                 and t.c_rivalid = crr.c_relationcode
                 and crr.c_customercode = ci.c_customercode
                 and t.d_signdate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd''))contractbalance,
            --�ۼ�ǩԼ��ͬ����Ŀ��
              (select count(distinct t.c_projectcode) �ۼ�ǩԼ��ͬ����Ŀ��
                 from tinvest_contract  t,
                     tproject_info     tp,
                     tproject_info_amc tpa,
                     tcustomer_info ci,
                     tcustomer_role_relation crr
               where tp.c_projectcode = tpa.c_projectcode(+)
                 and t.c_projectcode = tp.c_projectcode
                 and t.c_rivalid = crr.c_relationcode
                 and crr.c_customercode = ci.c_customercode
                 and t.d_signdate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd''))signcprojectnumber,
            --�漰��ҵ������
              (select  count (distinct(tpa.c_framagreesigncompany)) �漰��ҵ������
                 from tinvest_contract t,
                      tproject_info tp ,
                      tproject_info_amc tpa,
                      tcustomer_info ci,
                      tcustomer_role_relation crr
                  where tp.c_projectcode = tpa.c_projectcode(+)
                   and t.c_projectcode = tp.c_projectcode
                   and t.c_rivalid = crr.c_relationcode
                   and crr.c_customercode = ci.c_customercode
                   and t.d_signdate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd''))relategroupnumbera,
            --�漰��ҵ��
               (select count(distinct ti.c_customercode) �漰��ҵ��
                   from tcustomer_info ti,
                   tcustomer_role_relation trr,
                   tinvest_contract tic
                   where ti.c_customercode = trr.c_customercode
                   and trr.c_relationcode = tic.c_rivalid
                   and tic.d_signdate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd''))ralatecompanynumbera,
            --�ۼ���ؽ��
               (select to_char(nvl(sum(t.f_occur_balance),0)/10000,''FM999,999,999,999,990.00'') �ۼ���ؽ��
                 from tinvest_fundvary t, tproject_info tp, tproject_info_amc tpa
                where tp.c_projectcode = tpa.c_projectcode(+)
                  and t.c_projectcode = tp.c_projectcode
                  and tp.c_projectnature <> ''99''
                  and t.c_checkflag = ''4''
                  and t.c_busiflag in (''20001'', ''22151'')
                  and t.d_occurdate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd''))occurbalance,
            --�ۼ������Ŀ��
              ( select count(distinct t.c_projectcode) �ۼ������Ŀ��
               from tinvest_fundvary t, tproject_info tp, tproject_info_amc tpa
                where tp.c_projectcode = tpa.c_projectcode(+)
                  and t.c_projectcode = tp.c_projectcode
                  and tp.c_projectnature <> ''99''
                  and t.c_checkflag = ''4''
                  and t.c_busiflag in (''20001'', ''22151'')
                  and t.d_occurdate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd'') )totallandprojectnumber,
            --�漰��ҵ������
               (select count(distinct t.c_projectcode) �漰��ҵ������
                  from tinvest_fundvary t,tproject_info tp,tproject_info_amc tpa
                  where tp.c_projectcode = tpa.c_projectcode(+)
                  and t.c_projectcode = tp.c_projectcode
                  and tp.c_projectnature <> ''99''
                  and t.c_checkflag = ''4''
                  and t.c_busiflag in (''20001'', ''22151'')
                  and tpa.c_framagreesigncompany is not null
                  and t.d_occurdate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')) relategroupnumberb,
            --�漰��ҵ��
               (select count( distinct(ic.c_rivalid))
                from tinvest_contract ic,
              (select tf.c_projectcode,min(tf.d_occurdate) as  d_occurdate from tinvest_fundvary tf
               where tf.c_checkflag = ''4'' and (tf.c_busiflag = ''20001'' or tf.c_busiflag = ''22151'') group by tf.c_projectcode    ) t
               where t.c_projectcode = ic.c_projectcode
                and ic.d_signdate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')) ralatecompanynumberb,
            --ʵʩ������פ�˶��¡����¡��߹ܵȵ�ծת����Ŀ��
                ( select count(pia.c_projectcode)
          from tproject_info_amc pia,
               (select tf.c_projectcode, min(tf.d_occurdate) as d_occurdate
                  from tinvest_fundvary tf
                 where tf.c_checkflag = ''4''
                   and (tf.c_busiflag = ''20001'' or tf.c_busiflag = ''22151'')
                 group by tf.c_projectcode) p
         where pia.c_projectcode = p.c_projectcode
           and pia.c_need_supervisor = ''1''
           and p.d_occurdate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd'') ) isneedsupervisor,
            --�ƽ���������Ƹĸ����Ŀ��
                 (select count(pia.c_projectcode)
          from tproject_info_amc pia,
               (select tf.c_projectcode, min(tf.d_occurdate) as d_occurdate
                  from tinvest_fundvary tf
                 where tf.c_checkflag = ''4''
                   and (tf.c_busiflag = ''20001'' or tf.c_busiflag = ''22151'')
                 group by tf.c_projectcode) p
             where pia.c_projectcode = p.c_projectcode
              and pia.c_isadvanceownreform = ''1''
               and p.d_occurdate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')
                 ) mixedreformnumber,

            --�ܼ�
            (select to_char(nvl(sum(tpr.f_money),0)/10000,''FM999,999,999,999,990.00'')�ܼ�
             from TPROJECT_RESERVEINVESTMENT tpr,
                  tcustomer_info ti,
                  tcustomer_role_relation trr
                  where ti.c_customercode = trr.c_customercode
                  and trr.c_relationcode = tpr.c_bankname
                  and tpr.d_enddate <to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')  ) totala,
            --�����µ����׼�������ͷ��ʽ��Ͷ����
               (select to_char(nvl(sum(tpr.f_money),0)/10000,''FM999,999,999,999,990.00'') �����ͷ��ʽ�Ͷ����
               from TPROJECT_RESERVEINVESTMENT tpr,
                    tcustomer_info ti,
                    tcustomer_role_relation trr
                    where ti.c_customercode = trr.c_customercode
                    and trr.c_relationcode = tpr.c_bankname
                     and tpr.d_enddate <to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')
                    and ti.c_customername = ''ũҵ����'' ) thisbankdowngrademoney,
            --������ҵ�����µ����׼�������ͷ��ʽ��Ͷ����
               (select to_char(nvl(sum(tpr.f_money),0)/10000,''FM999,999,999,999,990.00'') ���������ͷ��ʽ���
               from TPROJECT_RESERVEINVESTMENT tpr,
                    tcustomer_info ti,
                    tcustomer_role_relation trr
                    where ti.c_customercode = trr.c_customercode
                    and trr.c_relationcode = tpr.c_bankname
                     and tpr.d_enddate <to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')
                    and ti.c_customername != ''ũҵ����'') otherbankdowngrademoney,
            --�ܼ�
                 (select to_char(nvl(sum(tc.f_money),0)/10000,''FM999,999,999,999,990.00'') �ܼ� from TINVEST_CAPITALINVESTMENT tc where  tc.d_enddate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')) totalb ,
            --��������ʵʩ�����ʱ���Ͷ����
                 (select to_char(nvl(sum(tc.f_money),0)/10000,''FM999,999,999,999,990.00'')  ����ʵʩ����Ͷ����
                        from TINVEST_CAPITALINVESTMENT tc
                        where tc.c_sourcesfunds = ''0''
                        and tc.d_enddate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')
                        ) moneya,
            --��ծ����
                (select to_char(nvl(sum(tc.f_money),0)/10000,''FM999,999,999,999,990.00'')  ��ծ����
                        from TINVEST_CAPITALINVESTMENT tc
                        where tc.c_sourcesfunds = ''1''
                        and tc.d_enddate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')) moneyb,
            --˽ļ��Ȩ�����ʽ�
            (select  to_char(nvl(sum(tc.f_money),0)/10000,''FM999,999,999,999,990.00'')  ˽ļ��Ȩ�����ʽ�
                        from TINVEST_CAPITALINVESTMENT tc
                        where tc.c_sourcesfunds = ''2''
                        and tc.d_enddate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')) moneyc,
            --�����ʽ�
            (select  to_char(nvl(sum(tc.f_money),0)/10000,''FM999,999,999,999,990.00'') �����ʽ�
                        from TINVEST_CAPITALINVESTMENT tc
                        where tc.c_sourcesfunds = ''3''
                        and tc.d_enddate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')) moneyd,
            --����ʽ�
            (select  to_char(nvl(sum(tc.f_money),0)/10000,''FM999,999,999,999,990.00'') ����ʽ�
                        from TINVEST_CAPITALINVESTMENT tc
                        where tc.c_sourcesfunds = ''4''
                        and tc.d_enddate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')) moneye,
            --ר��Ͷ�ʼƻ��ʽ�
            (select  to_char(nvl(sum(tc.f_money),0)/10000,''FM999,999,999,999,990.00'') ר��Ͷ�ʼƻ��ʽ�
                        from TINVEST_CAPITALINVESTMENT tc
                        where tc.c_sourcesfunds = ''5''
                        and tc.d_enddate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')) moneyf,
            --�ϸ�Ͷ�����ʽ�
            (select to_char(nvl(sum(tc.f_money),0)/10000,''FM999,999,999,999,990.00'') �ϸ�Ͷ�����ʽ�
                        from TINVEST_CAPITALINVESTMENT tc
                        where tc.c_sourcesfunds = ''6''
                        and tc.d_enddate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd''))moneyg,
            --����
            (select to_char(nvl(sum(tc.f_money),0)/10000,''FM999,999,999,999,990.00'') ����
                        from TINVEST_CAPITALINVESTMENT tc
                        where tc.c_sourcesfunds = ''7''
                        and tc.d_enddate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')) moneyh
           from dual';
        execute immediate str_sql2;
         commit;
           select to_char(add_months(to_date(v_charaddmonth,'yyyy-MM-dd'),3),'yyyy-MM-dd') into v_charaddmonth  from dual;
        end loop;
        v_sql := 'select * from tnyzzg_temporary order by addmonth';

        execute immediate v_sql;
      open out_cursor for v_sql ;

    end sp_debttoequityswapsummary;
/
