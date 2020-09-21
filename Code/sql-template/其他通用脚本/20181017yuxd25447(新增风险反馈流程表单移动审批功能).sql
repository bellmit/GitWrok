--20181017yuxd25447(风险反馈流程表单支持移动审批)--start--
declare
begin
if not fc_IsDataExists('select count(*) from tmobile_config_form t where t.C_FORMURL = ''/afterinvest/riskwarning/riskFeedbackForm.htm'' and t.C_CONTENTBOUND=''riskWarningManager.getRiskFeedbackFormForMobile()''') then
insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/afterinvest/riskwarning/riskFeedbackForm.htm', '风险反馈流程表单', null, 'riskWarningManager.getRiskFeedbackFormForMobile()', '1', 'MOBILE', null, '1');
end if;
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''/afterinvest/riskwarning/riskFeedbackForm.htm'' and t.C_FIELDCODE=''feedbackDate''') then
insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskFeedbackForm.htm', '风险反馈流程表单', 'feedbackDate', null, '反馈日期', '1', 1, null, null, null, null, '基本信息',null);
end if;
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''/afterinvest/riskwarning/riskFeedbackForm.htm'' and t.C_FIELDCODE=''feedbackContent''') then
insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskFeedbackForm.htm', '风险反馈流程表单', 'feedbackContent', null, '反馈内容', '1',3, null, null, null, null, '基本信息',null);
end if;
if not fc_IsDataExists('select count(*) from tmobile_config_field t where t.C_MODELCODE = ''/afterinvest/riskwarning/riskFeedbackForm.htm'' and t.C_FIELDCODE=''isWarningRemove''') then
insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('/afterinvest/riskwarning/riskFeedbackForm.htm', '风险反馈流程表单', 'isWarningRemove', null, '风险是否已解决', '6', 1, 'YES_OR_NO', null, null, null, '基本信息',null);
end if;
end;
/
--20181017yuxd25447(风险反馈流程表单支持移动审批)--end--