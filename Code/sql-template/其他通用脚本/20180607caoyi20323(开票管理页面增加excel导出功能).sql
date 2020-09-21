declare
begin
if not fc_IsExistsSysSubTrans('fundInvoiceManage','exceldown') then
	insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
	values ('fundInvoiceManage', 'exceldown', 'Excel导出', '', '', '', '1', '', '', '', '');
end if;

if not fc_IsExistsSysUserRight('fundInvoiceManage','exceldown','admin','0','0','1') then
	insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('fundInvoiceManage', 'exceldown', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('fundInvoiceManage','exceldown','admin','0','0','2') then
	insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
	values ('fundInvoiceManage', 'exceldown', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsDataExists('select count(*) from tgeneral_export_config t where t.c_modelcode=''fundInvoiceList''') then
	insert into TGENERAL_EXPORT_CONFIG (C_MODELCODE, C_FILENAME, C_FILETYPE, C_FIELDJSON, C_QUERY_SQL)
	values ('fundInvoiceList', '开票信息', '0', '[{"code":"occurdate","text":"收费日期"},{"code":"payee_company","text":"收费机构"},{"code":"projectname","text":"项目名称"},{"code":"loanaccountname","text":"客户名称"},{"code":"taxnum","text":"税号"},{"code":"payer_company","text":"开户行"},{"code":"payer_account","text":"账号"},{"code":"address","text":"地址"},{"code":"telephone","text":"电话"},{"code":"occurbalance","text":"收款金额"},{"code":"businame","text":"收款类型"},{"code":"invoice_type","text":"开票类型"},{"code":"invoicestatus_show","text":"开票状态"},{"code":"invoice_date","text":"开票日期"}]', 'select to_char(if.d_occurdate, ''yyyy-MM-dd'') occurdate,
       pi.c_projectname projectname,
       al.c_loanaccountname loanaccountname,
       ib.c_businame businame,
       to_char(if.F_OCCUR_BALANCE,''FM999,999,999,999,990.00'') occurbalance,
       decode(nvl(vi.L_IJOURID, 0), 0, ''未开票'', ''已开票'') invoicestatus_show,
       getdictitemnamebyitemcode(''INVOICE_MANAGE_TYPE'', vi.c_invoice_type) invoice_type,
       vi.c_invoice_date invoice_date,
       ta.c_payer_company payer_company,
       ta.c_payee_company payee_company,
       ta.c_payer_account payer_account,
       nvl(tci.c_certificatecode, tci.c_taxpayerno) taxnum,
       tci.c_address address,
       tci.c_contactnum telephone
  from tinvest_fundvary if
  left join tproject_info pi
    on pi.c_projectcode = if.c_projectcode
  left join tasset_loanaccount_info al
    on al.c_loanaccountcode = if.C_ASSETID
  left join tinvest_busiflag ib
    on ib.c_busiflag = if.c_busiflag
  left join TCBMS_FUNDVARY_INVOICE_INFO vi
    on vi.L_IJOURID = if.L_IJOURID, trepay_arrival ta
  left join tcustomer_info tci
    on tci.c_customercode = ta.c_payer_tcustomer, trepay_confirm tc,
 trepay_confirm_detail tcd
 where 1 = 1
   and if.C_ISINVALID = ''0''
   and if.instanceid = tc.process_instanceid
   and tc.l_confirmid = tcd.l_confirmid
   and tc.l_arrivalid = ta.l_arrivalid
   and tcd.c_type in (''7'', ''8'')
<#if beginDate != "">
   and to_date(vi.c_invoice_date,''yyyy-MM-dd'') >= to_date(:beginDate,''yyyy-MM-dd'')
</#if>
<#if endDate != "">
   and to_date(vi.c_invoice_date,''yyyy-MM-dd'') <= to_date(:endDate,''yyyy-MM-dd'')
</#if>
<#if beginOccurDate != "">
   and if.d_occurdate >= to_date(:beginOccurDate,''yyyy-MM-dd'')
</#if>
<#if endOccurDate != "">
   and if.d_occurdate <= to_date(:endOccurDate,''yyyy-MM-dd'')
</#if>
<#if projectName != "">
   and pi.c_projectname like ''%''||:projectName||''%''
</#if>
<#if customerName != "">
   and al.c_loanaccountname like ''%''||:customerName||''%''
</#if>
<#if invoiceType != "">
   and vi.c_invoice_type =  :invoiceType
</#if>
<#if invoiceStatus != "">
<#if invoiceStatus = "1">
   and vi.L_IJOURID is not null
<#else>
   and vi.L_IJOURID is null
</#if>
</#if>
<#if beginDate != "">
   and ib.c_busiflag =  :busiFlag
</#if>

order by nvl(vi.l_ijourid,0) asc, if.D_CREATETIME desc');
end if;
end;
/
