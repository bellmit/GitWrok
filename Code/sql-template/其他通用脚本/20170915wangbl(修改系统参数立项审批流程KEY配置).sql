--�޸�ϵͳ����projectEvalProcessKeyConfig��������������KEY���ã�
declare
begin
if  fc_IsSysparamsExists('projectEvalProcessKeyConfig') then
	update tsys_parameter t
   set t.param_value = '01:assetpacket|02:projectapproval_zg|03:projectapproval_gyljr|04:projectapproval_tg|90:handprojectApproval|09:zhaizhuangupingshen|05:ZLTZ_001|06:RZXM_001|default:zhaizhuangupingshen'
 where t.param_code = 'projectEvalProcessKeyConfig';
end if;
end;
/
