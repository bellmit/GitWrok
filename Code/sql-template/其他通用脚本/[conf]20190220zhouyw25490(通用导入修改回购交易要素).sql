declare
BEGIN
DELETE FROM TGENERAL_IMPORT_ELEMENT_INFO WHERE C_ELEMENTCODE  like '%RepoDeal%';
if not fc_IsExistsImportElement('RepoDeal_br') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_br', '分支机构', 'hidden', '', 'c_br', 'param:br', '', '', '0' );
end if;

if not fc_IsExistsImportElement('RepoDeal_feno') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_feno', '外部交易编号', 'autopk', '', 'c_feno', 'REPOP', '', '', '1' );
end if;

if not fc_IsExistsImportElement('RepoDeal_trader') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_trader', '交易员', 'string', '', 'c_trader', '16', '', '', '0' );
end if;

if not fc_IsExistsImportElement('RepoDeal_security') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_security', '证券代码', 'string', '', 'c_security', '32', '', '', '0' );
end if;

if not fc_IsExistsImportElement('RepoDeal_market') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_market', '市场', 'dict', '', 'c_market', 'MARKETISSUE', '', '', '0' );
end if;

if not fc_IsExistsImportElement('RepoDeal_ps') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_ps', '回购方向', 'dict', '1', 'c_ps', 'REPO_PS', '', '', '0' );
end if;

if not fc_IsExistsImportElement('RepoDeal_ratecode') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_ratecode', '利率代码', 'dict', '', 'c_ratecode', 'RATECODE', '', '', '0' );
end if;

if not fc_IsExistsImportElement('RepoDeal_reporate') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_reporate', '回购利率(%)', 'string', '1', 'f_reporate', '32', '', '', '0' );
end if;

if not fc_IsExistsImportElement('RepoDeal_cust') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_cust', '交易对手', 'string', '1', 'c_cust', '175', '', '', '0' );
end if;

if not fc_IsExistsImportElement('RepoDeal_ccy') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_ccy', '币种', 'sql', '1', 'c_ccy', 'select t.c_ccy as dictvalue, t.c_chnname as dictname from tbase_ccycode t where t.c_status = ''1''', '', '1', '0' );
end if;

if not fc_IsExistsImportElement('RepoDeal_quantity') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_quantity', '数量', 'number', '', 'l_quantity', '19,4', '', '', '0' );
end if;

if not fc_IsExistsImportElement('RepoDeal_faceamount') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_faceamount', '总面值(券面总额)', 'number', '', 'f_faceamount', '19,4', '', '', '0' );
end if;

if not fc_IsExistsImportElement('RepoDeal_amount') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_amount', '金额', 'number', '1', 'f_amount', '19,4', '', '', '0' );
end if;

if not fc_IsExistsImportElement('RepoDeal_totlint') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_totlint', '总利息', 'number', '', 'f_totlint', '19,4', '', '', '0' );
end if;

if not fc_IsExistsImportElement('RepoDeal_dealdate') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_dealdate', '交易日(年/月/日)', 'date', '1', 'd_dealdate', '', '', '', '0' );
end if;

if not fc_IsExistsImportElement('RepoDeal_settdays') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_settdays', '清算天数/清算速度', 'dict', '1', 'l_settdays', 'SETTDAYS', '', '', '0' );
end if;

if not fc_IsExistsImportElement('RepoDeal_vdate') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_vdate', '起息日(年/月/日)', 'date', '', 'd_vdate', '', '', '', '0' );
end if;

if not fc_IsExistsImportElement('RepoDeal_tenor') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_tenor', '期限(单位天)', 'number', '1', 'c_tenor', '16', '', '', '0' );
end if;

if not fc_IsExistsImportElement('RepoDeal_mdate') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_mdate', '到期日(年/月/日)', 'date', '', 'd_mdate', '', '', '', '0' );
end if;

if not fc_IsExistsImportElement('RepoDeal_basis') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_basis', '计息基础', 'dict', '1', 'c_basis', 'BASIS', '', '', '0' );
end if;

if not fc_IsExistsImportElement('RepoDeal_feeccy') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_feeccy', '费用币种', 'sql', '', 'f_feeccy', 'select t.c_ccy as dictvalue, t.c_chnname as dictname from tbase_ccycode t where t.c_status = ''1''', '', '1', '0' );
end if;

if not fc_IsExistsImportElement('RepoDeal_feeamt') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_feeamt', '费用', 'number', '', 'f_feeamt', '19,4', '', '', '0' );
end if;

if not fc_IsExistsImportElement('RepoDeal_v_settlement') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_v_settlement', '首次结算方式', 'dict', '1', 'c_v_settlement', 'SETTLEMENT', '', '', '0' );
end if;

if not fc_IsExistsImportElement('RepoDeal_m_settlement') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_m_settlement', '到期结算方式', 'dict', '1', 'c_m_settlement', 'SETTLEMENT', '', '', '0' );
end if;

if not fc_IsExistsImportElement('RepoDeal_costcenter') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_costcenter', '成本中心', 'string', '1', 'c_costcenter', '16', '', '', '0' );
end if;

if not fc_IsExistsImportElement('RepoDeal_settlement_path') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_settlement_path', '清算路径', 'string', '1', 'c_settlement_path', '100', '', '', '0' );
end if;

if not fc_IsExistsImportElement('RepoDeal_invest_product') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_invest_product', '投资分类[I级]', 'string', '', 'c_invest_product', '255', '', '', '0' );
end if;

if not fc_IsExistsImportElement('RepoDeal_invest_prodtype') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('RepoDeal_invest_prodtype', '投资分类[II级]', 'string', '', 'c_invest_prodtype', '255', '', '', '0' );
end if;

commit;
end;
/
