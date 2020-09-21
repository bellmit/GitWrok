declare
begin
if not fc_IsDataExists('select count(*) from jbpm4_ext_formreg t where t.uuid = ''2a7b18fc38fb44589461fe8476672221''') then
	insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3)
values ('2a7b18fc38fb44589461fe8476672221', '2cabb42eb92842558a555202a97410f2', 'PAGE_MW', '风险预警表单', '/afterinvest/riskwarning/riskWarningForm.htm', '投后管理-风险预警表单', 'riskWarningForm', null, null, null);
end if;

if not fc_IsDataExists('select count(*) from jbpm4_ext_formreg t where t.uuid = ''9bf4a134bd204f988d10cb68651d337c''') then
  	insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3)
values ('9bf4a134bd204f988d10cb68651d337c', '2cabb42eb92842558a555202a97410f2', 'PAGE_MW', '风险解除表单', '/afterinvest/riskwarning/riskRemoveForm.htm', '投后管理-风险解除表单', 'riskRemoveForm', null, null, null);
end if;
end;
/
