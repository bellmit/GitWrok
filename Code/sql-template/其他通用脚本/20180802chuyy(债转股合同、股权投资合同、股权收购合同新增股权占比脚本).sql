declare
begin
--流程服务
if fc_IsDataExists('select count(*) from tproject_factor_relation t where t.C_TEMPCODE = ''GQSG_001'' ') then
  if not fc_IsDataExists('select count(*) from tproject_factor_relation t where t.C_TEMPCODE = ''GQSG_001'' and C_FACTORCODE=''tinvest_contract_equityinvestment'' ') then
  insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
  values ('GQSG_001', 'tinvest_contract_equityinvestment', null, null, 15, '0', '0', '0', null, '股权占比(%)');
  end if;
end if;
  
if fc_IsDataExists('select count(*) from tproject_factor_relation t where t.C_TEMPCODE = ''GYGQTZ_001'' ') then 
  if not fc_IsDataExists('select count(*) from tproject_factor_relation t where t.C_TEMPCODE = ''GYGQTZ_001'' and C_FACTORCODE=''tinvest_contract_equityinvestment'' ') then
  insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
  values ('GYGQTZ_001', 'tinvest_contract_equityinvestment', null, null, 15, '0', '0', '0', null, '股权占比(%)');
  end if;
end if;

if fc_IsDataExists('select count(*) from tproject_factor_relation t where t.C_TEMPCODE = ''ZZG_001'' ') then
  if not fc_IsDataExists('select count(*) from tproject_factor_relation t where t.C_TEMPCODE = ''ZZG_001'' and C_FACTORCODE=''tinvest_contract_equityinvestment'' ') then
  insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
  values ('ZZG_001', 'tinvest_contract_equityinvestment', null, null, 14, '0', '0', '0', null, '股权占比(%)');
  end if;
end if;


end;
/