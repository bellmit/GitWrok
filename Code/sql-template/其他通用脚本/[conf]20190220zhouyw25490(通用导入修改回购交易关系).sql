declare
BEGIN
DELETE FROM TGENERAL_IMPORT_RELATION WHERE C_PARENT_CODE='RepoDeal';
if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_br', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_br', '1', '0' );
end if;

if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_feno', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_feno', '1', '1' );
end if;

if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_trader', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_trader', '1', '2' );
end if;

if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_security', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_security', '1', '3' );
end if;

if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_market', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_market', '1', '4' );
end if;

if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_ps', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_ps', '1', '5' );
end if;

if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_ratecode', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_ratecode', '1', '6' );
end if;

if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_reporate', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_reporate', '1', '7' );
end if;

if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_cust', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_cust', '1', '8' );
end if;

if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_ccy', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_ccy', '1', '9' );
end if;

if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_quantity', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_quantity', '1', '10' );
end if;

if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_faceamount', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_faceamount', '1', '11' );
end if;

if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_amount', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_amount', '1', '12' );
end if;

if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_totlint', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_totlint', '1', '13' );
end if;

if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_dealdate', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_dealdate', '1', '14' );
end if;

if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_settdays', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_settdays', '1', '15' );
end if;

if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_vdate', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_vdate', '1', '16' );
end if;

if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_tenor', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_tenor', '1', '17' );
end if;

if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_mdate', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_mdate', '1', '18' );
end if;

if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_basis', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_basis', '1', '19' );
end if;

if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_feeccy', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_feeccy', '1', '20' );
end if;

if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_feeamt', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_feeamt', '1', '21' );
end if;

if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_v_settlement', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_v_settlement', '1', '22' );
end if;

if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_m_settlement', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_m_settlement', '1', '23' );
end if;

if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_costcenter', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_costcenter', '1', '24' );
end if;

if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_settlement_path', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_settlement_path', '1', '25' );
end if;

if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_invest_product', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_invest_product', '1', '26' );
end if;

if not fc_IsExistsImportRelation('RepoDeal', 'RepoDeal_invest_prodtype', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('RepoDeal', 'RepoDeal_invest_prodtype', '1', '27' );
end if;
commit;
end;
/
