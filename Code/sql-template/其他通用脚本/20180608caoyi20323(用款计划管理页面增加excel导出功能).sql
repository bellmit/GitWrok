declare
begin
if not fc_IsExistsSysSubTrans('payplan','exceldown') then
	insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
	values ('payplan', 'exceldown', 'Excel����', '', '', '', '1', '', '', '', '');
end if;

if not fc_IsExistsSysUserRight('payplan','exceldown','admin','0','0','1') then
	insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('payplan', 'exceldown', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('payplan','exceldown','admin','0','0','2') then
	insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('payplan', 'exceldown', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsDataExists('select count(*) from tgeneral_export_config t where t.c_modelcode=''payplanlist''') then
	insert into TGENERAL_EXPORT_CONFIG (C_MODELCODE, C_FILENAME, C_FILETYPE, C_FIELDJSON, C_QUERY_SQL)
	values ('payplanlist', '�ʽ�ƻ���ͼ', '0', '[{"text":"�ƻ����","code":"lid"},{"text":"����ʱ��","code":"createdate"},{"text":"��Ŀ���","code":"projectcode"},{"text":"��Ŀ����","code":"projectname"},{"text":"��ͬ����","code":"contractname"},{"text":"��������","code":"depcode"},{"text":"�ϱ���Ա","code":"enteruser"},{"text":"��Ŀ����","code":"projectnature"},{"text":"ҵ������","code":"fdcbusitype"},{"text":"�Ƿ�����Ŀ","code":"issingle"},{"text":"��Ŀ��ģ","code":"debtamount"},{"text":"����ƽ̨","code":"investplatform"},{"text":"��Ŀ�׶�","code":"projectphase"},{"text":"��������","code":"paytype_show"},{"text":"Ԥ���ÿ�����","code":"enddate"},{"text":"Ԥ���ÿ���","code":"preoccurbalance"},{"text":"���ÿ���","code":"occurbalance"},{"text":"����޸�ʱ��","code":"updatedate"},{"text":"�ƻ�״̬","code":"status_show"}]', 'select t.l_id lid,
       t.c_projectcode projectcode,
       ti.c_projectname projectname,
       tc.c_contractname contractname,
       getdictitemnamebyitemcode(''AMC_PAYMENT_TYPE'', t.c_paytype) paytype_show,
       getdictitemnamebyitemcode(''PAY_PLAN_STATUS'', t.c_status) status_show,
       to_char(t.d_end, ''yyyy-MM-dd'') enddate,
       to_char(t.f_preoccur_balance,''FM999,999,999,999,990.00'') preoccurbalance,
       to_char(t.f_occur_balance,''FM999,999,999,999,990.00'') occurbalance,
       to_char(t.d_create, ''yyyy-MM-dd hh24:mi:ss'') createdate,
       to_char(t.d_update, ''yyyy-MM-dd hh24:mi:ss'') updatedate,
       (select concatstr(t.org_name) from tsys_organization t where t.org_id in (select * from table(split_msg(ti.c_depcode,'','')))) depcode,
       getdictitemnamebyitemcode(''PM_PROJECT_NATURE'', ti.c_projectnature) projectnature,
       getdictitemnamebyitemcode(''PM_BUSINESSCATE'', ti.c_fdcbusitype) fdcbusitype,
       (select case when count(*) < 3 then ''��'' else ''��'' end from tasset_loanaccount_info tli where tli.c_projectcode = t.c_projectcode) issingle,
       to_char(ti.f_debtamount,''FM999,999,999,999,990.00'') debtamount,
       sf_getusername(ti.c_enteruser) enteruser,
       (select tti.c_projectname from tproject_info tti where tti.c_projectcode = ti.c_extfield10) investplatform,
       getdictitemnamebyitemcode(''PROJECT_PHASE'', ti.c_projectphase) projectphase
  from tpay_plan t
  left outer join tproject_info ti
    on t.c_projectcode = ti.c_projectcode
  left outer join tinvest_contract tc
    on t.c_contractid = tc.c_contractid
 where 1 = 1
<#if projectcode != "">
   and ti.c_projectcode like ''%''||:projectcode||''%'' 
</#if>
<#if projectname != "">
   and ti.c_projectname like ''%''||:projectname||''%'' 
</#if>
<#if enteruser != "">
   and sf_getusername(ti.c_enteruser) like ''%''||:enteruser||''%'' 
</#if>
<#if projectnature != "">
   and ti.c_projectnature = :projectnature
</#if>
<#if projectphase != "">
   and ti.c_projectphase = :projectphase
</#if>
<#if paytype != "">
   and t.c_paytype = :paytype
</#if>
<#if beginDate != "">
   and t.d_end >= to_date(:beginDate, ''yyyy-MM-dd'')
</#if>
<#if endDate != "">
   and t.d_end <= to_date(:endDate, ''yyyy-MM-dd'')
</#if>
<#if status != "">
   and t.c_status = :status
</#if>
   and ((exists (select 1 from vuser_projectrightlist up where up.user_id = :userid and up.c_projectcode = t.c_projectcode))
    or (exists (select 1 from tsys_role_user t where t.role_code = ''9996'' and t.user_code = :userid )))
 order by t.d_end desc, t.l_id desc');
end if;
end;
/
