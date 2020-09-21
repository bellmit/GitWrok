begin
if fc_isdataexists('SELECT count(*) from tproject_factor_info ti WHERE ti.c_factorcode=''tproject_info_trustpurpose'' and ti.c_ruleid like ''%projectinfo_16%''') then
	update tproject_factor_info ti set ti.c_ruleid ='' WHERE ti.c_factorcode='tproject_info_trustpurpose' ;--projectinfo_16
end if;
if fc_isdataexists('SELECT count(*) from tproject_factor_info ti WHERE ti.c_factorcode=''tproject_info_riskType'' and ti.c_ruleid like ''%projectinfo_16%''') then
	update tproject_factor_info ti set ti.c_ruleid='projectinfo_9,projectinfo_19' WHERE ti.c_factorcode='tproject_info_riskType' ;--projectinfo_16
end if;
end ;
/