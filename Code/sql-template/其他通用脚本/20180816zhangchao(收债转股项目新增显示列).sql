declare
begin
--����״̬
if not fc_IsExistsTempConfigField('debtToStockProjectManage','rejecttype','debtToStockProjectManage') then 
insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('rejecttype', 'debtToStockProjectManage', '����״̬', '1', 8, 'debtToStockProjectManage');
end if;
if not fc_IsExistsTemplateField('debtToStockProjectManage','rejecttype') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC)
values ('rejecttype', '����״̬', 'debtToStockProjectManage', 12, '1', null, null, 1, 'rejectInfoListRender', '150', null, null, null);
end if;

--ծת�ɺ�����ҵ
if not fc_IsExistsTempConfigField('debtToStockProjectManage','pshorgno','debtToStockProjectManage') then 
insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('pshorgno', 'debtToStockProjectManage', 'ծת�ɺ�����ҵ', '1', 8, 'debtToStockProjectManage');
end if;
if not fc_IsExistsTemplateField('debtToStockProjectManage','pshorgno') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC)
values ('pshorgno', 'ծת�ɺ�����ҵ', 'debtToStockProjectManage', 12, '1', '7', 'customerSelector(''{fieldid}'',''0'',''4'',setCustomerNo)', 1, null, null, '1', null, null);
end if;

if not fc_IsExistsTempConfigField('debtToStockProjectManage','busiclassification_display','debtToStockProjectManage') then 
insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('busiclassification_display', 'debtToStockProjectManage', 'ҵ�����', '1', 8, 'debtToStockProjectManage');
end if;
if not fc_IsExistsTemplateField('debtToStockProjectManage','busiclassification_display') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD, C_DEFVALUE, C_FIELDDESC)
values ('busiclassification_display', 'ҵ�����', 'debtToStockProjectManage', 3, '1', '4', null, 1, null, '150', null, null, null);
end if;

end;
/
