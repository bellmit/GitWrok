declare
begin
if not fc_IsExistsImportModule('AMC_ASSETPACKET_001') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_ASSETPACKET_001', 'AMC资产包导入', '', '', '', '2', '3', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_ASSETPACKET_001_0') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_ASSETPACKET_001_0', '借款人信息', '', 'T_INT_ASSET_LOANACCOUNT_INFO', '1', '2', '3', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_ASSETPACKET_001_1') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_ASSETPACKET_001_1', '债权合同', '', 'T_INT_ASSET_CREDITORCONTRACT', '1', '2', '3', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_ASSETPACKET_001_2') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_ASSETPACKET_001_2', '保证合同', '', 'T_INT_ASSET_GUARANTEECONTRACT', '1', '2', '3', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_ASSETPACKET_001_3') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_ASSETPACKET_001_3', '抵质押合同', '', 'T_INT_ASSET_MORTGAGECONTRACT', '1', '2', '3', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_ASSETPACKET_001_4') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_ASSETPACKET_001_4', '抵质押物', '', 'T_INT_ASSET_PAWN_INFO', '1', '2', '3', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_ASSETPACKET_001_5') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_ASSETPACKET_001_5', '诉讼信息', '', 'T_INT_LAWSUIT_INFO', '1', '2', '3', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_ASSETPACKET_001_6') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_ASSETPACKET_001_6', '诉讼执行信息', '', 'T_INT_LAWSUIT_EXECUTION', '1', '2', '3', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_ASSETPACKET_001_7') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_ASSETPACKET_001_7', '破产信息', '', 'T_INT_BANKRUPTCY_INFO', '1', '2', '3', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_ASSETPACKET_001_8') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_ASSETPACKET_001_8', '保全信息', '', 'T_INT_SEIZED_INFO', '1', '2', '3', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_ASSETPACKET_001_9') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_ASSETPACKET_001_9', '保证人', '', 'T_INT_GUARANTEER_INFO', '1', '2', '3', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_ASSETPACKET_001_10') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_ASSETPACKET_001_10', '抵押人', '', 'T_INT_MORTGAGOR_INFO', '1', '2', '3', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_DATATRANSPLANTATION_001') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_DATATRANSPLANTATION_001', 'AMC数据移植', '', '', '', '2', '0', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_DATATRANSPLANTATION_001_0') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_DATATRANSPLANTATION_001_0', '收购项目', '', 'T_INT_PROJECT_INFO', '1', '2', '0', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_DATATRANSPLANTATION_001_1') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_DATATRANSPLANTATION_001_1', '收购合同', '', 'T_INT_INVEST_CONTRACT', '1', '2', '0', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_DATATRANSPLANTATION_001_2') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_DATATRANSPLANTATION_001_2', '借款人信息', '', 'T_INT_ASSET_LOANACCOUNT_INFO', '1', '2', '0', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_DATATRANSPLANTATION_001_3') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_DATATRANSPLANTATION_001_3', '债权合同', '', 'T_INT_ASSET_CREDITORCONTRACT', '1', '2', '0', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_DATATRANSPLANTATION_001_4') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_DATATRANSPLANTATION_001_4', '保证合同', '', 'T_INT_ASSET_GUARANTEECONTRACT', '1', '2', '0', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_DATATRANSPLANTATION_001_5') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_DATATRANSPLANTATION_001_5', '抵质押合同', '', 'T_INT_ASSET_MORTGAGECONTRACT', '1', '2', '0', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_DATATRANSPLANTATION_001_6') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_DATATRANSPLANTATION_001_6', '抵质押物', '', 'T_INT_ASSET_PAWN_INFO', '1', '2', '0', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_DATATRANSPLANTATION_001_7') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_DATATRANSPLANTATION_001_7', '诉讼信息', '', 'T_INT_LAWSUIT_INFO', '1', '2', '0', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_DATATRANSPLANTATION_001_8') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_DATATRANSPLANTATION_001_8', '诉讼执行信息', '', 'T_INT_LAWSUIT_EXECUTION', '1', '2', '0', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_DATATRANSPLANTATION_001_9') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_DATATRANSPLANTATION_001_9', '破产信息', '', 'T_INT_BANKRUPTCY_INFO', '1', '2', '0', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_DATATRANSPLANTATION_001_10') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_DATATRANSPLANTATION_001_10', '保全信息', '', 'T_INT_SEIZED_INFO', '1', '2', '0', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_ARRIVALDATA_001') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_ARRIVALDATA_001', 'AMC到账认领导入', '', 'T_INT_FINANCIAL_ARRIVAL', '', '3', '', '
			1、交易时间需为yyyy/MM/dd格式；
			2、excel文件sheet名字必须为：银行账户明细；
		', '', '' );
end if;

if not fc_IsExistsImportModule('GENERAL_LEDGER') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('GENERAL_LEDGER', '总账科目模板', '', 'tint_general_ledger', '', '', 'GENERAL_LEDGER', '', '', '' );
end if;

if not fc_IsExistsImportModule('SECM_BOND') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SECM_BOND', '证券基础模板(债券)', '', 'tint_security_master', '', '50', 'SEC_MASTER', '', '', '' );
end if;

if not fc_IsExistsImportModule('SECM_SEC') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SECM_SEC', '证券基础模板(股票)', '', 'tint_security_master', '', '50', 'SEC_MASTER', '', '', '1' );
end if;

if not fc_IsExistsImportModule('SECM_FUND') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SECM_FUND', '证券基础模板(基金)', '', 'tint_security_master', '', '50', 'SEC_MASTER', '', '', '' );
end if;

if not fc_IsExistsImportModule('SEC_DEAL_STOCK') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SEC_DEAL_STOCK', '交易管理(股票)', '', 'tint_security_deal', '', '51', 'SEC_DEAL', '', '', '' );
end if;

if not fc_IsExistsImportModule('SEC_DEAL_FUND') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SEC_DEAL_FUND', '交易管理(基金)', '', 'tint_security_deal', '', '51', 'SEC_DEAL', '', '', '' );
end if;

if not fc_IsExistsImportModule('SEC_DEAL_BOND') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SEC_DEAL_BOND', '交易管理(债券)', '', 'tint_security_deal', '', '51', 'SEC_DEAL', '', '', '' );
end if;

if not fc_IsExistsImportModule('SEC_YIELD_INT') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SEC_YIELD_INT', '收息管理', '', 'tint_security_yield', '', '52', 'SEC_YIELD', '', '', '' );
end if;

if not fc_IsExistsImportModule('SEC_YIELD_DIV') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SEC_YIELD_DIV', '分红管理', '', 'tint_security_yield', '', '52', 'SEC_YIELD', '', '', '' );
end if;

if not fc_IsExistsImportModule('SEC_YIELD_SDIV_0') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SEC_YIELD_SDIV_0', '送股', '', 'tint_security_yield', '', '52', 'SEC_YIELD', '', '', '' );
end if;

if not fc_IsExistsImportModule('SEC_YIELD_SDIV_1') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SEC_YIELD_SDIV_1', '份额分红', '', 'tint_security_yield', '', '52', 'SEC_YIELD', '', '', '' );
end if;

if not fc_IsExistsImportModule('RepoDeal') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('RepoDeal', '回购交易信息', '', 'tint_repo_deal', '', '58', 'REPO_DEAL', '', '', '' );
end if;

if not fc_IsExistsImportModule('importSecurityPrice') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('importSecurityPrice', '证券行情信息', '', 'tint_sec_price', '', '', '_PRICE', '', '', '' );
end if;

if not fc_IsExistsImportModule('SEC_PRICE_SEC') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SEC_PRICE_SEC', '股票行情信息', '', 'tint_sec_price', '', '', 'SEC_PRICE', '', '', '' );
end if;

if not fc_IsExistsImportModule('SEC_PRICE_FUND') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SEC_PRICE_FUND', '基金行情信息', '', 'tint_sec_price', '', '', 'FUND_PRICE', '', '', '' );
end if;

if not fc_IsExistsImportModule('SEC_PRICE_BOND') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SEC_PRICE_BOND', '债券行情信息', '', 'tint_sec_price', '', '', 'BOND_PRICE', '', '', '' );
end if;

if not fc_IsExistsImportModule('SKT_WHL') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SKT_WHL', '股票白名单模板', '', 'tint_sec_permit_list', '', '', 'SKT_WHL', '', '', '' );
end if;

if not fc_IsExistsImportModule('BOND_WHL') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('BOND_WHL', '债券白名单模板', '', 'tint_sec_permit_list', '', '', 'BOND_WHL', '', '', '' );
end if;

if not fc_IsExistsImportModule('FUND_WHL') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('FUND_WHL', '基金白名单模板', '', 'tint_sec_permit_list', '', '', 'FUND_WHL', '', '', '' );
end if;

if not fc_IsExistsImportModule('IBLB_DEAL') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('IBLB_DEAL', '同业拆借交易信息', '', 'tint_deposits_loans_deal', '', '56', 'IBLB_DEAL', '', '', '' );
end if;

if not fc_IsExistsImportModule('DFB_DEAL') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('DFB_DEAL', '存放同业交易信息', '', 'tint_deposits_loans_deal', '', '56', 'DFB_DEAL', '', '', '' );
end if;

if not fc_IsExistsImportModule('amc_excel_Agency') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('amc_excel_Agency', '中介机构导入', '', 'T_INT_AGENCY_INFO', '', 'amc_excel_Agency', '', '1、统一社会信用代码为唯一标识 

4、日期格式为yyyy/MM/dd', '', '' );
end if;

if not fc_IsExistsImportModule('amc_excel_pawn_info') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('amc_excel_pawn_info', '抵质押物信息导入', '', '', '', 'amc_excel_pawn_info', '', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_CAPITALPLAN_001_3') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_CAPITALPLAN_001_3', '项目情况', '', 'T_INT_CAPITAL_FUNDS_USE', '1', 'amc_capital_plan', '3', '', '', '' );
end if;

if not fc_IsExistsImportModule('amc_excel_customer_info') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('amc_excel_customer_info', 'AMC干系人导入', '', 'T_INT_CUSTOMER_INFO', '', 'amc_excel_customer_info', '', '1、当干系人为个人时，证件类型不能选择组织机构代码证和社会信用代码
			2、当干系人性质为个人时,是否启用社会信用代码为空
			3、当干系人角色为机构时，证件号码和干系人名称不能有重复，如果重复，后面的会覆盖前面的
    		4、当干系人角色为个人时，证件号码不能重复
			5、当干系人为个人时，非必填项只需填写通信地址、邮编、备注、地区、经济行业分类明细
    		6、日期格式为yyyy/MM/dd', '', '' );
end if;

end;
/