declare
begin

-- 删除旧版的科目信息导入
delete from TGENERAL_IMPORT_MODULE_INFO t where t.C_MODULE_CODE = 'AMC_DATATRANSPLANTATION_003';
delete from TGENERAL_IMPORT_TEMP_INFO t where t.C_TEMPCODE = 'a7c4af48855208986bcc4263cb5ddafe';
delete from TGENERAL_IMPORT_TEMP_CELL t where t.C_TEMPCODE = 'a7c4af48855208986bcc4263cb5ddafe';

-- 科目信息导入：模块信息表
if not fc_IsExistsImportModule('subjectInfo') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('subjectInfo', '科目信息导入', 'com.hundsun.fund.tcmp.ledger.factory.AmcSubjectInfoImportFactory', 'T_INT_SUBJECT_INFO', '', 'subjectInfo', '', '模板中红色标题列为必填项', '', '' );
end if;

-- 科目信息导入：元素信息表
if not fc_IsExistsImportElement('subjectInfo_subjectNo') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('subjectInfo_subjectNo', '科目编号', 'string', '1', 'C_SUBJECTNO', '32', '', '', '' );
end if;

if not fc_IsExistsImportElement('subjectInfo_subjectName') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('subjectInfo_subjectName', '科目名称', 'string', '1', 'c_subjectName', '200', '', '', '' );
end if;

if not fc_IsExistsImportElement('subjectInfo_mnemonicCode') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('subjectInfo_mnemonicCode', '助记码', 'string', '0', 'c_mnemonic_code', '32', '', '', '' );
end if;

if not fc_IsExistsImportElement('subjectInfo_subjectfull') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('subjectInfo_subjectfull', '科目全称', 'string', '0', 'c_subjectfull', '100', '', '', '' );
end if;

if not fc_IsExistsImportElement('subjectInfo_direction') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('subjectInfo_direction', '余额方向', 'dict', '1', 'l_direction', 'SUB_DIRECTION', '', '', '' );
end if;

if not fc_IsExistsImportElement('subjectInfo_type') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('subjectInfo_type', '科目类别', 'sql', '1', 'l_type', 'select t.l_id dictvalue, t.c_name dictname from tsubject_type  t where t.l_id != 0', '', '', '' );
end if;

if not fc_IsExistsImportElement('subjectInfo_currency') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('subjectInfo_currency', '币种', 'dict', '1', 'C_CURRENCY', 'FD_CURRENCY_CODE', '', '', '' );
end if;

if not fc_IsExistsImportElement('subjectInfo_isenable') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('subjectInfo_isenable', '是否启用', 'dict', '1', 'C_ISENABLE', 'YES_OR_NO', '', '', '' );
end if;

if not fc_IsExistsImportElement('subjectInfo_remark') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('subjectInfo_remark', '描述', 'string', '0', 'C_REMARK', '200', '', '', '' );
end if;

if not fc_IsExistsImportElement('rownum') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('rownum', '行号', 'hidden', '', 'c_rownum', 'rownum:rownum', '', '', '' );
end if;

-- 科目信息导入：元素与模块关系信息表
if not fc_IsExistsImportRelation('subjectInfo', 'subjectInfo_subjectNo', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('subjectInfo', 'subjectInfo_subjectNo', '1', '0' );
end if;

if not fc_IsExistsImportRelation('subjectInfo', 'subjectInfo_subjectName', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('subjectInfo', 'subjectInfo_subjectName', '1', '1' );
end if;

if not fc_IsExistsImportRelation('subjectInfo', 'subjectInfo_mnemonicCode', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('subjectInfo', 'subjectInfo_mnemonicCode', '1', '2' );
end if;

if not fc_IsExistsImportRelation('subjectInfo', 'subjectInfo_subjectfull', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('subjectInfo', 'subjectInfo_subjectfull', '1', '3' );
end if;

if not fc_IsExistsImportRelation('subjectInfo', 'subjectInfo_direction', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('subjectInfo', 'subjectInfo_direction', '1', '4' );
end if;

if not fc_IsExistsImportRelation('subjectInfo', 'subjectInfo_type', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('subjectInfo', 'subjectInfo_type', '1', '5' );
end if;

if not fc_IsExistsImportRelation('subjectInfo', 'subjectInfo_currency', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('subjectInfo', 'subjectInfo_currency', '1', '6' );
end if;

if not fc_IsExistsImportRelation('subjectInfo', 'subjectInfo_isenable', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('subjectInfo', 'subjectInfo_isenable', '1', '7' );
end if;

if not fc_IsExistsImportRelation('subjectInfo', 'subjectInfo_remark', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('subjectInfo', 'subjectInfo_remark', '1', '8' );
end if;

if not fc_IsExistsImportRelation('subjectInfo', 'rownum', '1') then
  insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER )
  values ('subjectInfo', 'rownum', '1', '9' );
end if;

-- 科目信息导入：excel表头信息表
if not fc_IsExistsImportCell('7a4eab7f2748f8178b3586aaf2aa97fb', 'subjectInfo_subjectNo') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('7a4eab7f2748f8178b3586aaf2aa97fb', '科目编号', 'subjectInfo_subjectNo', '', '0' );
end if;

if not fc_IsExistsImportCell('7a4eab7f2748f8178b3586aaf2aa97fb', 'subjectInfo_subjectName') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('7a4eab7f2748f8178b3586aaf2aa97fb', '科目名称', 'subjectInfo_subjectName', '', '1' );
end if;

if not fc_IsExistsImportCell('7a4eab7f2748f8178b3586aaf2aa97fb', 'subjectInfo_mnemonicCode') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('7a4eab7f2748f8178b3586aaf2aa97fb', '助记码', 'subjectInfo_mnemonicCode', '', '2' );
end if;

if not fc_IsExistsImportCell('7a4eab7f2748f8178b3586aaf2aa97fb', 'subjectInfo_subjectfull') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('7a4eab7f2748f8178b3586aaf2aa97fb', '科目全称', 'subjectInfo_subjectfull', '', '3' );
end if;

if not fc_IsExistsImportCell('7a4eab7f2748f8178b3586aaf2aa97fb', 'subjectInfo_direction') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('7a4eab7f2748f8178b3586aaf2aa97fb', '余额方向', 'subjectInfo_direction', '', '4' );
end if;

if not fc_IsExistsImportCell('7a4eab7f2748f8178b3586aaf2aa97fb', 'subjectInfo_type') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('7a4eab7f2748f8178b3586aaf2aa97fb', '科目类别', 'subjectInfo_type', '', '5' );
end if;

if not fc_IsExistsImportCell('7a4eab7f2748f8178b3586aaf2aa97fb', 'subjectInfo_currency') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('7a4eab7f2748f8178b3586aaf2aa97fb', '币种', 'subjectInfo_currency', '', '6' );
end if;

if not fc_IsExistsImportCell('7a4eab7f2748f8178b3586aaf2aa97fb', 'subjectInfo_isenable') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('7a4eab7f2748f8178b3586aaf2aa97fb', '是否启用', 'subjectInfo_isenable', '', '7' );
end if;

if not fc_IsExistsImportCell('7a4eab7f2748f8178b3586aaf2aa97fb', 'subjectInfo_remark') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('7a4eab7f2748f8178b3586aaf2aa97fb', '描述', 'subjectInfo_remark', '', '8' );
end if;

if not fc_IsExistsImportCell('7a4eab7f2748f8178b3586aaf2aa97fb', 'rownum') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('7a4eab7f2748f8178b3586aaf2aa97fb', '行号', 'rownum', '', '9' );
end if;

-- 科目信息导入：模板信息表
if not fc_IsExistsImportTemp('7a4eab7f2748f8178b3586aaf2aa97fb') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME, C_CREATE_USER, D_CREATE_TIME )
  values ('7a4eab7f2748f8178b3586aaf2aa97fb', '科目信息', '1', 'subjectInfo', '', '', 'admin', sysdate );
end if;

-- 科目信息导出新版
if not fc_IsDataExists('select count(*) from tgeneral_export_config t where t.c_modelcode=''subjectInfo''') then
	insert into TGENERAL_EXPORT_CONFIG (C_MODELCODE, C_FILENAME, C_FILETYPE, C_FIELDJSON, C_QUERY_SQL, C_QUERY_INSTANCE, F_FIELD_DATA_TYPE)
	values ('subjectInfo', '科目信息', '0', '[{"name":"subjectNo", "text":"科目号"},{"name":"subjectName", "text":"科目名称"},{"name":"mnemonicCode", "text":"助记码"},{"name":"subjectFull", "text":"科目全称"},{"name":"direction_show", "text":"余额方向", "align":"center"},{"name":"typeName", "text":"科目类别"},{"name":"currency_show", "text":"币种", "align":"center"},{"name":"isEnableResult", "text":"是否启用", "align":"center"},{"name":"remark", "text":"描述"}] ', 
	'','subjectInfoManager.getSubjectInfoForPage', 0);
end if;

end;
/