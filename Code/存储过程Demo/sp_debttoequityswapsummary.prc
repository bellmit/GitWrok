create or replace procedure sp_debttoequityswapsummary (out_cursor   out xpp.t_detail)   is
       str_sql             clob;
       str_sql2     clob;
       str_sql3     clob;
       v_sql            clob;
       v_addmonth       date; --月份
       v_date          date; --当前月份
       v_charaddmonth   varchar(100);
       --获取游标

       begin
       str_sql := 'delete from tnyzzg_temporary';
       execute immediate str_sql;
       select to_char(add_months(to_date('2017-01-01', 'yyyy-MM-dd'),3),'yyyy-MM-dd') into v_charaddmonth  from dual;

          while  add_months(to_date(v_charaddmonth,'yyyy-MM-dd'),-3) < sysdate  --给循环变量赋初始值
          loop

        str_sql2 := 'insert into tnyzzg_temporary
          select
              '''||to_char(to_date(v_charaddmonth,'yyyy-MM-dd')-1,'yyyy-MM-dd')||''' addmonth,
              ''中国农业银行'' bankname,
              (select to_char(nvl(sum(t.f_framework_Money)/10000,0),''FM999,999,999,999,990.00'')  from tcustomer_info t where  t.d_framework_date < to_date('''||v_charaddmonth||''',''yyyy-MM-dd'') )frameworkmoney,
            --累计签约企业集团家数
              (select count(*) 累计签约企业集团家数 from tcustomer_info t where  t.d_framework_date < to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')) companycount,
            --累计签约金额
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
            --累计签约合同的项目数
              (select count(distinct t.c_projectcode) 累计签约合同的项目数
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
            --涉及企业集团数
              (select  count (distinct(tpa.c_framagreesigncompany)) 涉及企业集团数
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
            --涉及企业数
               (select count(distinct ti.c_customercode) 涉及企业数
                   from tcustomer_info ti,
                   tcustomer_role_relation trr,
                   tinvest_contract tic
                   where ti.c_customercode = trr.c_customercode
                   and trr.c_relationcode = tic.c_rivalid
                   and tic.d_signdate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd''))ralatecompanynumbera,
            --累计落地金额
               (select to_char(nvl(sum(t.f_occur_balance),0)/10000,''FM999,999,999,999,990.00'') 累计落地金额
                 from tinvest_fundvary t, tproject_info tp, tproject_info_amc tpa
                where tp.c_projectcode = tpa.c_projectcode(+)
                  and t.c_projectcode = tp.c_projectcode
                  and tp.c_projectnature <> ''99''
                  and t.c_checkflag = ''4''
                  and t.c_busiflag in (''20001'', ''22151'')
                  and t.d_occurdate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd''))occurbalance,
            --累计落地项目数
              ( select count(distinct t.c_projectcode) 累计落地项目数
               from tinvest_fundvary t, tproject_info tp, tproject_info_amc tpa
                where tp.c_projectcode = tpa.c_projectcode(+)
                  and t.c_projectcode = tp.c_projectcode
                  and tp.c_projectnature <> ''99''
                  and t.c_checkflag = ''4''
                  and t.c_busiflag in (''20001'', ''22151'')
                  and t.d_occurdate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd'') )totallandprojectnumber,
            --涉及企业集团数
               (select count(distinct t.c_projectcode) 涉及企业集团数
                  from tinvest_fundvary t,tproject_info tp,tproject_info_amc tpa
                  where tp.c_projectcode = tpa.c_projectcode(+)
                  and t.c_projectcode = tp.c_projectcode
                  and tp.c_projectnature <> ''99''
                  and t.c_checkflag = ''4''
                  and t.c_busiflag in (''20001'', ''22151'')
                  and tpa.c_framagreesigncompany is not null
                  and t.d_occurdate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')) relategroupnumberb,
            --涉及企业数
               (select count( distinct(ic.c_rivalid))
                from tinvest_contract ic,
              (select tf.c_projectcode,min(tf.d_occurdate) as  d_occurdate from tinvest_fundvary tf
               where tf.c_checkflag = ''4'' and (tf.c_busiflag = ''20001'' or tf.c_busiflag = ''22151'') group by tf.c_projectcode    ) t
               where t.c_projectcode = ic.c_projectcode
                and ic.d_signdate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')) ralatecompanynumberb,
            --实施机构派驻了董事、监事、高管等的债转股项目数
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
            --推进混合所有制改革的项目数
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

            --总计
            (select to_char(nvl(sum(tpr.f_money),0)/10000,''FM999,999,999,999,990.00'')总计
             from TPROJECT_RESERVEINVESTMENT tpr,
                  tcustomer_info ti,
                  tcustomer_role_relation trr
                  where ti.c_customercode = trr.c_customercode
                  and trr.c_relationcode = tpr.c_bankname
                  and tpr.d_enddate <to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')  ) totala,
            --本行下调存款准备金率释放资金的投入金额
               (select to_char(nvl(sum(tpr.f_money),0)/10000,''FM999,999,999,999,990.00'') 本行释放资金投入金额
               from TPROJECT_RESERVEINVESTMENT tpr,
                    tcustomer_info ti,
                    tcustomer_role_relation trr
                    where ti.c_customercode = trr.c_customercode
                    and trr.c_relationcode = tpr.c_bankname
                     and tpr.d_enddate <to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')
                    and ti.c_customername = ''农业银行'' ) thisbankdowngrademoney,
            --其他商业银行下调存款准备金率释放资金的投入金额
               (select to_char(nvl(sum(tpr.f_money),0)/10000,''FM999,999,999,999,990.00'') 其他银行释放资金金额
               from TPROJECT_RESERVEINVESTMENT tpr,
                    tcustomer_info ti,
                    tcustomer_role_relation trr
                    where ti.c_customercode = trr.c_customercode
                    and trr.c_relationcode = tpr.c_bankname
                     and tpr.d_enddate <to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')
                    and ti.c_customername != ''农业银行'') otherbankdowngrademoney,
            --总计
                 (select to_char(nvl(sum(tc.f_money),0)/10000,''FM999,999,999,999,990.00'') 总计 from TINVEST_CAPITALINVESTMENT tc where  tc.d_enddate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')) totalb ,
            --本行所属实施机构资本金投入金额
                 (select to_char(nvl(sum(tc.f_money),0)/10000,''FM999,999,999,999,990.00'')  本行实施机构投入金额
                        from TINVEST_CAPITALINVESTMENT tc
                        where tc.c_sourcesfunds = ''0''
                        and tc.d_enddate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')
                        ) moneya,
            --发债融资
                (select to_char(nvl(sum(tc.f_money),0)/10000,''FM999,999,999,999,990.00'')  发债融资
                        from TINVEST_CAPITALINVESTMENT tc
                        where tc.c_sourcesfunds = ''1''
                        and tc.d_enddate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')) moneyb,
            --私募股权基金资金
            (select  to_char(nvl(sum(tc.f_money),0)/10000,''FM999,999,999,999,990.00'')  私募股权基金资金
                        from TINVEST_CAPITALINVESTMENT tc
                        where tc.c_sourcesfunds = ''2''
                        and tc.d_enddate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')) moneyc,
            --保险资金
            (select  to_char(nvl(sum(tc.f_money),0)/10000,''FM999,999,999,999,990.00'') 保险资金
                        from TINVEST_CAPITALINVESTMENT tc
                        where tc.c_sourcesfunds = ''3''
                        and tc.d_enddate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')) moneyd,
            --理财资金
            (select  to_char(nvl(sum(tc.f_money),0)/10000,''FM999,999,999,999,990.00'') 理财资金
                        from TINVEST_CAPITALINVESTMENT tc
                        where tc.c_sourcesfunds = ''4''
                        and tc.d_enddate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')) moneye,
            --专项投资计划资金
            (select  to_char(nvl(sum(tc.f_money),0)/10000,''FM999,999,999,999,990.00'') 专项投资计划资金
                        from TINVEST_CAPITALINVESTMENT tc
                        where tc.c_sourcesfunds = ''5''
                        and tc.d_enddate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd'')) moneyf,
            --合格投资者资金
            (select to_char(nvl(sum(tc.f_money),0)/10000,''FM999,999,999,999,990.00'') 合格投资者资金
                        from TINVEST_CAPITALINVESTMENT tc
                        where tc.c_sourcesfunds = ''6''
                        and tc.d_enddate < to_date('''||v_charaddmonth||''',''yyyy-MM-dd''))moneyg,
            --其他
            (select to_char(nvl(sum(tc.f_money),0)/10000,''FM999,999,999,999,990.00'') 其他
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
