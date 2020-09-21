
begin
if not fc_isdataexists('SELECT count(*) from tproject_businesstype_config') then  
  
  if fc_isdataexists('SELECT count(*) from tsys_parameter WHERE param_code =''companyCode'' and param_value=''ZS''') then
    --浙商
    insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
    values ('N05', '收购项目', '01', 'BW1,BW2', null);

    insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
    values ('N04', '收购项目', '01', 'BW3', null);

    insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
    values ('I02', '投资项目', '02', 'TG1', null);

    insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
    values ('I03', '投资项目', '02', 'TJ1', null);

    insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
    values ('E02', '附重组项目', '09', 'BZ2,BZ3,BZ4,BZ5,BZ6,BZ7', null);

    insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
    values ('JT1', '金融服务业务', '10', 'JT1', null);

    insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
    values ('JT2', '金融服务业务', '10', 'JT2', null);

    insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
    values ('N01', '收购项目', '01', 'BZ1', null);
	--处置类项目
	insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
	values ('BC1', '处置类项目', '90', 'BC1', null);
	
	insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
	values ('BC2', '处置类项目', '90', 'BC2', null);
	
	insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
	values ('BC3', '处置类项目', '90', 'BC3', null);
	
	insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
	values ('BC4', '处置类项目', '90', 'BC4', null);
	
  
  elsif fc_isdataexists('SELECT count(*) from tsys_parameter WHERE param_code =''companyCode'' and param_value=''GYTZ''') then    
    --  工银
    insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
    values ('I02', '投资项目', '02', 'TG1', null);

    insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
    values ('E01', '附重组项目', '09', 'FS1', null);

    insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
    values ('JT2', '金融服务业务', '10', 'JT2', null);

    insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
    values ('FC1', '股权收购（抵债股权收购）', '12', 'FC1', null);
  elsif fc_isdataexists('SELECT count(*) from tsys_parameter WHERE param_code =''companyCode'' and param_value=''FAZC''') then    
    --富安  
    insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
    values ('I03', '投资项目', '02', 'I52,I61', null);

    insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
    values ('E02', '附重组项目', '09', 'I41,I42,I43,I44,I45', null);

    insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
    values ('JT2', '金融服务业务', '10', 'S72', null);

    insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
    values ('JT3', '金融服务业务', '10', 'S71', null);

    insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
    values ('JT4', '金融服务业务', '10', 'A81', null);

    insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
    values ('N01', '收购项目', '01', 'N02,N11,N12,N13,N21', null);

    insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
    values ('N02', '收购项目', '01', 'N01', null);

    insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
    values ('N06', '收购项目', '01', 'N31', null);

    insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
    values ('I02', '投资项目', '02', 'I51,I53,I54', null);  
      
  elsif fc_isdataexists('SELECT count(*) from tsys_parameter WHERE param_code =''companyCode'' and param_value=''YNZC''') then    
    --云南  
    insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
    values ('N01', '收购项目', '01', '01', null);

    insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
    values ('N02', '收购项目', '01', '02', null);

    insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
    values ('N99', '收购项目', '01', '09', null);

    insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
    values ('I01', '投资项目', '02', 'I01', null);

    insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
    values ('I02', '投资项目', '02', 'I02', null);

    insert into tproject_businesstype_config (C_BUSINESSTYPE, C_BUSINESSNAME, C_PROJECTNATURE, C_BUSICLASSIFICATION, C_DEFAULT_CONTRACTTYPE)
    values ('I03', '投资项目', '02', 'I03', null);  
  end if; 
  --历史数据处理
  insert into tproject_info_amc (c_projectcode)
SELECT c_projectcode from tproject_info t WHERE t.c_busiclassification is not null
and not exists (SELECT 1 from tproject_info_amc WHERE t.c_projectcode=c_projectcode);  
  update tproject_info_amc ta  set ta.c_businesstype=
(SELECT tc.c_businesstype from tproject_businesstype_config tc,tproject_info t WHERE tc.c_projectnature = t.c_projectnature and tc.c_busiclassification like '%'||t.c_busiclassification||'%' and t.c_projectcode=ta.c_projectcode)
 WHERE ta.c_businesstype is null and exists (SELECT 1 from tproject_info ti WHERE ti.c_projectcode=ta.c_projectcode and ti.c_busiclassification is not null );
commit ;
  
end if; 
--富安补充业务分类
if  fc_isdataexists('SELECT count(*) from tsys_parameter WHERE param_code =''companyCode'' and param_value=''FAZC''') then
	if not fc_isdataexists('SELECT count(*) from tsys_dict_item WHERE dict_entry_code =''PM_BUSINESS_TYPE'' ') then
		insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE, C_ISUSE)
		values ('N12', 'PM_BUSINESS_TYPE', '资产重组', null, null, null, null, '1');

		insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE, C_ISUSE)
		values ('N01', 'PM_BUSINESS_TYPE', '指定收购处置', null, null, null, null, '1');

		insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE, C_ISUSE)
		values ('N02', 'PM_BUSINESS_TYPE', '综合收购处置', null, null, null, null, '1');

		insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE, C_ISUSE)
		values ('N11', 'PM_BUSINESS_TYPE', '债务重组', null, null, null, null, '1');

		insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE, C_ISUSE)
		values ('N13', 'PM_BUSINESS_TYPE', '企业重组', null, null, null, null, '1');

		insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE, C_ISUSE)
		values ('N21', 'PM_BUSINESS_TYPE', '债转股', null, null, null, null, '1');

		insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE, C_ISUSE)
		values ('N31', 'PM_BUSINESS_TYPE', '受托处置', null, null, null, null, '1');

		insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE, C_ISUSE)
		values ('I41', 'PM_BUSINESS_TYPE', '债权收购（固定收益）', null, null, null, null, '1');

		insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE, C_ISUSE)
		values ('I42', 'PM_BUSINESS_TYPE', '债权收购（非固定收益）', null, null, null, null, '1');

		insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE, C_ISUSE)
		values ('I43', 'PM_BUSINESS_TYPE', '收益权转让（固定收益）', null, null, null, null, '1');

		insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE, C_ISUSE)
		values ('I44', 'PM_BUSINESS_TYPE', '收益权转让（非固定收益）', null, null, null, null, '1');

		insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE, C_ISUSE)
		values ('I45', 'PM_BUSINESS_TYPE', '其他债权投资', null, null, null, null, '1');

		insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE, C_ISUSE)
		values ('I51', 'PM_BUSINESS_TYPE', '定向增发', null, null, null, null, '1');

		insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE, C_ISUSE)
		values ('I52', 'PM_BUSINESS_TYPE', '私募基金', null, null, null, null, '1');

		insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE, C_ISUSE)
		values ('I53', 'PM_BUSINESS_TYPE', '股权投资带回购', null, null, null, null, '1');

		insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE, C_ISUSE)
		values ('I54', 'PM_BUSINESS_TYPE', '股权直投', null, null, null, null, '1');

		insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE, C_ISUSE)
		values ('I61', 'PM_BUSINESS_TYPE', '金融产品', null, null, null, null, '1');

		insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE, C_ISUSE)
		values ('S71', 'PM_BUSINESS_TYPE', '增信服务', null, null, null, null, '1');

		insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE, C_ISUSE)
		values ('S72', 'PM_BUSINESS_TYPE', '财务顾问', null, null, null, null, '1');

		insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE, C_ISUSE)
		values ('A81', 'PM_BUSINESS_TYPE', '法律咨询', null, null, null, null, '1');

	end if;
end if ;

end ;
/
