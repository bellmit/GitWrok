declare
begin

-- ɾ���ɰ�Ŀ�Ŀ��Ϣ����
delete from TGENERAL_IMPORT_MODULE_INFO t where t.C_MODULE_CODE = 'AMC_DATATRANSPLANTATION_003';
delete from TGENERAL_IMPORT_TEMP_INFO t where t.C_TEMPCODE = 'a7c4af48855208986bcc4263cb5ddafe';
delete from TGENERAL_IMPORT_TEMP_CELL t where t.C_TEMPCODE = 'a7c4af48855208986bcc4263cb5ddafe';

-- ��Ŀ��Ϣ���룺ģ����Ϣ��
if not fc_IsExistsImportModule('subjectInfo') then
  insert into TGENERAL_IMPORT_MODULE_INFO (C_MODULE_CODE, C_MODULE_NAME, C_BEAN_NAME, C_TABLE_NAME, C_IS_COMBINE, C_FACTORFLAG, C_BUSITYPE, C_MEMO, C_IGNOREDICTLIMIT, C_MEMOSHOWTYPE )
  values ('subjectInfo', '��Ŀ��Ϣ����', 'com.hundsun.fund.tcmp.ledger.factory.AmcSubjectInfoImportFactory', 'T_INT_SUBJECT_INFO', '', 'subjectInfo', '', 'ģ���к�ɫ������Ϊ������', '', '' );
end if;

-- ��Ŀ��Ϣ���룺Ԫ����Ϣ��
if not fc_IsExistsImportElement('subjectInfo_subjectNo') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('subjectInfo_subjectNo', '��Ŀ���', 'string', '1', 'C_SUBJECTNO', '32', '', '', '' );
end if;

if not fc_IsExistsImportElement('subjectInfo_subjectName') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('subjectInfo_subjectName', '��Ŀ����', 'string', '1', 'c_subjectName', '200', '', '', '' );
end if;

if not fc_IsExistsImportElement('subjectInfo_mnemonicCode') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('subjectInfo_mnemonicCode', '������', 'string', '0', 'c_mnemonic_code', '32', '', '', '' );
end if;

if not fc_IsExistsImportElement('subjectInfo_subjectfull') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('subjectInfo_subjectfull', '��Ŀȫ��', 'string', '0', 'c_subjectfull', '100', '', '', '' );
end if;

if not fc_IsExistsImportElement('subjectInfo_direction') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('subjectInfo_direction', '����', 'dict', '1', 'l_direction', 'SUB_DIRECTION', '', '', '' );
end if;

if not fc_IsExistsImportElement('subjectInfo_type') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('subjectInfo_type', '��Ŀ���', 'sql', '1', 'l_type', 'select t.l_id dictvalue, t.c_name dictname from tsubject_type  t where t.l_id != 0', '', '', '' );
end if;

if not fc_IsExistsImportElement('subjectInfo_currency') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('subjectInfo_currency', '����', 'dict', '1', 'C_CURRENCY', 'FD_CURRENCY_CODE', '', '', '' );
end if;

if not fc_IsExistsImportElement('subjectInfo_isenable') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('subjectInfo_isenable', '�Ƿ�����', 'dict', '1', 'C_ISENABLE', 'YES_OR_NO', '', '', '' );
end if;

if not fc_IsExistsImportElement('subjectInfo_remark') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('subjectInfo_remark', '����', 'string', '0', 'C_REMARK', '200', '', '', '' );
end if;

if not fc_IsExistsImportElement('rownum') then
  insert into TGENERAL_IMPORT_ELEMENT_INFO (C_ELEMENTCODE, C_ELEMENTNAME, C_ELEMENTTYPE, C_NONEMPTY, C_TABLE_COLUMN, C_ELEMENTBOUNDS, C_ELEMENTMEMO, C_IGNOREDICTLIMIT, C_IS_PK )
  values ('rownum', '�к�', 'hidden', '', 'c_rownum', 'rownum:rownum', '', '', '' );
end if;

-- ��Ŀ��Ϣ���룺Ԫ����ģ���ϵ��Ϣ��
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

-- ��Ŀ��Ϣ���룺excel��ͷ��Ϣ��
if not fc_IsExistsImportCell('7a4eab7f2748f8178b3586aaf2aa97fb', 'subjectInfo_subjectNo') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('7a4eab7f2748f8178b3586aaf2aa97fb', '��Ŀ���', 'subjectInfo_subjectNo', '', '0' );
end if;

if not fc_IsExistsImportCell('7a4eab7f2748f8178b3586aaf2aa97fb', 'subjectInfo_subjectName') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('7a4eab7f2748f8178b3586aaf2aa97fb', '��Ŀ����', 'subjectInfo_subjectName', '', '1' );
end if;

if not fc_IsExistsImportCell('7a4eab7f2748f8178b3586aaf2aa97fb', 'subjectInfo_mnemonicCode') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('7a4eab7f2748f8178b3586aaf2aa97fb', '������', 'subjectInfo_mnemonicCode', '', '2' );
end if;

if not fc_IsExistsImportCell('7a4eab7f2748f8178b3586aaf2aa97fb', 'subjectInfo_subjectfull') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('7a4eab7f2748f8178b3586aaf2aa97fb', '��Ŀȫ��', 'subjectInfo_subjectfull', '', '3' );
end if;

if not fc_IsExistsImportCell('7a4eab7f2748f8178b3586aaf2aa97fb', 'subjectInfo_direction') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('7a4eab7f2748f8178b3586aaf2aa97fb', '����', 'subjectInfo_direction', '', '4' );
end if;

if not fc_IsExistsImportCell('7a4eab7f2748f8178b3586aaf2aa97fb', 'subjectInfo_type') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('7a4eab7f2748f8178b3586aaf2aa97fb', '��Ŀ���', 'subjectInfo_type', '', '5' );
end if;

if not fc_IsExistsImportCell('7a4eab7f2748f8178b3586aaf2aa97fb', 'subjectInfo_currency') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('7a4eab7f2748f8178b3586aaf2aa97fb', '����', 'subjectInfo_currency', '', '6' );
end if;

if not fc_IsExistsImportCell('7a4eab7f2748f8178b3586aaf2aa97fb', 'subjectInfo_isenable') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('7a4eab7f2748f8178b3586aaf2aa97fb', '�Ƿ�����', 'subjectInfo_isenable', '', '7' );
end if;

if not fc_IsExistsImportCell('7a4eab7f2748f8178b3586aaf2aa97fb', 'subjectInfo_remark') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('7a4eab7f2748f8178b3586aaf2aa97fb', '����', 'subjectInfo_remark', '', '8' );
end if;

if not fc_IsExistsImportCell('7a4eab7f2748f8178b3586aaf2aa97fb', 'rownum') then
  insert into TGENERAL_IMPORT_TEMP_CELL (C_TEMPCODE, C_CELLNAME, C_ELEMENTCODE, C_NONEMPTY, L_ORDER )
  values ('7a4eab7f2748f8178b3586aaf2aa97fb', '�к�', 'rownum', '', '9' );
end if;

-- ��Ŀ��Ϣ���룺ģ����Ϣ��
if not fc_IsExistsImportTemp('7a4eab7f2748f8178b3586aaf2aa97fb') then
  insert into TGENERAL_IMPORT_TEMP_INFO (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_IS_SHOW, C_SHEET_NAME, C_CREATE_USER, D_CREATE_TIME )
  values ('7a4eab7f2748f8178b3586aaf2aa97fb', '��Ŀ��Ϣ', '1', 'subjectInfo', '', '', 'admin', sysdate );
end if;

-- ��Ŀ��Ϣ�����°�
if not fc_IsDataExists('select count(*) from tgeneral_export_config t where t.c_modelcode=''subjectInfo''') then
	insert into TGENERAL_EXPORT_CONFIG (C_MODELCODE, C_FILENAME, C_FILETYPE, C_FIELDJSON, C_QUERY_SQL, C_QUERY_INSTANCE, F_FIELD_DATA_TYPE)
	values ('subjectInfo', '��Ŀ��Ϣ', '0', '[{"name":"subjectNo", "text":"��Ŀ��"},{"name":"subjectName", "text":"��Ŀ����"},{"name":"mnemonicCode", "text":"������"},{"name":"subjectFull", "text":"��Ŀȫ��"},{"name":"direction_show", "text":"����", "align":"center"},{"name":"typeName", "text":"��Ŀ���"},{"name":"currency_show", "text":"����", "align":"center"},{"name":"isEnableResult", "text":"�Ƿ�����", "align":"center"},{"name":"remark", "text":"����"}] ', 
	'','subjectInfoManager.getSubjectInfoForPage', 0);
end if;

end;
/