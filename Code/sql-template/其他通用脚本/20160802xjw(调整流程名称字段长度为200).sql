--��չ���������ֶ�
alter table JBPM4_EXT_PRO modify PROCESS_NAME VARCHAR2(200 CHAR);
alter table JBPM4_EXT_VER modify VERSION_NAME VARCHAR2(200 CHAR);

--���㽭ʡ���ڵ�һλ
update tsys_dict_item t set t.dict_item_order = 0  where t.dict_entry_code = 'PROVINCE_INFO' and t.dict_item_code = '33' ;