declare
begin
if not fc_IsExistsImportTemp('9a1a808b9dfec46132b14deb860096b0') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('9a1a808b9dfec46132b14deb860096b0', 'AMC数据移植', '2', 'AMC_DATATRANSPLANTATION_001', '1', '' );
end if;

if not fc_IsExistsImportTemp('9a1a808b9dfec46132b14deb860096b0_0') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('9a1a808b9dfec46132b14deb860096b0_0', 'AMC数据移植_收购项目', '2', 'AMC_DATATRANSPLANTATION_001_0', '0', '收购项目' );
end if;

if not fc_IsExistsImportTemp('9a1a808b9dfec46132b14deb860096b0_1') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('9a1a808b9dfec46132b14deb860096b0_1', 'AMC数据移植_收购合同', '2', 'AMC_DATATRANSPLANTATION_001_1', '0', '收购合同' );
end if;

if not fc_IsExistsImportTemp('9a1a808b9dfec46132b14deb860096b0_2') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('9a1a808b9dfec46132b14deb860096b0_2', 'AMC数据移植_借款人信息', '2', 'AMC_DATATRANSPLANTATION_001_2', '0', '借款人信息' );
end if;

if not fc_IsExistsImportTemp('9a1a808b9dfec46132b14deb860096b0_3') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('9a1a808b9dfec46132b14deb860096b0_3', 'AMC数据移植_借款合同', '2', 'AMC_DATATRANSPLANTATION_001_3', '0', '借款合同' );
end if;

if not fc_IsExistsImportTemp('9a1a808b9dfec46132b14deb860096b0_4') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('9a1a808b9dfec46132b14deb860096b0_4', 'AMC数据移植_保证合同信息', '2', 'AMC_DATATRANSPLANTATION_001_4', '0', '保证合同信息' );
end if;

if not fc_IsExistsImportTemp('9a1a808b9dfec46132b14deb860096b0_5') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('9a1a808b9dfec46132b14deb860096b0_5', 'AMC数据移植_抵押合同信息', '2', 'AMC_DATATRANSPLANTATION_001_5', '0', '抵押合同信息' );
end if;

if not fc_IsExistsImportTemp('9a1a808b9dfec46132b14deb860096b0_6') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('9a1a808b9dfec46132b14deb860096b0_6', 'AMC数据移植_抵押物信息', '2', 'AMC_DATATRANSPLANTATION_001_6', '0', '抵押物信息' );
end if;

if not fc_IsExistsImportTemp('9a1a808b9dfec46132b14deb860096b0_7') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('9a1a808b9dfec46132b14deb860096b0_7', 'AMC数据移植_诉讼信息', '2', 'AMC_DATATRANSPLANTATION_001_7', '0', '诉讼信息' );
end if;

if not fc_IsExistsImportTemp('9a1a808b9dfec46132b14deb860096b0_8') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('9a1a808b9dfec46132b14deb860096b0_8', 'AMC数据移植_执行信息', '2', 'AMC_DATATRANSPLANTATION_001_8', '0', '执行信息' );
end if;

if not fc_IsExistsImportTemp('9a1a808b9dfec46132b14deb860096b0_9') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('9a1a808b9dfec46132b14deb860096b0_9', 'AMC数据移植_破产重整信息', '2', 'AMC_DATATRANSPLANTATION_001_9', '0', '破产重整信息' );
end if;

if not fc_IsExistsImportTemp('9a1a808b9dfec46132b14deb860096b0_10') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('9a1a808b9dfec46132b14deb860096b0_10', 'AMC数据移植_保全信息', '2', 'AMC_DATATRANSPLANTATION_001_10', '0', '保全信息' );
end if;

if not fc_IsExistsImportTemp('df980ce5124c19387ad8e29895a1c2a0') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('df980ce5124c19387ad8e29895a1c2a0', 'AMC资产包导入', '2', 'AMC_ASSETPACKET_001', '1', '' );
end if;

if not fc_IsExistsImportTemp('df980ce5124c19387ad8e29895a1c2a0_0') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('df980ce5124c19387ad8e29895a1c2a0_0', 'AMC资产包导入_保证人', '2', 'AMC_ASSETPACKET_001_9', '0', '保证人' );
end if;

if not fc_IsExistsImportTemp('df980ce5124c19387ad8e29895a1c2a0_1') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('df980ce5124c19387ad8e29895a1c2a0_1', 'AMC资产包导入_抵押人', '2', 'AMC_ASSETPACKET_001_10', '0', '抵押人' );
end if;

if not fc_IsExistsImportTemp('df980ce5124c19387ad8e29895a1c2a0_2') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('df980ce5124c19387ad8e29895a1c2a0_2', 'AMC资产包导入_借款人信息', '2', 'AMC_ASSETPACKET_001_0', '0', '借款人信息' );
end if;

if not fc_IsExistsImportTemp('df980ce5124c19387ad8e29895a1c2a0_3') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('df980ce5124c19387ad8e29895a1c2a0_3', 'AMC资产包导入_借款合同', '2', 'AMC_ASSETPACKET_001_1', '0', '借款合同' );
end if;

if not fc_IsExistsImportTemp('df980ce5124c19387ad8e29895a1c2a0_4') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('df980ce5124c19387ad8e29895a1c2a0_4', 'AMC资产包导入_保证合同信息', '2', 'AMC_ASSETPACKET_001_2', '0', '保证合同信息' );
end if;

if not fc_IsExistsImportTemp('df980ce5124c19387ad8e29895a1c2a0_5') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('df980ce5124c19387ad8e29895a1c2a0_5', 'AMC资产包导入_抵押合同信息', '2', 'AMC_ASSETPACKET_001_3', '0', '抵押合同信息' );
end if;

if not fc_IsExistsImportTemp('df980ce5124c19387ad8e29895a1c2a0_6') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('df980ce5124c19387ad8e29895a1c2a0_6', 'AMC资产包导入_抵押物信息', '2', 'AMC_ASSETPACKET_001_4', '0', '抵押物信息' );
end if;

if not fc_IsExistsImportTemp('df980ce5124c19387ad8e29895a1c2a0_7') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('df980ce5124c19387ad8e29895a1c2a0_7', 'AMC资产包导入_诉讼信息', '2', 'AMC_ASSETPACKET_001_5', '0', '诉讼信息' );
end if;

if not fc_IsExistsImportTemp('df980ce5124c19387ad8e29895a1c2a0_8') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('df980ce5124c19387ad8e29895a1c2a0_8', 'AMC资产包导入_执行信息', '2', 'AMC_ASSETPACKET_001_6', '0', '执行信息' );
end if;

if not fc_IsExistsImportTemp('df980ce5124c19387ad8e29895a1c2a0_9') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('df980ce5124c19387ad8e29895a1c2a0_9', 'AMC资产包导入_破产重整信息', '2', 'AMC_ASSETPACKET_001_7', '0', '破产重整信息' );
end if;

if not fc_IsExistsImportTemp('df980ce5124c19387ad8e29895a1c2a0_10') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('df980ce5124c19387ad8e29895a1c2a0_10', 'AMC资产包导入_保全信息', '2', 'AMC_ASSETPACKET_001_8', '0', '保全信息' );
end if;

if not fc_IsExistsImportTemp('9d1945f8665009c6b2ae722d5aee1600') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('9d1945f8665009c6b2ae722d5aee1600', 'AMC到账认领导入', '3', 'AMC_ARRIVALDATA_001', '1', '' );
end if;

if not fc_IsExistsImportTemp('dae478by46d54jddyc90lf84y11ryaf3') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('dae478by46d54jddyc90lf84y11ryaf3', '总账科目模板', '1', 'GENERAL_LEDGER', '1', '' );
end if;

if not fc_IsExistsImportTemp('87519aafc6c79a84ebdc3f3be04217d0') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('87519aafc6c79a84ebdc3f3be04217d0', '证券基础模板(股票)', '2', 'SECM_SEC', '1', '' );
end if;

if not fc_IsExistsImportTemp('6084e8efb878e6706819a352b9e1dc32') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('6084e8efb878e6706819a352b9e1dc32', '证券基础模板(基金)', '1', 'SECM_FUND', '1', '' );
end if;

if not fc_IsExistsImportTemp('d2f7f525c070ae91c4aca7dbe47ce386') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('d2f7f525c070ae91c4aca7dbe47ce386', '证券基础模板(债券)', '1', 'SECM_BOND', '1', '' );
end if;

if not fc_IsExistsImportTemp('76a4ee1af666521e13d0bb04b94f0e44') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('76a4ee1af666521e13d0bb04b94f0e44', '交易管理基础模板(基金)', '1', 'SEC_DEAL_FUND', '1', '' );
end if;

if not fc_IsExistsImportTemp('c18f4fd9c01cc5b439cd15ff52ac3697') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('c18f4fd9c01cc5b439cd15ff52ac3697', '交易管理基础模板(债券)', '1', 'SEC_DEAL_BOND', '1', '' );
end if;

if not fc_IsExistsImportTemp('f6a75c30fc76cd3c70221991954f3827') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('f6a75c30fc76cd3c70221991954f3827', '交易管理基础模板(股票)', '1', 'SEC_DEAL_STOCK', '1', '' );
end if;

if not fc_IsExistsImportTemp('6355a5b8d980a75480ef9bd9807906a8') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('6355a5b8d980a75480ef9bd9807906a8', '收息管理基础模板', '1', 'SEC_YIELD_INT', '1', '' );
end if;

if not fc_IsExistsImportTemp('6ac2a637de5bcf49c750861f14443d0c') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('6ac2a637de5bcf49c750861f14443d0c', '分红管理基础模板', '1', 'SEC_YIELD_DIV', '1', '' );
end if;

if not fc_IsExistsImportTemp('a894f015aa18831afe174e3aca84dcbb') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('a894f015aa18831afe174e3aca84dcbb', '份额分红基础模板', '1', 'SEC_YIELD_SDIV_0', '1', '' );
end if;

if not fc_IsExistsImportTemp('a894f615aa18836afe164e3aca82d9bb') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('a894f615aa18836afe164e3aca82d9bb', '送股基础模板', '1', 'SEC_YIELD_SDIV_1', '1', '' );
end if;

if not fc_IsExistsImportTemp('dae478b644d54fddac90bf84911a1af1') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('dae478b644d54fddac90bf84911a1af1', '回购交易信息模板', '1', 'RepoDeal', '1', '' );
end if;

if not fc_IsExistsImportTemp('836450870ab29b3e2dcb49e0cde607d2') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('836450870ab29b3e2dcb49e0cde607d2', '证券行情信息模板', '1', 'importSecurityPrice', '1', '' );
end if;

if not fc_IsExistsImportTemp('2c9600873594f88c8a4eeeb0b540c00c') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('2c9600873594f88c8a4eeeb0b540c00c', '基金行情信息模板', '1', 'SEC_PRICE_FUND', '1', '' );
end if;

if not fc_IsExistsImportTemp('38d287cf611816abdec9df86305153bc') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('38d287cf611816abdec9df86305153bc', '股票行情信息模板', '1', 'SEC_PRICE_SEC', '1', '' );
end if;

if not fc_IsExistsImportTemp('59488bc4e7a544caa9fc23cf03c147cc') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('59488bc4e7a544caa9fc23cf03c147cc', '债券行情信息模板', '1', 'SEC_PRICE_BOND', '1', '' );
end if;

if not fc_IsExistsImportTemp('dae478b646d54jddac90lf84911a1af1') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('dae478b646d54jddac90lf84911a1af1', '股票白名单模板', '1', 'SKT_WHL', '1', '' );
end if;

if not fc_IsExistsImportTemp('dae478b646d54jddac90lf84911a1af2') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('dae478b646d54jddac90lf84911a1af2', '债券白名单模板', '1', 'BOND_WHL', '1', '' );
end if;

if not fc_IsExistsImportTemp('dae478b646d54jddac90lf84911a1af3') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('dae478b646d54jddac90lf84911a1af3', '基金白名单模板', '1', 'FUND_WHL', '1', '' );
end if;

if not fc_IsExistsImportTemp('dae478wy4ue54jyyu90lg84yd1rlof3') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('dae478wy4ue54jyyu90lg84yd1rlof3', '同业拆借交易信息模板', '1', 'IBLB_DEAL', '1', '' );
end if;

if not fc_IsExistsImportTemp('qae4e8wy4ur54jyyu90lg84id1rluf3') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('qae4e8wy4ur54jyyu90lg84id1rluf3', '存放同业交易信息模板', '1', 'DFB_DEAL', '1', '' );
end if;

if not fc_IsExistsImportTemp('df9861953ab946bcbc6ad6177c0d59c6') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('df9861953ab946bcbc6ad6177c0d59c6', '中介机构', '2', 'amc_excel_Agency', '1', '' );
end if;

if not fc_IsExistsImportTemp('aceb8853080441678dcf2a4f50e15c18') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('aceb8853080441678dcf2a4f50e15c18', '抵质押物信息', '1', 'amc_excel_pawn_info', '1', '' );
end if;

if not fc_IsExistsImportTemp('aceb8853080441678dcf2a4f50e15c18_0') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('aceb8853080441678dcf2a4f50e15c18_0', '抵质押物信息_工业房地产', '1', 'amc_excel_pawn_info', '0', '工业房地产' );
end if;

if not fc_IsExistsImportTemp('aceb8853080441678dcf2a4f50e15c18_1') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('aceb8853080441678dcf2a4f50e15c18_1', '抵质押物信息_产品、材料等', '1', 'amc_excel_pawn_info', '0', '产品、材料等' );
end if;

if not fc_IsExistsImportTemp('aceb8853080441678dcf2a4f50e15c18_2') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('aceb8853080441678dcf2a4f50e15c18_2', '抵质押物信息_粮食物资', '1', 'amc_excel_pawn_info', '0', '粮食物资' );
end if;

if not fc_IsExistsImportTemp('aceb8853080441678dcf2a4f50e15c18_3') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('aceb8853080441678dcf2a4f50e15c18_3', '抵质押物信息_工业品、家电等', '1', 'amc_excel_pawn_info', '0', '工业品、家电等' );
end if;

if not fc_IsExistsImportTemp('aceb8853080441678dcf2a4f50e15c18_4') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('aceb8853080441678dcf2a4f50e15c18_4', '抵质押物信息_光地（工业）', '1', 'amc_excel_pawn_info', '0', '光地（工业）' );
end if;

if not fc_IsExistsImportTemp('aceb8853080441678dcf2a4f50e15c18_5') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('aceb8853080441678dcf2a4f50e15c18_5', '抵质押物信息_光地（住宅）', '1', 'amc_excel_pawn_info', '0', '光地（住宅）' );
end if;

if not fc_IsExistsImportTemp('aceb8853080441678dcf2a4f50e15c18_6') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('aceb8853080441678dcf2a4f50e15c18_6', '抵质押物信息_大宗物资', '1', 'amc_excel_pawn_info', '0', '大宗物资' );
end if;

if not fc_IsExistsImportTemp('aceb8853080441678dcf2a4f50e15c18_7') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('aceb8853080441678dcf2a4f50e15c18_7', '抵质押物信息_运输设备', '1', 'amc_excel_pawn_info', '0', '运输设备' );
end if;

if not fc_IsExistsImportTemp('aceb8853080441678dcf2a4f50e15c18_8') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('aceb8853080441678dcf2a4f50e15c18_8', '抵质押物信息_商业', '1', 'amc_excel_pawn_info', '0', '商业' );
end if;

if not fc_IsExistsImportTemp('aceb8853080441678dcf2a4f50e15c18_9') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('aceb8853080441678dcf2a4f50e15c18_9', '抵质押物信息_生产用设备', '1', 'amc_excel_pawn_info', '0', '生产用设备' );
end if;

if not fc_IsExistsImportTemp('7ad9852e799848b5925b41dd37496594') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME )
  values ('7ad9852e799848b5925b41dd37496594', 'AMC干系人导入', '2', 'amc_excel_customer_info', '1', '' );
end if;

end;
/