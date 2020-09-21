declare
begin
if not fc_IsExistsImportModule('AMC_ASSETPACKET_001') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_ASSETPACKET_001', 'AMC�ʲ�������', '', '', '', '2', '3', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_ASSETPACKET_001_0') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_ASSETPACKET_001_0', '�������Ϣ', '', 'T_INT_ASSET_LOANACCOUNT_INFO', '1', '2', '3', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_ASSETPACKET_001_1') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_ASSETPACKET_001_1', 'ծȨ��ͬ', '', 'T_INT_ASSET_CREDITORCONTRACT', '1', '2', '3', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_ASSETPACKET_001_2') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_ASSETPACKET_001_2', '��֤��ͬ', '', 'T_INT_ASSET_GUARANTEECONTRACT', '1', '2', '3', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_ASSETPACKET_001_3') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_ASSETPACKET_001_3', '����Ѻ��ͬ', '', 'T_INT_ASSET_MORTGAGECONTRACT', '1', '2', '3', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_ASSETPACKET_001_4') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_ASSETPACKET_001_4', '����Ѻ��', '', 'T_INT_ASSET_PAWN_INFO', '1', '2', '3', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_ASSETPACKET_001_5') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_ASSETPACKET_001_5', '������Ϣ', '', 'T_INT_LAWSUIT_INFO', '1', '2', '3', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_ASSETPACKET_001_6') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_ASSETPACKET_001_6', '����ִ����Ϣ', '', 'T_INT_LAWSUIT_EXECUTION', '1', '2', '3', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_ASSETPACKET_001_7') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_ASSETPACKET_001_7', '�Ʋ���Ϣ', '', 'T_INT_BANKRUPTCY_INFO', '1', '2', '3', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_ASSETPACKET_001_8') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_ASSETPACKET_001_8', '��ȫ��Ϣ', '', 'T_INT_SEIZED_INFO', '1', '2', '3', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_ASSETPACKET_001_9') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_ASSETPACKET_001_9', '��֤��', '', 'T_INT_GUARANTEER_INFO', '1', '2', '3', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_ASSETPACKET_001_10') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_ASSETPACKET_001_10', '��Ѻ��', '', 'T_INT_MORTGAGOR_INFO', '1', '2', '3', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_DATATRANSPLANTATION_001') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_DATATRANSPLANTATION_001', 'AMC������ֲ', '', '', '', '2', '0', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_DATATRANSPLANTATION_001_0') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_DATATRANSPLANTATION_001_0', '�չ���Ŀ', '', 'T_INT_PROJECT_INFO', '1', '2', '0', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_DATATRANSPLANTATION_001_1') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_DATATRANSPLANTATION_001_1', '�չ���ͬ', '', 'T_INT_INVEST_CONTRACT', '1', '2', '0', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_DATATRANSPLANTATION_001_2') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_DATATRANSPLANTATION_001_2', '�������Ϣ', '', 'T_INT_ASSET_LOANACCOUNT_INFO', '1', '2', '0', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_DATATRANSPLANTATION_001_3') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_DATATRANSPLANTATION_001_3', 'ծȨ��ͬ', '', 'T_INT_ASSET_CREDITORCONTRACT', '1', '2', '0', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_DATATRANSPLANTATION_001_4') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_DATATRANSPLANTATION_001_4', '��֤��ͬ', '', 'T_INT_ASSET_GUARANTEECONTRACT', '1', '2', '0', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_DATATRANSPLANTATION_001_5') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_DATATRANSPLANTATION_001_5', '����Ѻ��ͬ', '', 'T_INT_ASSET_MORTGAGECONTRACT', '1', '2', '0', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_DATATRANSPLANTATION_001_6') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_DATATRANSPLANTATION_001_6', '����Ѻ��', '', 'T_INT_ASSET_PAWN_INFO', '1', '2', '0', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_DATATRANSPLANTATION_001_7') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_DATATRANSPLANTATION_001_7', '������Ϣ', '', 'T_INT_LAWSUIT_INFO', '1', '2', '0', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_DATATRANSPLANTATION_001_8') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_DATATRANSPLANTATION_001_8', '����ִ����Ϣ', '', 'T_INT_LAWSUIT_EXECUTION', '1', '2', '0', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_DATATRANSPLANTATION_001_9') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_DATATRANSPLANTATION_001_9', '�Ʋ���Ϣ', '', 'T_INT_BANKRUPTCY_INFO', '1', '2', '0', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_DATATRANSPLANTATION_001_10') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_DATATRANSPLANTATION_001_10', '��ȫ��Ϣ', '', 'T_INT_SEIZED_INFO', '1', '2', '0', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_ARRIVALDATA_001') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_ARRIVALDATA_001', 'AMC�������쵼��', '', 'T_INT_FINANCIAL_ARRIVAL', '', '3', '', '
			1������ʱ����Ϊyyyy/MM/dd��ʽ��
			2��excel�ļ�sheet���ֱ���Ϊ�������˻���ϸ��
		', '', '' );
end if;

if not fc_IsExistsImportModule('GENERAL_LEDGER') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('GENERAL_LEDGER', '���˿�Ŀģ��', '', 'tint_general_ledger', '', '', 'GENERAL_LEDGER', '', '', '' );
end if;

if not fc_IsExistsImportModule('SECM_BOND') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SECM_BOND', '֤ȯ����ģ��(ծȯ)', '', 'tint_security_master', '', '50', 'SEC_MASTER', '', '', '' );
end if;

if not fc_IsExistsImportModule('SECM_SEC') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SECM_SEC', '֤ȯ����ģ��(��Ʊ)', '', 'tint_security_master', '', '50', 'SEC_MASTER', '', '', '1' );
end if;

if not fc_IsExistsImportModule('SECM_FUND') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SECM_FUND', '֤ȯ����ģ��(����)', '', 'tint_security_master', '', '50', 'SEC_MASTER', '', '', '' );
end if;

if not fc_IsExistsImportModule('SEC_DEAL_STOCK') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SEC_DEAL_STOCK', '���׹���(��Ʊ)', '', 'tint_security_deal', '', '51', 'SEC_DEAL', '', '', '' );
end if;

if not fc_IsExistsImportModule('SEC_DEAL_FUND') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SEC_DEAL_FUND', '���׹���(����)', '', 'tint_security_deal', '', '51', 'SEC_DEAL', '', '', '' );
end if;

if not fc_IsExistsImportModule('SEC_DEAL_BOND') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SEC_DEAL_BOND', '���׹���(ծȯ)', '', 'tint_security_deal', '', '51', 'SEC_DEAL', '', '', '' );
end if;

if not fc_IsExistsImportModule('SEC_YIELD_INT') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SEC_YIELD_INT', '��Ϣ����', '', 'tint_security_yield', '', '52', 'SEC_YIELD', '', '', '' );
end if;

if not fc_IsExistsImportModule('SEC_YIELD_DIV') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SEC_YIELD_DIV', '�ֺ����', '', 'tint_security_yield', '', '52', 'SEC_YIELD', '', '', '' );
end if;

if not fc_IsExistsImportModule('SEC_YIELD_SDIV_0') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SEC_YIELD_SDIV_0', '�͹�', '', 'tint_security_yield', '', '52', 'SEC_YIELD', '', '', '' );
end if;

if not fc_IsExistsImportModule('SEC_YIELD_SDIV_1') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SEC_YIELD_SDIV_1', '�ݶ�ֺ�', '', 'tint_security_yield', '', '52', 'SEC_YIELD', '', '', '' );
end if;

if not fc_IsExistsImportModule('RepoDeal') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('RepoDeal', '�ع�������Ϣ', '', 'tint_repo_deal', '', '58', 'REPO_DEAL', '', '', '' );
end if;

if not fc_IsExistsImportModule('importSecurityPrice') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('importSecurityPrice', '֤ȯ������Ϣ', '', 'tint_sec_price', '', '', '_PRICE', '', '', '' );
end if;

if not fc_IsExistsImportModule('SEC_PRICE_SEC') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SEC_PRICE_SEC', '��Ʊ������Ϣ', '', 'tint_sec_price', '', '', 'SEC_PRICE', '', '', '' );
end if;

if not fc_IsExistsImportModule('SEC_PRICE_FUND') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SEC_PRICE_FUND', '����������Ϣ', '', 'tint_sec_price', '', '', 'FUND_PRICE', '', '', '' );
end if;

if not fc_IsExistsImportModule('SEC_PRICE_BOND') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SEC_PRICE_BOND', 'ծȯ������Ϣ', '', 'tint_sec_price', '', '', 'BOND_PRICE', '', '', '' );
end if;

if not fc_IsExistsImportModule('SKT_WHL') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('SKT_WHL', '��Ʊ������ģ��', '', 'tint_sec_permit_list', '', '', 'SKT_WHL', '', '', '' );
end if;

if not fc_IsExistsImportModule('BOND_WHL') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('BOND_WHL', 'ծȯ������ģ��', '', 'tint_sec_permit_list', '', '', 'BOND_WHL', '', '', '' );
end if;

if not fc_IsExistsImportModule('FUND_WHL') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('FUND_WHL', '���������ģ��', '', 'tint_sec_permit_list', '', '', 'FUND_WHL', '', '', '' );
end if;

if not fc_IsExistsImportModule('IBLB_DEAL') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('IBLB_DEAL', 'ͬҵ��轻����Ϣ', '', 'tint_deposits_loans_deal', '', '56', 'IBLB_DEAL', '', '', '' );
end if;

if not fc_IsExistsImportModule('DFB_DEAL') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('DFB_DEAL', '���ͬҵ������Ϣ', '', 'tint_deposits_loans_deal', '', '56', 'DFB_DEAL', '', '', '' );
end if;

if not fc_IsExistsImportModule('amc_excel_Agency') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('amc_excel_Agency', '�н��������', '', 'T_INT_AGENCY_INFO', '', 'amc_excel_Agency', '', '1��ͳһ������ô���ΪΨһ��ʶ 

4�����ڸ�ʽΪyyyy/MM/dd', '', '' );
end if;

if not fc_IsExistsImportModule('amc_excel_pawn_info') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('amc_excel_pawn_info', '����Ѻ����Ϣ����', '', '', '', 'amc_excel_pawn_info', '', '', '', '' );
end if;

if not fc_IsExistsImportModule('AMC_CAPITALPLAN_001_3') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('AMC_CAPITALPLAN_001_3', '��Ŀ���', '', 'T_INT_CAPITAL_FUNDS_USE', '1', 'amc_capital_plan', '3', '', '', '' );
end if;

if not fc_IsExistsImportModule('amc_excel_customer_info') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('amc_excel_customer_info', 'AMC��ϵ�˵���', '', 'T_INT_CUSTOMER_INFO', '', 'amc_excel_customer_info', '', '1������ϵ��Ϊ����ʱ��֤�����Ͳ���ѡ����֯��������֤��������ô���
			2������ϵ������Ϊ����ʱ,�Ƿ�����������ô���Ϊ��
			3������ϵ�˽�ɫΪ����ʱ��֤������͸�ϵ�����Ʋ������ظ�������ظ�������ĻḲ��ǰ���
    		4������ϵ�˽�ɫΪ����ʱ��֤�����벻���ظ�
			5������ϵ��Ϊ����ʱ���Ǳ�����ֻ����дͨ�ŵ�ַ���ʱࡢ��ע��������������ҵ������ϸ
    		6�����ڸ�ʽΪyyyy/MM/dd', '', '' );
end if;

end;
/