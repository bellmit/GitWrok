--[201802080616]20180314shiph22854(投后管理-风险预警信息-新增风险反馈表单)--start--
declare
begin
if not fc_IsDataExists('select count(*) from jbpm4_ext_formreg t where t.uuid = ''ea045be1538047dd82990aa6105b5f6c''') then
	insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3)
values ('ea045be1538047dd82990aa6105b5f6c', '2cabb42eb92842558a555202a97410f2', 'PAGE_MW', '风险反馈表单', '/afterinvest/riskwarning/riskFeedbackForm.htm', '投后管理-风险反馈表单', 'riskFeedbackForm', null, null, null);
end if;
end;
/
--[201802080616]20180314shiph22854(投后管理-风险预警信息-新增风险反馈表单)--end--
