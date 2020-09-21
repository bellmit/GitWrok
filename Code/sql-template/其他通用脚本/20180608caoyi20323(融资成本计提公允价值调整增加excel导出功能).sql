declare
begin
if not fc_IsExistsSysSubTrans('financingCostAccrual','exceldown') then
	insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
	values ('financingCostAccrual', 'exceldown', 'Excel导出', '', '', '', '1', '', '', '', '');
end if;

if not fc_IsExistsSysUserRight('financingCostAccrual','exceldown','admin','0','0','1') then
	insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('financingCostAccrual', 'exceldown', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('financingCostAccrual','exceldown','admin','0','0','2') then
	insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('financingCostAccrual', 'exceldown', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsDataExists('select count(*) from tgeneral_export_config t where t.c_modelcode=''financingCostAccrualList''') then
	insert into TGENERAL_EXPORT_CONFIG (C_MODELCODE, C_FILENAME, C_FILETYPE, C_FIELDJSON, C_QUERY_SQL)
	values ('financingCostAccrualList', '融资成本计提', '0', '[{"code":"projectName","text":"项目名称"},{"code":"contractName","text":"合同名称"},{"code":"firstPayDate","text":"首次计息日"},{"code":"lastAccrualDate","text":"上次计提日期"},{"code":"beginningBalance","text":"期初合同余额"},{"code":"endingBalance","text":"期末合同余额"},{"code":"contractRate","text":"合同利率"}]', 'select 
       to_char(ra.D_CALCDATE, ''yyyy-mm-dd'') lastAccrualDate,
       to_char(ir.D_FIRSTPAYDATE, ''yyyy-mm-dd'') firstPayDate,
       ic.C_CONTRACTNAME contractName,
       ic.F_CONTRACTRATE contractRate,
       to_char(ra.F_BEGIN_SCALE,''FM999,999,999,999,990.00'') beginningBalance,
       to_char(ra.F_BEGIN_SCALE + ra.F_ARRIVAL_SCALE - ra.F_REPAY_SCALE,''FM999,999,999,999,990.00'') endingBalance,
       pi.C_PROJECTNAME projectName
  from tinvest_contract ic
  left join tproject_info pi
    on pi.C_PROJECTCODE = ic.C_PROJECTCODE
  left join tinvest_rate ir
    on ir.C_CONTRACTID = ic.C_CONTRACTID
  left join (select r.* from (select t.C_CONTRACTID, t.D_CALCDATE, t.F_BEGIN_SCALE, t.F_ARRIVAL_SCALE, t.F_REPAY_SCALE, rank() over(partition by t.C_CONTRACTID order by t.D_CALCDATE desc) rank
                       from trepay_accrual t where t.c_type = ''2'' and t.C_STATUS = ''1'' and t.C_PARENTID is null) r where r.rank = 1) ra
    on ra.C_CONTRACTID = ic.C_CONTRACTID
 where 1 = 1
   and ic.C_INVESTPROP = ''2''
<#if projectName != "">   
   and pi.c_projectname like ''%''||:projectName||''%''
</#if>
<#if contractName != "">   
   and ic.c_contractname like ''%''||:contractName||''%''
</#if>
<#if contractState != "">   
   and ic.C_STOCK_STATE =  :contractState
</#if>   
   and ((exists (select 1 from vuser_projectrightlist up where up.user_id = :userid and up.c_projectcode = ic.c_projectcode))
    or (exists (select 1 from tsys_role_user t where t.role_code = ''9996'' and t.user_code = :userid ))) 
 order by ic.D_CREATETIME desc');
end if;


if not fc_IsExistsSysSubTrans('devalueAccrual','exceldown') then
	insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
	values ('devalueAccrual', 'exceldown', 'Excel导出', '', '', '', '1', '', '', '', '');
end if;

if not fc_IsExistsSysUserRight('devalueAccrual','exceldown','admin','0','0','1') then
	insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('devalueAccrual', 'exceldown', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('devalueAccrual','exceldown','admin','0','0','2') then
	insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('devalueAccrual', 'exceldown', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsDataExists('select count(*) from tgeneral_export_config t where t.c_modelcode=''devalueAccrualList''') then
	insert into TGENERAL_EXPORT_CONFIG (C_MODELCODE, C_FILENAME, C_FILETYPE, C_FIELDJSON, C_QUERY_SQL)
	values ('devalueAccrualList', '公允价值调整', '0', '[{"code":"loanAccountName","text":"借款人"},{"code":"projectName","text":"项目名称"},{"code":"lastAccrualDate","text":"上次调整日期"},{"code":"loanAccountCosts","text":"初始成本"},{"code":"currentBalance","text":"账面价值"},{"code":"appraisementDate","text":"最新估值时间"},{"code":"appraisementValue","text":"估值金额"}]', 'select li.C_LOANACCOUNTNAME loanAccountName,
       to_char(li.F_LOANACCOUNTCOSTS,''FM999,999,999,999,990.00'') loanAccountCosts,
       to_char(nvl(li.F_LOANACCOUNTCOSTS, 0) - nvl(if.principalSum, 0),''FM999,999,999,999,990.00'') currentBalance,
       to_char(aa1.D_APPRAISEMENTDATE, ''yyyy-mm-dd'') appraisementDate,
       to_char(aa.appraisementvalueSum,''FM999,999,999,999,990.00'') appraisementValue,
       to_char(tra.D_CALCDATE, ''yyyy-mm-dd'') lastAccrualDate,
       pi.C_PROJECTNAME projectName
  from tasset_loanaccount_info li
  left join tproject_info pi
    on pi.C_PROJECTCODE = li.C_PROJECTCODE
  left join (select t.C_ASSETID, sum(nvl(t.F_PRINCIPAL, 0)) as principalSum from tinvest_fundvary t where t.c_checkflag = ''4''
 and t.C_ISINVALID = ''0'' and (t.c_busiflag in (select tdi.dict_item_code from tsys_dict_item tdi where tdi.dict_entry_code = ''COLLECTION_TYPE'')
 or t.c_busiflag in (''22113'',''22082'',''22083'',''22085'',''22090'',''22091'',''22092'',''22181'',''22182''))
 and t.D_OCCURDATE <= sysdate group by t.C_ASSETID) if on if.C_ASSETID = li.C_LOANACCOUNTCODE
  left join (select c_loanaccountcode, max(d_appraisementdate) D_APPRAISEMENTDATE from tasset_appraisement where c_objecttype in (''01'',''02'',''03'') group by c_loanaccountcode) aa1 on aa1.C_LOANACCOUNTCODE = li.C_LOANACCOUNTCODE
  left join (select t.c_loanaccountcode, (sum(nvl(t.f_appraisementvalue, 0)) + sum(nvl(t.f_remainingguaranteeamount, 0)) + sum(nvl(t.f_repaymoney, 0))) appraisementvalueSum
  from tasset_appraisement t left join (select c_loanaccountcode, max(d_appraisementdate) lastdate from tasset_appraisement group by c_loanaccountcode) t1
  on t.c_loanaccountcode = t1.c_loanaccountcode where t.c_objecttype in (''01'',''02'',''03'') and t1.lastdate is not null and t.d_appraisementdate = t1.lastdate
  group by t.c_loanaccountcode) aa on aa.C_LOANACCOUNTCODE = li.C_LOANACCOUNTCODE
  left join (select r.* from (select distinct t.c_loanaccountcode, t.D_CALCDATE, t.c_type, rank() over(partition by t.C_LOANACCOUNTCODE order by t.D_CALCDATE desc) rank
  from trepay_accrual t where t.c_type = ''3'' and t.C_STATUS = ''1'') r where r.rank = 1) tra on tra.C_LOANACCOUNTCODE = li.C_LOANACCOUNTCODE
 where 1 = 1 and pi.C_PROJECTSTATUS =  ''03'' and pi.C_PROJECTNATURE =  ''01''
<#if projectName != "">   
   and pi.c_projectname like ''%''||:projectName||''%''
</#if>
<#if loanAccountName != "">   
   and ic.c_contractname like ''%''||:loanAccountName||''%''
</#if>
<#if appraisementDateBegin != "">   
   and aa1.D_APPRAISEMENTDATE >= to_date(:appraisementDateBegin, ''yyyy-MM-dd'')
</#if> 
<#if appraisementDateEnd != "">   
   and aa1.D_APPRAISEMENTDATE <= to_date(:appraisementDateEnd, ''yyyy-MM-dd'')
</#if>
<#if canDevalueAccrual = "1">
   and li.C_LOANSTATUS in (''03'',''04'')
   and nvl(aa.appraisementvalueSum,0) < (nvl(li.F_LOANACCOUNTCOSTS,0)-nvl(if.principalSum,0))
   and aa1.D_APPRAISEMENTDATE > nvl(tra.D_CALCDATE,to_date(''1990-01-01'',''yyyy-mm-dd''))
<#else> 
   and not (li.C_LOANSTATUS in (''03'',''04'')
   and nvl(aa.appraisementvalueSum,0) < (nvl(li.F_LOANACCOUNTCOSTS,0)-nvl(if.principalSum,0))
   and aa1.D_APPRAISEMENTDATE > nvl(tra.D_CALCDATE,to_date(''1990-01-01'',''yyyy-mm-dd'')))
</#if> 
   and ((exists (select 1 from vuser_projectrightlist up where up.user_id = :userid and up.c_projectcode = li.c_projectcode))
    or (exists (select 1 from tsys_role_user t where t.role_code = ''9996'' and t.user_code = :userid )))
 order by tra.D_CALCDATE desc ');
end if;
end;
/
