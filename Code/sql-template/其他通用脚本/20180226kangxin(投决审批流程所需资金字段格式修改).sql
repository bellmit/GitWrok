declare
begin
if fc_isdataexists ('select count(1) from tflowformdesign t where t.process_id = ''meetingApprove''and t.c_fieldcode = ''needmoney''') then
	update tflowformdesign t set c_fieldtype = '12' where t.process_id = 'meetingApprove' and t.c_fieldcode = 'needmoney';
end if;
end;
/