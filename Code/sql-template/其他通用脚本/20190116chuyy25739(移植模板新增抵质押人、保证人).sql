declare
begin
  -- 插入 抵押人保证人模块信息
  if not fc_isdataexists('select count(1) from tgeneral_import_temp_info t where t.C_TEMPCODE = ''9a1a808b9dfec46132b14deb860096b0_11''') then
    insert into tgeneral_import_temp_info (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_SHEET_NAME, C_CREATE_USER, D_CREATE_TIME, C_TEMPDESC, C_IS_SHOW)
    values ('9a1a808b9dfec46132b14deb860096b0_11', 'AMC数据移植_保证人', 2, 'AMC_ASSETPACKET_001_9',  '保证人', null, null, null, '0');
  end if;
  if not fc_isdataexists('select count(1) from tgeneral_import_temp_info t where t.C_TEMPCODE = ''9a1a808b9dfec46132b14deb860096b0_12''') then
    insert into tgeneral_import_temp_info (C_TEMPCODE, C_TEMPNAME, L_TEMPSTARTROW, C_MODULE_CODE, C_SHEET_NAME, C_CREATE_USER, D_CREATE_TIME, C_TEMPDESC, C_IS_SHOW)
    values ('9a1a808b9dfec46132b14deb860096b0_12', 'AMC数据移植_抵押人', 2, 'AMC_ASSETPACKET_001_10',  '抵押人', null, null, null, '0');
  end if;
 
  -- 插入数据移植模版 与抵押人、保证人模块 关联关系
  if not fc_isdataexists('select count(1) from TGENERAL_IMPORT_RELATION t where t.C_PARENT_CODE = ''9a1a808b9dfec46132b14deb860096b0'' and t.C_SUB_CODE = ''df980ce5124c19387ad8e29895a1c2a0_1''') then
      insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER)
      values ('9a1a808b9dfec46132b14deb860096b0', 'df980ce5124c19387ad8e29895a1c2a0_1', '3', 0);
  end if;
  if not fc_isdataexists('select count(1) from TGENERAL_IMPORT_RELATION t where t.C_PARENT_CODE = ''9a1a808b9dfec46132b14deb860096b0'' and t.C_SUB_CODE = ''df980ce5124c19387ad8e29895a1c2a0_0''') then
      insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER)
      values ('9a1a808b9dfec46132b14deb860096b0', 'df980ce5124c19387ad8e29895a1c2a0_0', '3', 0);
  end if;
  if not fc_isdataexists('select count(1) from TGENERAL_IMPORT_RELATION t where t.C_PARENT_CODE = ''AMC_DATATRANSPLANTATION_001'' and t.C_SUB_CODE = ''AMC_DATATRANSPLANTATION_001_10''') then
	insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER)
	values ('AMC_DATATRANSPLANTATION_001', 'AMC_DATATRANSPLANTATION_001_10', '2', 10);
  end if;
  if not fc_isdataexists('select count(1) from TGENERAL_IMPORT_RELATION t where t.C_PARENT_CODE = ''AMC_DATATRANSPLANTATION_001'' and t.C_SUB_CODE = ''AMC_DATATRANSPLANTATION_001_9''') then
	insert into TGENERAL_IMPORT_RELATION (C_PARENT_CODE, C_SUB_CODE, C_RELATION_TYPE, L_ORDER)
	values ('AMC_DATATRANSPLANTATION_001', 'AMC_DATATRANSPLANTATION_001_9', '2', 9);
  end if;
end;
/
