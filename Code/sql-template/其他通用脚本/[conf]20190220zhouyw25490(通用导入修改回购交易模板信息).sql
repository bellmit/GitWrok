declare
BEGIN
DELETE FROM TGENERAL_IMPORT_TEMP_CELL WHERE C_TEMPCODE='dae478b644d54fddac90bf84911a1af1';
if not fc_IsExistsImportCell('dae478b644d54fddac90bf84911a1af1', 'RepoDeal_feno') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('dae478b644d54fddac90bf84911a1af1', '外部交易编号', 'RepoDeal_feno', '', '0' );
end if;

if not fc_IsExistsImportCell('dae478b644d54fddac90bf84911a1af1', 'RepoDeal_trader') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('dae478b644d54fddac90bf84911a1af1', '交易员', 'RepoDeal_trader', '', '1' );
end if;

if not fc_IsExistsImportCell('dae478b644d54fddac90bf84911a1af1', 'RepoDeal_security') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('dae478b644d54fddac90bf84911a1af1', '证券代码', 'RepoDeal_security', '', '2' );
end if;

if not fc_IsExistsImportCell('dae478b644d54fddac90bf84911a1af1', 'RepoDeal_market') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('dae478b644d54fddac90bf84911a1af1', '市场', 'RepoDeal_market', '', '3' );
end if;

if not fc_IsExistsImportCell('dae478b644d54fddac90bf84911a1af1', 'RepoDeal_ps') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('dae478b644d54fddac90bf84911a1af1', '回购方向', 'RepoDeal_ps', '', '4' );
end if;

if not fc_IsExistsImportCell('dae478b644d54fddac90bf84911a1af1', 'RepoDeal_ratecode') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('dae478b644d54fddac90bf84911a1af1', '利率代码', 'RepoDeal_ratecode', '', '5' );
end if;

if not fc_IsExistsImportCell('dae478b644d54fddac90bf84911a1af1', 'RepoDeal_reporate') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('dae478b644d54fddac90bf84911a1af1', '回购利率(%)', 'RepoDeal_reporate', '', '6' );
end if;

if not fc_IsExistsImportCell('dae478b644d54fddac90bf84911a1af1', 'RepoDeal_cust') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('dae478b644d54fddac90bf84911a1af1', '交易对手', 'RepoDeal_cust', '', '7' );
end if;

if not fc_IsExistsImportCell('dae478b644d54fddac90bf84911a1af1', 'RepoDeal_ccy') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('dae478b644d54fddac90bf84911a1af1', '币种', 'RepoDeal_ccy', '', '8' );
end if;

if not fc_IsExistsImportCell('dae478b644d54fddac90bf84911a1af1', 'RepoDeal_quantity') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('dae478b644d54fddac90bf84911a1af1', '数量', 'RepoDeal_quantity', '', '9' );
end if;

if not fc_IsExistsImportCell('dae478b644d54fddac90bf84911a1af1', 'RepoDeal_faceamount') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('dae478b644d54fddac90bf84911a1af1', '总面值(券面总额)', 'RepoDeal_faceamount', '', '10' );
end if;

if not fc_IsExistsImportCell('dae478b644d54fddac90bf84911a1af1', 'RepoDeal_amount') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('dae478b644d54fddac90bf84911a1af1', '金额', 'RepoDeal_amount', '', '11' );
end if;

if not fc_IsExistsImportCell('dae478b644d54fddac90bf84911a1af1', 'RepoDeal_totlint') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('dae478b644d54fddac90bf84911a1af1', '总利息', 'RepoDeal_totlint', '', '12' );
end if;

if not fc_IsExistsImportCell('dae478b644d54fddac90bf84911a1af1', 'RepoDeal_dealdate') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('dae478b644d54fddac90bf84911a1af1', '交易日(年/月/日)', 'RepoDeal_dealdate', '', '13' );
end if;

if not fc_IsExistsImportCell('dae478b644d54fddac90bf84911a1af1', 'RepoDeal_settdays') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('dae478b644d54fddac90bf84911a1af1', '清算天数/清算速度', 'RepoDeal_settdays', '', '14' );
end if;

if not fc_IsExistsImportCell('dae478b644d54fddac90bf84911a1af1', 'RepoDeal_vdate') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('dae478b644d54fddac90bf84911a1af1', '起息日(年/月/日)', 'RepoDeal_vdate', '', '15' );
end if;

if not fc_IsExistsImportCell('dae478b644d54fddac90bf84911a1af1', 'RepoDeal_tenor') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('dae478b644d54fddac90bf84911a1af1', '期限(单位天)', 'RepoDeal_tenor', '', '16' );
end if;

if not fc_IsExistsImportCell('dae478b644d54fddac90bf84911a1af1', 'RepoDeal_mdate') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('dae478b644d54fddac90bf84911a1af1', '到期日(年/月/日)', 'RepoDeal_mdate', '', '17' );
end if;

if not fc_IsExistsImportCell('dae478b644d54fddac90bf84911a1af1', 'RepoDeal_basis') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('dae478b644d54fddac90bf84911a1af1', '计息基础', 'RepoDeal_basis', '', '18' );
end if;

if not fc_IsExistsImportCell('dae478b644d54fddac90bf84911a1af1', 'RepoDeal_feeccy') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('dae478b644d54fddac90bf84911a1af1', '费用币种', 'RepoDeal_feeccy', '', '19' );
end if;

if not fc_IsExistsImportCell('dae478b644d54fddac90bf84911a1af1', 'RepoDeal_feeamt') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('dae478b644d54fddac90bf84911a1af1', '费用', 'RepoDeal_feeamt', '', '20' );
end if;

if not fc_IsExistsImportCell('dae478b644d54fddac90bf84911a1af1', 'RepoDeal_v_settlement') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('dae478b644d54fddac90bf84911a1af1', '首次结算方式', 'RepoDeal_v_settlement', '', '21' );
end if;

if not fc_IsExistsImportCell('dae478b644d54fddac90bf84911a1af1', 'RepoDeal_m_settlement') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('dae478b644d54fddac90bf84911a1af1', '到期结算方式', 'RepoDeal_m_settlement', '', '22' );
end if;

if not fc_IsExistsImportCell('dae478b644d54fddac90bf84911a1af1', 'RepoDeal_costcenter') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('dae478b644d54fddac90bf84911a1af1', '成本中心', 'RepoDeal_costcenter', '', '23' );
end if;

if not fc_IsExistsImportCell('dae478b644d54fddac90bf84911a1af1', 'RepoDeal_settlement_path') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('dae478b644d54fddac90bf84911a1af1', '清算路径', 'RepoDeal_settlement_path', '', '24' );
end if;

if not fc_IsExistsImportCell('dae478b644d54fddac90bf84911a1af1', 'RepoDeal_invest_product') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('dae478b644d54fddac90bf84911a1af1', '投资分类[I级]', 'RepoDeal_invest_product', '', '25' );
end if;

if not fc_IsExistsImportCell('dae478b644d54fddac90bf84911a1af1', 'RepoDeal_invest_prodtype') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('dae478b644d54fddac90bf84911a1af1', '投资分类[II级]', 'RepoDeal_invest_prodtype', '', '26' );
end if;
commit;
end;
/