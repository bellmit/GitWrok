declare
begin
if fc_IsExistsProjectModelConfig('contractManager') then
  update tproject_model_config t set t.C_SCRIPTURL = '/js/tempconfig/contract/contractManager.js' ,t.c_queryserver = '/contract/newcontract.json',t.c_ismutiselect = '1' where t.C_MODELCODE = 'contractManager';
end if;
end;
/