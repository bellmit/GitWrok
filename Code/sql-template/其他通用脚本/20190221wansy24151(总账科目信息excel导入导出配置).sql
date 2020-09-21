declare
begin
    -- 模板表
	if not fc_IsExistsImportTemp('1a2d780e3dda26c03472d2ae845b7ffc') then
	  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME, C_CREATE_USER, D_CREATE_TIME )
	  values ('1a2d780e3dda26c03472d2ae845b7ffc', '总账科目信息', '1', 'amcGeneralLedger', '', '', 'admin', sysdate );
	end if;
	
	--模块表
	if not fc_IsExistsImportModule('amcGeneralLedger') then
	  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
	  values ('amcGeneralLedger', '科目信息导入', 'com.hundsun.fund.amc.manager.ledger.factory.AmcGeneralLedgerImportFactory', 'tint_general_ledger', '', 'amcGeneralLedger', '', '模板中红色标题列为必填项', '', '' );
	end if;

	--元素表
	if not fc_IsExistsImportElement('amcGeneralLedger_glno') then
	  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
	  values ('amcGeneralLedger_glno', '科目号', 'string', '1', 'c_glno', '48', '', '', '' );
	end if;

	if not fc_IsExistsImportElement('amcGeneralLedger_intglno') then
	  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
	  values ('amcGeneralLedger_intglno', '内部科目编码', 'string', '0', 'c_intglno', '32', '', '', '' );
	end if;

	if not fc_IsExistsImportElement('amcGeneralLedger_descr') then
	  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
	  values ('amcGeneralLedger_descr', '科目名称', 'string', '1', 'c_descr', '100', '', '', '' );
	end if;

	if not fc_IsExistsImportElement('amcGeneralLedger_lv') then
	  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
	  values ('amcGeneralLedger_lv', '级别', 'number', '0', 'c_lv', '10', '', '', '' );
	end if;

	if not fc_IsExistsImportElement('amcGeneralLedger_type') then
	  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
	  values ('amcGeneralLedger_type', '类型', 'dict', '0', 'c_type', 'GENERAL_LEDGER_TYPE', '', '', '' );
	end if;

	if not fc_IsExistsImportElement('amcGeneralLedger_drcrind') then
	  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
	  values ('amcGeneralLedger_drcrind', '余额方向', 'dict', '1', 'c_drcrind', 'DRCRIND', '', '', '' );
	end if;

	if not fc_IsExistsImportElement('amcGeneralLedger_ccy') then
	  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
	  values ('amcGeneralLedger_ccy', '币种', 'sql', '0', 'C_CCY', 'select t.c_ccy as dictvalue, t.c_chnname as dictname from tbase_ccycode t where t.c_status = ''1''
	', '', '', '' );
	end if;

	if not fc_IsExistsImportElement('amcGeneralLedger_feno') then
	  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
	  values ('amcGeneralLedger_feno', '接口编号', 'hidden', '', 'c_feno', 'sequence:SEQ_SUBJECT_INFO_ID', '', '', '1' );
	end if;
	
	--关系表
	if not fc_IsExistsImportRelation('amcGeneralLedger', 'amcGeneralLedger_glno', '1') then
	  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
	  values ('amcGeneralLedger', 'amcGeneralLedger_glno', '1', '0' );
	end if;

	if not fc_IsExistsImportRelation('amcGeneralLedger', 'amcGeneralLedger_intglno', '1') then
	  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
	  values ('amcGeneralLedger', 'amcGeneralLedger_intglno', '1', '1' );
	end if;

	if not fc_IsExistsImportRelation('amcGeneralLedger', 'amcGeneralLedger_descr', '1') then
	  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
	  values ('amcGeneralLedger', 'amcGeneralLedger_descr', '1', '2' );
	end if;

	if not fc_IsExistsImportRelation('amcGeneralLedger', 'amcGeneralLedger_lv', '1') then
	  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
	  values ('amcGeneralLedger', 'amcGeneralLedger_lv', '1', '3' );
	end if;

	if not fc_IsExistsImportRelation('amcGeneralLedger', 'amcGeneralLedger_type', '1') then
	  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
	  values ('amcGeneralLedger', 'amcGeneralLedger_type', '1', '4' );
	end if;

	if not fc_IsExistsImportRelation('amcGeneralLedger', 'amcGeneralLedger_drcrind', '1') then
	  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
	  values ('amcGeneralLedger', 'amcGeneralLedger_drcrind', '1', '5' );
	end if;

	if not fc_IsExistsImportRelation('amcGeneralLedger', 'amcGeneralLedger_ccy', '1') then
	  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
	  values ('amcGeneralLedger', 'amcGeneralLedger_ccy', '1', '6' );
	end if;

	if not fc_IsExistsImportRelation('amcGeneralLedger', 'amcGeneralLedger_feno', '1') then
	  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
	  values ('amcGeneralLedger', 'amcGeneralLedger_feno', '1', '8' );
	end if;
	
	--单元格
	if not fc_IsExistsImportCell('1a2d780e3dda26c03472d2ae845b7ffc', 'amcGeneralLedger_glno') then
	  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
	  values ('1a2d780e3dda26c03472d2ae845b7ffc', '科目号', 'amcGeneralLedger_glno', '', '0' );
	end if;

	if not fc_IsExistsImportCell('1a2d780e3dda26c03472d2ae845b7ffc', 'amcGeneralLedger_intglno') then
	  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
	  values ('1a2d780e3dda26c03472d2ae845b7ffc', '内部科目编码', 'amcGeneralLedger_intglno', '', '1' );
	end if;

	if not fc_IsExistsImportCell('1a2d780e3dda26c03472d2ae845b7ffc', 'amcGeneralLedger_descr') then
	  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
	  values ('1a2d780e3dda26c03472d2ae845b7ffc', '科目名称', 'amcGeneralLedger_descr', '', '2' );
	end if;

	if not fc_IsExistsImportCell('1a2d780e3dda26c03472d2ae845b7ffc', 'amcGeneralLedger_lv') then
	  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
	  values ('1a2d780e3dda26c03472d2ae845b7ffc', '级别', 'amcGeneralLedger_lv', '', '3' );
	end if;

	if not fc_IsExistsImportCell('1a2d780e3dda26c03472d2ae845b7ffc', 'amcGeneralLedger_type') then
	  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
	  values ('1a2d780e3dda26c03472d2ae845b7ffc', '类型', 'amcGeneralLedger_type', '', '4' );
	end if;

	if not fc_IsExistsImportCell('1a2d780e3dda26c03472d2ae845b7ffc', 'amcGeneralLedger_drcrind') then
	  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
	  values ('1a2d780e3dda26c03472d2ae845b7ffc', '余额方向', 'amcGeneralLedger_drcrind', '', '5' );
	end if;

	if not fc_IsExistsImportCell('1a2d780e3dda26c03472d2ae845b7ffc', 'amcGeneralLedger_ccy') then
	  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
	  values ('1a2d780e3dda26c03472d2ae845b7ffc', '币种', 'amcGeneralLedger_ccy', '', '6' );
	end if;

	if not fc_IsExistsImportCell('1a2d780e3dda26c03472d2ae845b7ffc', 'amcGeneralLedger_feno') then
	  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
	  values ('1a2d780e3dda26c03472d2ae845b7ffc', '接口编号', 'amcGeneralLedger_feno', '', '8' );
	end if;
	
	--总账科目导入配置
	-- 科目信息导出新版
	if not fc_IsDataExists('select count(*) from tgeneral_export_config t where t.c_modelcode=''amcGeneralLedger''') then
		insert into tgeneral_export_config (C_MODELCODE, C_FILENAME, C_FILETYPE, C_FIELDJSON, C_QUERY_SQL, C_QUERY_INSTANCE, F_FIELD_DATA_TYPE)
		values ('amcGeneralLedger', '总账科目信息', '0', '[{"name": "glno", "text": "科目号"},{"name": "descr", "text": "科目名称"},{"name": "intglno", "text": "内部科目编码"},{"name": "lv", "text": "级别"},{"name": "typeDisplay", "text": "类型"},{"name": "drcrindDisplay", "text": "余额方向"},{"name": "ccyDisplay", "text": "币种"},{"name": "statusDisplay", "text": "是否生效"}]', null, 'amcGeneralLedgerManager.downGeneralLedger', 0);
	end if;

	commit;
end;
/