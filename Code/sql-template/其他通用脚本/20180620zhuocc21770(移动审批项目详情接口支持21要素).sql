declare
begin
--项目组成员--
update tproject_factor_info t set t.c_contentbound ='amcProjectMobileManager.getProjectMembersForMobile()' where t.c_factorcode ='tproject_info_teammembers';
--资金来源--
update tproject_factor_info t set t.c_contentbound ='amcProjectMobileManager.getFundSourceForMobile()' where t.c_factorcode ='tproject_transStructureinfo';
--投资通道--
update tproject_factor_info t set t.c_contentbound ='amcProjectMobileManager.getInvestApproachForMobile()' where t.c_factorcode ='tproject_transStructureinfo_ts';
end;
/
