--[M201808211256]20180821yuanlh21739(��ϵ�˶�̬�����ݲ�ѯ��ַ������֧�ֺ�̨Ȩ�޿���)--start--
declare
begin

-- ��ϵ�����ݲ�ѯ�����µĵ�ַ��֧�ֺ�̨Ȩ�޿��ƣ�
if fc_IsDataExists('select count(*) from tproject_model_config t where t.c_modelcode=''customerManager'' and t.c_queryserver=''/customer/customerManager.json''') then
	update tproject_model_config t set t.c_queryserver='/customer/customerListManager.json' 
  where t.c_modelcode='customerManager' and t.c_queryserver='/customer/customerManager.json';
end if;

end;
/
--------------------------------------------------------------------------------------------------------------------------
--[M201808211256]20180821yuanlh21739(��ϵ�˶�̬�����ݲ�ѯ��ַ������֧�ֺ�̨Ȩ�޿���)--end--
