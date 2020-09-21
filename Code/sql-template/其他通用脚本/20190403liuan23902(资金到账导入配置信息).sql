declare
begin
if not fc_IsExistsImportElement('arrival_bankdate') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('arrival_bankdate', '银行流水时间', 'date', '1', 'd_bank_date', '', '', '', '' );
end if;

if not fc_IsExistsImportElement('arrival_payercompany') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('arrival_payercompany', '打款单位', 'string', '1', 'c_payer_company', '100', '', '', '' );
end if;

if not fc_IsExistsImportElement('arrival_payerbank') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('arrival_payerbank', '打款银行', 'string', '0', 'c_payer_bank', '100', '', '', '' );
end if;

if not fc_IsExistsImportElement('arrival_payeraccount') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('arrival_payeraccount', '打款银行账号', 'string', '0', 'c_payer_account', '30', '', '', '' );
end if;

if not fc_IsExistsImportElement('arrival_payeecompany') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('arrival_payeecompany', '入账单位', 'string', '1', 'c_payee_company', '', '', '', '' );
end if;

if not fc_IsExistsImportElement('arrival_payeebank') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('arrival_payeebank', '入账账户开户行', 'string', '1', 'c_payee_bank', '100', '', '', '' );
end if;

if not fc_IsExistsImportElement('arrival_account') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('arrival_account', '入账银行账号', 'string', '1', 'c_payee_account', '30', '', '', '' );
end if;

if not fc_IsExistsImportElement('arrival_amount') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('arrival_amount', '金额', 'number', '1', 'f_pay_amount', '19,2', '', '', '' );
end if;

if not fc_IsExistsImportElement('arrival_remark') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('arrival_remark', '款项摘要', 'string', '1', 'c_remark', '3000', '', '', '' );
end if;

if not fc_IsExistsImportModule('amc_arrival_info') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('amc_arrival_info', '资金到账导入流程', 'com.hundsun.fund.amc.manager.arrival.factory.ArrivalImportFactory', 'T_INT_ARRIVAL_INFO', '', 'amc_arrival_info', '', '注意事项：
1、红色为必填项；', '', '' );
end if;

if not fc_IsExistsImportRelation('amc_arrival_info', 'arrival_bankdate', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('amc_arrival_info', 'arrival_bankdate', '1', '0' );
end if;

if not fc_IsExistsImportRelation('amc_arrival_info', 'arrival_payercompany', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('amc_arrival_info', 'arrival_payercompany', '1', '1' );
end if;

if not fc_IsExistsImportRelation('amc_arrival_info', 'arrival_payerbank', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('amc_arrival_info', 'arrival_payerbank', '1', '2' );
end if;

if not fc_IsExistsImportRelation('amc_arrival_info', 'arrival_payeraccount', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('amc_arrival_info', 'arrival_payeraccount', '1', '3' );
end if;

if not fc_IsExistsImportRelation('amc_arrival_info', 'arrival_payeecompany', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('amc_arrival_info', 'arrival_payeecompany', '1', '4' );
end if;

if not fc_IsExistsImportRelation('amc_arrival_info', 'arrival_payeebank', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('amc_arrival_info', 'arrival_payeebank', '1', '5' );
end if;

if not fc_IsExistsImportRelation('amc_arrival_info', 'arrival_account', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('amc_arrival_info', 'arrival_account', '1', '6' );
end if;

if not fc_IsExistsImportRelation('amc_arrival_info', 'arrival_amount', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('amc_arrival_info', 'arrival_amount', '1', '7' );
end if;

if not fc_IsExistsImportRelation('amc_arrival_info', 'arrival_remark', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('amc_arrival_info', 'arrival_remark', '1', '8' );
end if;

if not fc_IsExistsImportCell('f930faa42414daff30bc99ae0a65596e', 'arrival_bankdate') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('f930faa42414daff30bc99ae0a65596e', '银行流水时间', 'arrival_bankdate', '', '0' );
end if;

if not fc_IsExistsImportCell('f930faa42414daff30bc99ae0a65596e', 'arrival_payercompany') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('f930faa42414daff30bc99ae0a65596e', '打款单位', 'arrival_payercompany', '', '1' );
end if;

if not fc_IsExistsImportCell('f930faa42414daff30bc99ae0a65596e', 'arrival_payerbank') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('f930faa42414daff30bc99ae0a65596e', '打款银行', 'arrival_payerbank', '', '2' );
end if;

if not fc_IsExistsImportCell('f930faa42414daff30bc99ae0a65596e', 'arrival_payeraccount') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('f930faa42414daff30bc99ae0a65596e', '打款银行账号', 'arrival_payeraccount', '', '3' );
end if;

if not fc_IsExistsImportCell('f930faa42414daff30bc99ae0a65596e', 'arrival_payeecompany') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('f930faa42414daff30bc99ae0a65596e', '入账单位', 'arrival_payeecompany', '', '4' );
end if;

if not fc_IsExistsImportCell('f930faa42414daff30bc99ae0a65596e', 'arrival_payeebank') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('f930faa42414daff30bc99ae0a65596e', '入账账户开户行', 'arrival_payeebank', '', '5' );
end if;

if not fc_IsExistsImportCell('f930faa42414daff30bc99ae0a65596e', 'arrival_account') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('f930faa42414daff30bc99ae0a65596e', '入账银行账号', 'arrival_account', '', '6' );
end if;

if not fc_IsExistsImportCell('f930faa42414daff30bc99ae0a65596e', 'arrival_amount') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('f930faa42414daff30bc99ae0a65596e', '金额', 'arrival_amount', '', '7' );
end if;

if not fc_IsExistsImportCell('f930faa42414daff30bc99ae0a65596e', 'arrival_remark') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('f930faa42414daff30bc99ae0a65596e', '款项摘要', 'arrival_remark', '', '8' );
end if;

if not fc_IsExistsImportTemp('f930faa42414daff30bc99ae0a65596e') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME, C_CREATE_USER, D_CREATE_TIME )
  values ('f930faa42414daff30bc99ae0a65596e', '资金到账导入流程', '2', 'amc_arrival_info', '', '', 'admin', sysdate );
end if;

end;
/