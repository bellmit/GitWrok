declare
begin

if fc_IsEqualSysParameter('deployModel','S08')then
update tproject_factor_info t set t.c_factorname='公司/基金', t.c_valuebound='fundSelector(''{fieldid}'',''allFund=1'','''')' where t.c_factorcode = 'bankinfo_projectCode';
update tproject_factor_relation t set t.c_factorshowname='公司/基金' where t.c_factorcode = 'bankinfo_projectCode';
end if;

end;
/

